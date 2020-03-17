<template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!dataForm.id ? '新增' : '修改'"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" @keyup.enter.native="dataFormSubmit()" label-width="80px"
             ref="dataForm">

      <el-form-item label="用户名" prop="username">
        <el-input :disabled="!dataForm.id ? false : true" placeholder="用户名" v-model="dataForm.username"></el-input>
      </el-form-item>

      <el-form-item label="昵称" prop="nickname">
        <el-input placeholder="用户昵称" v-model="dataForm.nickname"></el-input>
      </el-form-item>

      <el-form-item :class="{ 'is-required': !dataForm.id }" label="密码" prop="password">
        <el-input placeholder="密码" type="password" v-model="dataForm.password"></el-input>
      </el-form-item>
      <el-form-item :class="{ 'is-required': !dataForm.id }" label="确认密码" prop="password2">
        <el-input placeholder="确认密码" type="password" v-model="dataForm.password2"></el-input>
      </el-form-item>

      <el-form-item label="手机号码" prop="phone">
        <el-input placeholder="手机号码" v-model="dataForm.phone"></el-input>
      </el-form-item>

      <el-row :gutter="10">
        <el-col :span="8">
          <el-form-item label="头像" prop="avatar">
            <el-upload
              :action="uploadUrl"
              :before-upload="beforeUploadHandle"
              :on-success="successUploadHandle"
              :show-file-list="false"
              class="avatar-uploader">
              <img :src="dataForm.avatar_src" class="avatar" v-if="dataForm.avatar_src">
              <i class="el-icon-plus avatar-uploader-icon" v-else></i>
            </el-upload>
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="状态" prop="status">
            <el-radio-group v-model="dataForm.status">
              <el-radio :label="1">正常</el-radio>
              <el-radio :label="2">禁用</el-radio>
            </el-radio-group>
          </el-form-item>
        </el-col>
      </el-row>
    </el-form>
    <span class="dialog-footer" slot="footer">
      <el-button @click="visible = false">取消</el-button>
      <el-button @click="dataFormSubmit()" type="primary">确定</el-button>
    </span>
  </el-dialog>
</template>

<style>
  .avatar-uploader .el-upload {
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
  }

  .avatar-uploader .el-upload:hover {
    border-color: #409EFF;
  }

  .avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 90px;
    height: 90px;
    line-height: 90px;
    text-align: center;
  }

  .avatar {
    width: 90px;
    height: 90px;
    display: block;
  }
</style>

<script>
  import {isMobile} from '@/utils/validate'

  export default {
    data() {
      var validatePassword = (rule, value, callback) => {
        if (!this.dataForm.id && !/\S/.test(value)) {
          callback(new Error('密码不能为空'))
        } else {
          callback()
        }
      }
      var validatePassword2 = (rule, value, callback) => {
        if (!this.dataForm.id && !/\S/.test(value)) {
          callback(new Error('确认密码不能为空'))
        } else if (this.dataForm.password !== value) {
          callback(new Error('确认密码与密码输入不一致'))
        } else {
          callback()
        }
      }
      var validatePhone = (rule, value, callback) => {
        if (this.dataForm.phone && !isMobile(value)) {
          callback(new Error('手机号格式错误'))
        } else {
          callback()
        }
      }

      return {
        visible: false,
        uploadUrl: '',
        dataForm: {
          id: 0,
          username: '',
          nickname: '',
          avatar: '',
          avatar_src: '',
          status: 1,
          password: '',
          password2: '',
          phone: '',
        },
        dataRule: {
          username: [
            {required: true, message: '用户名不能为空', trigger: 'blur'}
          ],
          password: [
            {validator: validatePassword, trigger: 'blur'}
          ],
          password2: [
            {validator: validatePassword2, trigger: 'blur'}
          ],
          phone: [
            {validator: validatePhone, trigger: 'blur'}
          ]
        }
      }
    },
    methods: {
      init(id) {
        this.uploadUrl = this.$http.adornUrl('/web/upload')
        this.dataForm.imgsrc = ''

        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          this.dataForm.avatar_src = ''
          this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/users/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.dataForm.username = data.result.username
                this.dataForm.nickname = data.result.nickname
                this.dataForm.avatar = data.result.avatar
                this.dataForm.avatar_src = data.result.avatar_src
                this.dataForm.status = data.result.status
                this.dataForm.phone = data.result.phone
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
              url: this.$http.adornUrl(`/api/admin/users${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || null,
                'username': this.dataForm.username,
                'nickname': this.dataForm.nickname,
                'avatar': this.dataForm.avatar,
                'status': this.dataForm.status,
                'password': this.dataForm.password,
                'password2': this.dataForm.password2,
                'phone': this.dataForm.phone,
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
      },
      successUploadHandle(response, file) {
        if (response && response.code === 200) {
          this.dataForm.avatar_src = response.result.src
          this.dataForm.avatar = response.result.path
        } else {
          this.$message.error(response.msg)
        }
      },
      beforeUploadHandle(file) {
        if (file.type !== 'image/jpg' && file.type !== 'image/jpeg' && file.type !== 'image/png' && file.type !== 'image/gif') {
          this.$message.error('只支持jpg、png、gif格式的图片！')
          return false
        }

        // const isLt2M = file.size / 1024 / 1024 < 2
        //
        // if (!isLt2M) {
        //   this.$message.error('上传图片大小不能超过 2MB!')
        //   return false
        // }
        return true
      }
    }
  }
</script>
