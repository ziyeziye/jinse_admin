<template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!dataForm.id ? '新增' : '修改'"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" @keyup.enter.native="dataFormSubmit()" label-width="80px"
             ref="dataForm">
      <el-form-item label="名称" prop="name">
        <el-input placeholder="名称" v-model="dataForm.name"></el-input>
      </el-form-item>
      <el-form-item label="上级分类" prop="parentName">
        <el-popover
          placement="bottom-start"
          ref="categoryListPopover"
          trigger="click">
          <el-tree
            :data="categoryList"
            :default-expand-all="true"
            :expand-on-click-node="false"
            :highlight-current="true"
            :props="categoryListTreeProps"
            @current-change="categoryListTreeCurrentChangeHandle"
            node-key="id"
            ref="categoryListTree">
          </el-tree>
        </el-popover>
        <el-input :readonly="true" class="category-list__input" placeholder="点击选择上级分类" v-model="dataForm.parentName"
                  v-popover:categoryListPopover></el-input>
      </el-form-item>
      <el-form-item label="排序号" prop="sort">
        <el-input-number :min="0" controls-position="right" label="排序号" v-model="dataForm.sort"></el-input-number>
      </el-form-item>
    </el-form>
    <span class="dialog-footer" slot="footer">
      <el-button @click="visible = false">取消</el-button>
      <el-button @click="dataFormSubmit()" type="primary">确定</el-button>
    </span>
  </el-dialog>
</template>

<script>
  import {treeDataTranslate} from '@/utils'
  import Icon from '@/icons'

  export default {
    data() {
      var validateUrl = (rule, value, callback) => {
        if (this.dataForm.type === 1 && !/\S/.test(value)) {
          callback(new Error('分类URL不能为空'))
        } else {
          callback()
        }
      }
      return {
        visible: false,
        dataForm: {
          id: 0,
          name: '',
          pid: 0,
          parentName: '',
          root_id: 0,
          sort: 999,
        },
        dataRule: {
          name: [
            {required: true, message: '分类名称不能为空', trigger: 'blur'}
          ],
          parentName: [
            {required: true, message: '上级分类不能为空', trigger: 'change'}
          ]
        },
        categoryList: [],
        categoryListTreeProps: {
          label: 'name',
          children: 'children'
        }
      }
    },
    created() {
      this.iconList = Icon.getNameList()
    },
    methods: {
      init(id) {
        this.dataForm.id = id || 0
        this.$http({
          url: this.$http.adornUrl('/api/admin/categories/group'),
          method: 'get',
          params: this.$http.adornParams()
        }).then(({data}) => {
          this.categoryList = treeDataTranslate(data.result, 'id', 'pid')
        }).then(() => {
          this.visible = true
          this.$nextTick(() => {
            this.$refs['dataForm'].resetFields()
          })
        }).then(() => {
          if (!this.dataForm.id) {
            // 新增
            this.categoryListTreeSetCurrentNode()
          } else {
            // 修改
            this.$http({
              url: this.$http.adornUrl(`/api/admin/categories/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              this.dataForm.id = data.result.id
              this.dataForm.name = data.result.name
              this.dataForm.pid = data.result.pid
              this.dataForm.root_id = data.result.root_id
              this.dataForm.sort = data.result.sort
              this.categoryListTreeSetCurrentNode()
            })
          }
        })
      },
      // 分类树选中
      categoryListTreeCurrentChangeHandle(data, node) {
        this.dataForm.pid = data.id
        if (data.root_id!=0) {
          this.dataForm.root_id = data.root_id
        }else{
          this.dataForm.root_id = data.id
        }
        this.dataForm.parentName = data.name
      },
      // 分类树设置当前选中节点
      categoryListTreeSetCurrentNode() {
        this.$refs.categoryListTree.setCurrentKey(this.dataForm.pid)
        this.dataForm.parentName = (this.$refs.categoryListTree.getCurrentNode() || {})['name']
      },
      // 图标选中
      iconActiveHandle(iconName) {
        this.dataForm.icon = iconName
      },
      // 表单提交
      dataFormSubmit() {
        this.$refs['dataForm'].validate((valid) => {
          if (valid) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/categories${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || undefined,
                'name': this.dataForm.name,
                'pid': this.dataForm.pid,
                'sort': this.dataForm.sort,
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.$message({
                  message: '操作成功',
                  type: 'success',
                  duration: 1500,
                  onClose: () => {
                    this.visible = false
                    this.$emit('refreshDataList')
                  }
                })
              } else {
                this.$message.error(data.msg)
              }
            })
          }
        })
      }
    }
  }
</script>

<style lang="scss">
  .mod-category {
    .category-list__input,
    .icon-list__input {
      > .el-input__inner {
        cursor: pointer;
      }
    }

    &__icon-popover {
      max-width: 370px;
    }

    &__icon-list {
      max-height: 180px;
      padding: 0;
      margin: -8px 0 0 -8px;

      > .el-button {
        padding: 8px;
        margin: 8px 0 0 8px;

        > span {
          display: inline-block;
          vertical-align: middle;
          width: 18px;
          height: 18px;
          font-size: 18px;
        }
      }
    }

    .icon-list__tips {
      font-size: 18px;
      text-align: center;
      color: #e6a23c;
      cursor: pointer;
    }
  }
</style>
