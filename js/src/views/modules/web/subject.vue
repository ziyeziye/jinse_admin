<template>
  <div>
    <label :for="subjectId"><h2>{{subjectId>0 ? '专题文章管理': ''}}</h2></label>
    <el-form :inline="true" :model="dataForm" @keyup.enter.native="getDataList()">
      <el-form-item>
        <el-input clearable placeholder="标题" v-model="dataForm.name"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button @click="getDataList()">查询</el-button>
        <el-button @click="subjectId>0 ? addArticleHandle(): addOrUpdateHandle()" type="primary"
                   v-if="isAuth( subjectId>0 ?'web:subject:article':'web:subject:save')">
          {{subjectId>0 ? '挂载文章': '新增专题'}}
        </el-button>
        <el-button :disabled="dataListSelections.length <= 0"
                   @click="subjectId>0 ? deleteArticleHandle():deleteHandle()" type="danger"
                   v-if="isAuth('web:subject:delete')">批量删除
        </el-button>
        <el-button @click="back()" type="primary" v-if="subjectId>0">返回专题管理</el-button>
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

      <el-table-column align="center" header-align="center" label="类型" prop="type_name" v-if="subjectId>0" width="50">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="作者" prop="author.username" width="120">
      </el-table-column>

      <el-table-column align="center" header-align="center" label="图片" prop="img_src" width="200">
        <!-- 图片的显示 -->
        <template slot-scope="scope">
          <img :src="scope.row.img_src" height="50" width="170"/>
        </template>
      </el-table-column>

      <el-table-column
        :label="subjectId>0?'加入时间':'创建时间'"
        align="center"
        header-align="center"
        prop="create_time"
        width="180">
      </el-table-column>

      <!--专题文章管理-->
      <el-table-column align="center" header-align="center" label="操作" v-if="subjectId>0" width="200">
        <template slot-scope="scope">
          <el-button @click="subjectId>0 ? deleteArticleHandle(scope.row.id):deleteHandle(scope.row.id)"
                     size="small" type="text"
                     v-if="isAuth('web:subject:article')">删除
          </el-button>
        </template>
      </el-table-column>

      <!--专题管理-->
      <el-table-column align="center" header-align="center" label="操作" v-else width="200">
        <template slot-scope="scope">
          <el-button @click="gotoSubjectArticleHandle(scope.row.id)" size="small" type="text"
                     v-if="isAuth('web:subject:article')">
            挂载内容
          </el-button>

          <el-button @click="addOrUpdateHandle(scope.row.id)" size="small" type="text"
                     v-if="isAuth('web:subject:update')">
            修改
          </el-button>
          <el-button @click="deleteHandle(scope.row.id)" size="small" type="text" v-if="isAuth('web:subject:delete')">删除
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
    <add-article @refreshDataList="getDataList" ref="addArticle" v-if="addArticleVisible"></add-article>

  </div>
</template>

<script>
  import AddOrUpdate from './subject-add-or-update'
  import AddArticle from './subject-add-article'

  export default {
    data() {
      return {
        subjectId: 0,
        dataForm: {
          name: ''
        },
        dataList: [],
        pageIndex: 1,
        pageSize: 10,
        totalPage: 0,
        dataListLoading: false,
        dataListSelections: [],
        addOrUpdateVisible: false,
        addArticleVisible: false,
      }
    },
    components: {
      AddOrUpdate,
      AddArticle
    },
    activated() {
      if (this.$route.query.id !== undefined) {
        this.subjectId = this.$route.query.id
      } else {
        this.subjectId = 0
        this.getDataList()
      }
    },
    watch: {
      subjectId: function () {
        this.getDataList()
      }
    },
    methods: {
      // 获取数据列表
      getDataList() {
        this.dataListLoading = true
        let url = this.$http.adornUrl('/api/admin/subjects')
        if (this.subjectId > 0) {
          url = this.$http.adornUrl('/api/admin/subjects/' + this.subjectId + '/articles')
        }
        this.$http({
          url: url,
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
      // 新增 / 修改专题
      addOrUpdateHandle(id) {
        this.addOrUpdateVisible = true
        this.$nextTick(() => {
          this.$refs.addOrUpdate.init(id)
        })
      },
      //挂载文章
      addArticleHandle(id) {
        this.addArticleVisible = true
        this.$nextTick(() => {
          this.$refs.addArticle.init(this.subjectId)
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
            url: this.$http.adornUrl('/api/admin/subjects'),
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
      },
      // 删除专题文章
      deleteArticleHandle(id) {
        var ids = id ? [id] : this.dataListSelections.map(item => {
          return item.id
        })
        this.$confirm(`确定对[id=${ids.join(',')}]进行[${id ? '删除' : '批量删除'}]操作?`, '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          this.$http({
            url: this.$http.adornUrl('/api/admin/subjects/' + this.subjectId + '/articles'),
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
      },
      gotoSubjectArticleHandle(id) {
        this.subjectId = id
        this.$router.push({query: {id: id}});
      },
      back() {
        this.subjectId = 0
        this.$router.push({query: {}});
      },
    }
  }
</script>
