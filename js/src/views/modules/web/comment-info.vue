<template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!info.reply_id ? '查看评论' : '查看回复'"
    :visible.sync="visible">

    <avue-comment v-if="info.reply_id" :data="dataForm.reply" :option="option" reverse>
      <i @click="$message('自定义菜单')" class="el-icon-delete"></i>
    </avue-comment>

    <avue-comment :data="dataForm.comment" :option="option">
      <i @click="$message('自定义菜单')" class="el-icon-delete"></i>
    </avue-comment>

    <span class="dialog-footer" slot="footer">
      <el-button @click="visible = false">关闭</el-button>
    </span>
  </el-dialog>
</template>

<script>
  export default {
    data() {
      return {
        visible: false,
        option: {
          props: {
            avatar: 'avatar',
            author: 'author',
            body: 'body'
          }
        },
        info: {reply_id: 0},
        dataForm: {
          id: 0,
          comment: {},
          reply: {},
        },
        dataRule: {}
      }
    },
    methods: {
      init(id) {
        this.dataForm.id = id || 0
        this.visible = true
        this.info = {reply_id: 0}
        this.dataForm.comment = {}
        this.dataForm.reply = {}

        // this.$nextTick(() => {
        if (this.dataForm.id) {
          this.$http({
            url: this.$http.adornUrl(`/api/admin/comments/${this.dataForm.id}`),
            method: 'get',
            params: this.$http.adornParams({
              'id': this.dataForm.id
            })
          }).then(({data}) => {
            if (data && data.code === 200) {
              this.info = data.result
              let state = '评论内容:'
              if (data.result.reply_id && data.result.reply_user) {
                let replyBq = data.result.reply_user.username + '(' + data.result.reply_user.nickname + ')'

                this.$set(this.dataForm, 'reply', {
                  avatar: data.result.reply_user.avatar_src,
                  author: data.result.article.name,
                  body: '评论内容:<p>' + data.result.reply.content + '</p>'
                    + '<blockquote>---' + replyBq + '   于' + data.result.reply.create_time + '</blockquote>'
                })
                state = '回复内容:'
              }

              let replyBq = data.result.user.username + '(' + data.result.user.nickname + ')'
              this.$set(this.dataForm, 'comment', {
                avatar: data.result.user.avatar_src,
                author: data.result.article.name,
                body: state + '<p>' + data.result.content + '</p>'
                  + '<blockquote>---' + replyBq + '   于' + data.result.create_time + '</blockquote>'
              })

            }
          })
        }
        // })
      }
    },
  }
</script>
