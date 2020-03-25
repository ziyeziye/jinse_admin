<template>
  <el-dialog
    :close-on-click-modal="false"
    :title="!dataForm.id ? '新增' : '修改'"
    :visible.sync="visible">
    <el-form :model="dataForm" :rules="dataRule" @keyup.enter.native="dataFormSubmit()" label-width="80px"
             ref="dataForm">
      <el-form-item label="标题" prop="name">
        <el-input placeholder="标题" v-model="dataForm.name"></el-input>
      </el-form-item>
      <el-row :gutter="5">
        <el-col :span="12">
          <el-form-item label="分类">
            <el-select
              default-first-option
              filterable
              placeholder="请选择文章分类"
              v-model="dataForm.category_id">
              <el-option
                :key="item.id"
                :label="item.name"
                :value="item.id"
                v-for="item in categories">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="类型">
            <el-select placeholder="请选择类型" v-model="dataForm.type">
              <el-option label="文章" value="1"></el-option>
              <el-option label="快讯" value="2"></el-option>
              <el-option label="视频" value="3"></el-option>
            </el-select>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row :gutter="5">
        <el-col :span="12">
          <el-form-item label="作者" prop="user_id">
            <el-select
              :loading="loading"
              :remote-method="searchAuthor"
              filterable
              placeholder="请输入作者名"
              remote
              reserve-keyword
              v-model="dataForm.user_id">
              <el-option
                :key="item.username"
                :label="`${item.username}(${item.nickname})`"
                :value="item.id"
                v-for="item in authors">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
        <el-col :span="12">
          <el-form-item label="标签">
            <el-select
              allow-create
              default-first-option
              filterable
              multiple
              placeholder="请输入或选择文章标签"
              v-model="dataForm.tags">
              <el-option
                :key="item.id"
                :label="item.name"
                :value="item.name"
                v-for="item in tags">
              </el-option>
            </el-select>
          </el-form-item>
        </el-col>
      </el-row>
      <el-row :gutter="5">
        <el-col :span="12">
          <el-form-item label="封面" prop="img">
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
        </el-col>
        <el-col :span="12">
          <el-form-item label="视频" prop="video">
            <el-upload
              :action="uploadVideoUrl"
              :before-upload="beforeVideoUploadHandle"
              :headers="headers"
              :on-success="successVideoUploadHandle"
              :show-file-list="false"
              class="avatar-uploader">

              <video :src="dataForm.videosrc" class="avatar" controls="controls" v-if="dataForm.videosrc">
                您的浏览器不支持 video 标签。
              </video>
              <i class="el-icon-plus avatar-uploader-icon" v-else></i>
            </el-upload>
          </el-form-item>
        </el-col>
      </el-row>
      <el-form-item label="内容" prop="content">
        <wang-editor :config="editorConfig"
                     :content="defContent"
                     style="height:180px;max-height:350px;"
                     v-model="dataForm.content">
        </wang-editor>
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
    width: 270px;
    height: 168px;
    line-height: 168px;
    text-align: center;
  }

  .avatar {
    width: 270px;
    height: 168px;
    display: block;
  }
</style>

<script>
  import wangEditor from '@/components/wangeditor'

  export default {
    data() {
      return {
        visible: false,
        uploadUrl: this.$http.adornUrl('/web/upload'),
        uploadVideoUrl: this.$http.adornUrl('/web/upload?type=video'),
        headers: {},
        loading: false,
        authors: [],
        tags: [],
        categories: [{id: 0, name: "默认"}],
        defContent: "",
        editorConfig: {
          uploadUrl: this.$http.adornUrl('/web/upload'),
          uploadRes: {
            res: 'result',
            url: 'src'
          },
          menus: ['source', '|', 'bold', 'underline', 'italic', 'strikethrough',
            'eraser', 'forecolor', 'bgcolor', 'quote', 'fontfamily', 'fontsize',
            'head', 'unorderlist', 'orderlist', 'alignleft', 'aligncenter', 'alignright',
            '|', 'link', 'unlink', 'table', 'img', 'video', 'insertcode', '|', 'undo', 'redo', 'fullscreen'
          ]
        },
        dataForm: {
          id: 0,
          name: '',
          img: '',
          type: '1',
          imgsrc: '',
          content: '',
          tags: [],
          video: '',
          videosrc: '',
          category_id: 0,
          user_id: '',
        },
        dataRule: {
          name: [
            {required: true, message: '标题不能为空', trigger: 'blur'}
          ],
          img: [
            {required: true, message: '封面不能为空', trigger: 'blur'}
          ],
          user_id: [
            {required: true, message: '请输入或选择作者', trigger: 'blur'}
          ]
        }
      }
    },
    components: {
      'wang-editor': wangEditor
    },
    methods: {
      init(id) {
        this.dataForm.imgsrc = ''
        this.defContent = ''
        this.headers = {
          'X-CSRF-TOKEN': this.$cookie.get('XSRF-TOKEN'),
          '_token': this.$cookie.get('token')
        }

        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          this.category_id = 0
          this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/articles/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.dataForm.name = data.result.name
                this.dataForm.type = data.result.type
                this.dataForm.imgsrc = data.result.img_src
                this.dataForm.img = data.result.img
                this.defContent = data.result.content
                this.dataForm.content = data.result.content
                this.dataForm.tags = data.result.tags
                this.dataForm.video = data.result.video
                this.dataForm.videosrc = data.result.video_src
                this.dataForm.category_id = data.result.category_id
                this.dataForm.user_id = data.result.user_id
                if (data.result.author) {
                  this.authors = [data.result.author]
                }
              }
            })
          }

          //获取分类
          this.$http({
            url: this.$http.adornUrl(`/api/admin/categories`),
            method: 'get',
            params: this.$http.adornParams({})
          }).then(({data}) => {
            if (data && data.code === 200) {
              data.result.unshift({id: 0, name: "默认"})
              this.categories = data.result
            }
          })

          //获取标签
          this.$http({
            url: this.$http.adornUrl(`/api/admin/tags`),
            method: 'get',
            params: this.$http.adornParams({})
          }).then(({data}) => {
            if (data && data.code === 200) {
              this.tags = data.result
            }
          })
        })
      },
      // 表单提交
      dataFormSubmit() {
        this.$refs['dataForm'].validate((valid) => {
          if (valid) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/articles${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || null,
                'name': this.dataForm.name,
                'type': this.dataForm.type,
                'img': this.dataForm.img,
                'content': this.dataForm.content,
                'tags': this.dataForm.tags,
                'video': this.dataForm.video,
                'category_id': this.dataForm.category_id,
                'user_id': this.dataForm.user_id
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
      },
      beforeVideoUploadHandle(file) {
        if (file.type !== 'video/mp4' && file.type !== 'video/ogg' && file.type !== 'video/webm') {
          this.$message.error('只支持mp4、webm、ogg格式的视频！')
          return false
        }

        // const isLt2M = file.size / 1024 / 1024 < 2
        //
        // if (!isLt2M) {
        //   this.$message.error('上传图片大小不能超过 2MB!')
        //   return false
        // }
        return true
      },
      successVideoUploadHandle(response, file) {
        if (response && response.code === 200) {
          this.dataForm.videosrc = response.result.src
          this.dataForm.video = response.result.path
        } else {
          this.$message.error(response.msg)
        }
      },
      searchAuthor(query) {
        if (query !== '') {
          this.loading = true;

          this.$http({
            url: this.$http.adornUrl(`/api/admin/users`),
            method: 'get',
            params: this.$http.adornParams({
              'id': this.dataForm.id,
              'username': query,
            })
          }).then(({data}) => {
            if (data && data.code === 200) {
              this.loading = false;
              this.authors = data.result
            }
          })
        } else {
          this.authors = [];
        }
      },
      handleImageAdded(file, Editor, cursorLocation, resetUploader) {
        let formData = new FormData();
        formData.append("file", file);

        this.$http({
          url: this.uploadUrl,
          method: 'post',
          data: formData
        }).then(({data}) => {
          if (data && data.code === 200) {
            let url = data.result.src
            Editor.insertEmbed(cursorLocation, "image", url)
            resetUploader()
          } else {
            this.$message.error(data.msg)
          }
        })
      }
    }
  }
</script>
