<template>
  <div class="mod-category">
    <el-form :inline="true" :model="dataForm">
      <el-form-item>
        <el-button @click="addOrUpdateHandle()" type="primary" v-if="isAuth('web:category:save')">新增</el-button>
      </el-form-item>
    </el-form>

    <el-table
      :data="dataList"
      border
      style="width: 100%;">
      <el-table-column
        align="center"
        header-align="center"
        label="ID"
        prop="id"
        width="80">
      </el-table-column>
      <table-tree-column
        align="center"
        header-align="center"
        label="名称"
        prop="name">
      </table-tree-column>
      <el-table-column
        align="center"
        header-align="center"
        label="上级分类"
        prop="parent_name">
      </el-table-column>
      <el-table-column
        align="center"
        header-align="center"
        label="排序号"
        prop="sort">
      </el-table-column>
      <el-table-column
        align="center"
        fixed="right"
        header-align="center"
        label="操作"
        width="150">
        <template slot-scope="scope">
          <el-button @click="addOrUpdateHandle(scope.row.id)" size="small" type="text" v-if="isAuth('web:category:update')">
            修改
          </el-button>
          <el-button @click="deleteHandle(scope.row.id)" size="small" type="text" v-if="isAuth('web:category:delete')">删除
          </el-button>
        </template>
      </el-table-column>
    </el-table>

    <!-- 弹窗, 新增 / 修改 -->
    <add-or-update @refreshDataList="getDataList" ref="addOrUpdate" v-if="addOrUpdateVisible"></add-or-update>
  </div>
</template>

<script>
  import TableTreeColumn from '@/components/table-tree-column'
  import AddOrUpdate from './category-add-or-update'
  import {treeDataTranslate} from '@/utils'

  export default {
    data () {
      return {
        dataForm: {},
        dataList: [],
        dataListLoading: false,
        addOrUpdateVisible: false
      }
    },
    components: {
      TableTreeColumn,
      AddOrUpdate
    },
    activated () {
      this.getDataList()
    },
    methods: {
      // 获取数据列表
      getDataList () {
        this.dataListLoading = true
        this.$http({
          url: this.$http.adornUrl('/api/admin/categories'),
          method: 'get',
          params: this.$http.adornParams()
        }).then(({data}) => {
          this.dataList = treeDataTranslate(data.result, 'id', 'parent_id')
          this.dataListLoading = false
        })
      },
      // 新增 / 修改
      addOrUpdateHandle (id) {
        this.addOrUpdateVisible = true
        this.$nextTick(() => {
          this.$refs.addOrUpdate.init(id)
        })
      },
      // 删除
      deleteHandle (id) {
        this.$confirm(`确定对[id=${id}]进行[删除]操作?`, '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http({
            url: this.$http.adornUrl(`/api/admin/categories`),
            method: 'delete',
            data: this.$http.adornData(id, false)
          }).then(({data}) => {
            if (data && data.code === 200) {
              this.$message({
                message: '操作成功',
                type: 'success',
                duration: 1500,
                onClose: () => {
                  this.getDataList()
                }
              })
            } else {
              this.$message.error(data.msg)
            }
          })
        }).catch(() => {
        })
      }
    }
  }
</script>
