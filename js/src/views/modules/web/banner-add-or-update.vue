 <template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!dataForm.id ? '新增' : '修改'"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" @keyup.enter.native="dataFormSubmit()" label-width="80px"
             ref="dataForm">

      <el-row :gutter="10">
        <el-col :span="14">
          <el-form-item label="名称" prop="name">
            <el-input placeholder="名称" v-model="dataForm.name"></el-input>
          </el-form-item>        </el-col>
        <el-col :span="8">
          <el-form-item label="类型">
            <el-select placeholder="请选择类型" v-model="dataForm.type">
              <el-option label="图片" value="1"></el-option>
              <el-option label="文章" value="2"></el-option>
              <el-option label="活动" value="3"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
      </el-row>

      <el-form-item label="链接" prop="href">
        <el-input placeholder="链接" v-model="dataForm.href"></el-input>
      </el-form-item>

      <el-form-item label="图片" prop="img">
        <el-upload
          :action="uploadUrl"
          :before-upload="beforeUploadHandle"
          :headers="headers"
          :on-success="successUploadHandle"
          :show-file-list="false"
          class="avatar-uploader">
          <img :src="dataForm.imgsrc" class="avatar" v-if="dataForm.imgsrc">
          <i class="el-icon-plus avatar-uploader-icon" v-else></i>
        </el-upload>
      </el-form-item>

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
    width: 250px;
    height: 140px;
    line-height: 140px;
    text-align: center;
  }

  .avatar {
    width: 250px;
    height: 140px;
    display: block;
  }
</style>

<script>
  export default {
    data() {
      return {
        visible: false,
        uploadUrl: '',
        headers: {},
        dataForm: {
          id: 0,
          name: '',
          img: '',
          type: '1',
          imgsrc: '',
          href: ''
        },
        dataRule: {
          name: [
            {required: true, message: '标题不能为空', trigger: 'blur'}
          ],
          img: [
            {required: true, message: '图片不能为空', trigger: 'blur'}
          ]
        }
      }
    },
    methods: {
      init(id) {
        this.uploadUrl = this.$http.adornUrl('/web/upload')
        this.dataForm.imgsrc = ''
        this.headers = {
          'X-CSRF-TOKEN': this.$cookie.get('XSRF-TOKEN'),
          '_token': this.$cookie.get('token')
        }

        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/banners/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.dataForm.name = data.result.name
                this.dataForm.href = data.result.href
                this.dataForm.type = data.result.type
                this.dataForm.imgsrc = data.result.img_src
                this.dataForm.img = data.result.img
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
              url: this.$http.adornUrl(`/api/admin/banners${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || null,
                'name': this.dataForm.name,
                'type': this.dataForm.type,
                'href': this.dataForm.href || null,
                'img': this.dataForm.img
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
          this.dataForm.imgsrc = response.result.src
          this.dataForm.img = response.result.path
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
