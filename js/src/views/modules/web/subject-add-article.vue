<template>
  <el-dialog
    :close-on-click-modal="false"
    :visible.sync="visible"
    title="挂载文章"
    width="80%">
    <el-form :inline="true" :model="dataForm" @keyup.enter.native="getDataList()">
      <el-form-item>
        <el-input clearable placeholder="标题" v-model="dataForm.name"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button @click="getDataList()">查询</el-button>
        <el-button :disabled="dataListSelections.length <= 0" @click="addSubArticleHandle()" type="danger"
                   v-if="isAuth('web:subject:article')">批量添加
        </el-button>
      </el-form-item>
    </el-form>

    <el-table :data="dataList" @selection-change="selectionChangeHandle" border style="width: 100%;"
              v-loading="dataListLoading">
      <el-table-column align="center" header-align="center" type="selection" width="50">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="ID" prop="id" width="80">
      </el-table-column>

      <el-table-column :show-overflow-tooltip="true" header-align="center" label="标题" prop="name">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="类型" prop="type_name" width="50">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="作者" prop="author.username" width="120">
      </el-table-column>

      <el-table-column
        align="center"
        header-align="center"
        label="创建时间"
        prop="create_time"
        width="180">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="操作" width="150">
        <template slot-scope="scope">
          <el-button @click="addSubArticleHandle(scope.row.id)" size="small" type="text"
                     v-if="isAuth('web:subject:article')">加入
          </el-button>
        </template>
      </el-table-column>
    </el-table>
    <el-pagination
      :current-page="pageIndex"
      :page-size="pageSize"
      :page-sizes="[10, 20, 50, 100]"
      :total="totalPage"
      @current-change="currentChangeHandle"
      @size-change="sizeChangeHandle"
      layout="total, sizes, prev, pager, next, jumper">
    </el-pagination>
  </el-dialog>
</template>

<script>
  export default {
    data() {
      return {
        subjectId: 0,
        visible: false,
        dataForm: {
          name: ''
        },
        dataList: [],
        pageIndex: 1,
        pageSize: 10,
        totalPage: 0,
        dataListLoading: false,
        dataListSelections: [],
        addOrUpdateVisible: false
      }
    },
    methods: {
      init(id) {
        this.subjectId = id || 0
        if (this.subjectId < 1) {
          this.$message.error('操作错误')
          return
        }
        this.visible = true
        this.getDataList()
      },
      // 获取数据列表
      getDataList() {
        this.dataListLoading = true
        this.$http({
          url: this.$http.adornUrl('/api/admin/articles'),
          method: 'get',
          params: this.$http.adornParams({
            'pageNum': this.pageIndex,
            'pageSize': this.pageSize,
            'name': this.dataForm.name || null
          })
        }).then(({data}) => {
          if (data && data.code === 200) {
            this.dataList = data.result.data
            this.totalPage = data.result.total
          } else {
            this.dataList = []
            this.totalPage = 0
          }
          this.dataListLoading = false
        })
      },
      // 每页数
      sizeChangeHandle(val) {
        this.pageSize = val
        this.pageIndex = 1
        this.getDataList()
      },
      // 当前页
      currentChangeHandle(val) {
        this.pageIndex = val
        this.getDataList()
      },
      // 多选
      selectionChangeHandle(val) {
        this.dataListSelections = val
      },
      // 挂载文章
      addSubArticleHandle(id) {
        var ids = id ? [id] : this.dataListSelections.map(item => {
          return item.id
        })
        this.$http({
          url: this.$http.adornUrl('/api/admin/subjects/' + this.subjectId + '/articles'),
          method: 'post',
          data: this.$http.adornData(ids, false)
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
    }
  }
</script>
