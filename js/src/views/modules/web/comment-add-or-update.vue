<template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!dataForm.id ? '新增' : '修改'"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" @keyup.enter.native="dataFormSubmit()" label-width="90px"
             ref="dataForm">

      <el-form-item label="文章标题" prop="article">
        <el-input placeholder="文章标题" v-model="dataForm.article.name"></el-input>
      </el-form-item>

      <el-form-item v-if="dataForm.reply_user" label="被回复人" prop="reply_user_id">
        <el-input placeholder="被回复人" v-model="dataForm.reply_user.username"></el-input>
      </el-form-item>

      <el-form-item v-if="dataForm.reply_user" label="被回复评论" prop="reply">
        <el-input placeholder="被回复评论" type="textarea" v-model="dataForm.reply.content"></el-input>
      </el-form-item>

      <el-form-item label="评论人" prop="user_id">
        <el-input label="sss" placeholder="评论人" v-model="dataForm.user.username"></el-input>
      </el-form-item>

      <el-form-item label="评论内容" prop="content">
        <el-input placeholder="评论内容" v-model="dataForm.content"></el-input>
      </el-form-item>


    </el-form>
    <span class="dialog-footer" slot="footer">
      <el-button @click="visible = false">关闭</el-button>
      <el-button @click="dataFormSubmit()" type="primary" v-if="false">确定</el-button>
    </span>
  </el-dialog>
</template>

<script>
  export default {
    data() {
      return {
        visible: false,
        dataForm: {
          article:{name: ''},
          user: {username: ''},
          reply_user: {username: ''},
          reply: {content: ''},
        },
        dataRule: {}
      }
    },
    methods: {
      init(id) {
        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          // this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/comments/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.dataForm = data.result
              }
            })
          }
        })
      },
      // 表单提交
      dataFormSubmit() {
        this.$refs['dataForm'].validate((valid) => {
          if (valid) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/comments${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || null,
                'user_id': this.dataForm.user_id,
                'article_id': this.dataForm.article_id,
                'reply_id': this.dataForm.reply_id,
                'reply_user_id': this.dataForm.reply_user_id,
                'zan': this.dataForm.zan,
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
