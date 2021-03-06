<template>
  <div>
    <el-form :inline="true" :model="dataForm" @keyup.enter.native="getDataList()">
      <el-form-item>
        <el-input clearable placeholder="标题" v-model="dataForm.name"></el-input>
      </el-form-item>
      <el-form-item>
        <el-select placeholder="请选择类型" v-model="dataForm.type">
          <el-option label="全部" value="0"></el-option>
          <el-option label="文章" value="1"></el-option>
          <el-option label="快讯" value="2"></el-option>
          <el-option label="视频" value="3"></el-option>
        </el-select>
      </el-form-item>
      <el-form-item>
        <el-button @click="getDataList()">查询</el-button>
        <el-button @click="addOrUpdateHandle()" type="primary" v-if="isAuth('web:article:save')">新增</el-button>
        <el-button :disabled="dataListSelections.length <= 0" @click="deleteHandle()" type="danger"
                   v-if="isAuth('web:article:delete')">批量删除
        </el-button>
      </el-form-item>
    </el-form>

    <el-table :data="dataList" @selection-change="selectionChangeHandle" border style="width: 100%;"
              v-loading="dataListLoading">
      <el-table-column align="center" header-align="center" type="selection" width="50">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="ID" prop="id" width="80">
      </el-table-column>

      <el-table-column :show-overflow-tooltip="true" align="center" header-align="center" label="标题" prop="name"
                       width="450">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="类型" prop="type_name" width="50">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="图片" prop="img_src" width="100">
        <!-- 图片的显示 -->
        <template slot-scope="scope">
          <img :src="scope.row.img_src" width="70"/>
        </template>
      </el-table-column>

      <el-table-column align="center" header-align="center" label="作者" prop="author.username">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="分类" prop="category.name">
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
          <el-button @click="addOrUpdateHandle(scope.row.id)" size="small" type="text"
                     v-if="isAuth('web:article:update')">
            修改
          </el-button>
          <el-button @click="deleteHandle(scope.row.id)" size="small" type="text" v-if="isAuth('web:article:delete')">删除
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
    <!-- 弹窗, 新增 / 修改 -->
    <add-or-update @refreshDataList="getDataList" ref="addOrUpdate" v-if="addOrUpdateVisible"></add-or-update>
  </div>
</template>

<script>
  import AddOrUpdate from './article-add-or-update'

  export default {
    data() {
      return {
        dataForm: {
          name: '',
          type: '0',
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
    components: {
      AddOrUpdate
    },
    activated() {
      this.getDataList()
    },
    methods: {
      // 获取数据列表
      getDataList() {
        this.dataListLoading = true
        this.$http({
          url: this.$http.adornUrl('/api/admin/articles'),
          method: 'get',
          params: this.$http.adornParams({
            'pageNum': this.pageIndex,
            'pageSize': this.pageSize,
            'name': this.dataForm.name || null,
            'type': this.dataForm.type || null
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
      // 新增 / 修改
      addOrUpdateHandle(id) {
        this.addOrUpdateVisible = true
        this.$nextTick(() => {
          this.$refs.addOrUpdate.init(id)
        })
      },
      // 删除
      deleteHandle(id) {
        var ids = id ? [id] : this.dataListSelections.map(item => {
          return item.id
        })
        this.$confirm(`确定对[id=${ids.join(',')}]进行[${id ? '删除' : '批量删除'}]操作?`, '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http({
            url: this.$http.adornUrl('/api/admin/articles'),
            method: 'delete',
            data: this.$http.adornData(ids, false)
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
