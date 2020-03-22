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
          </el-form-item>
        </el-col>
        <el-col :span="8">
          <el-form-item label="标识" prop="type">
            <el-input placeholder="标识" v-model="dataForm.type"></el-input>
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

<script>
  import wangEditor from '@/components/wangeditor'

  export default {
    data() {
      return {
        visible: false,
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
          type: '',
          content: ''
        },
        dataRule: {
          name: [
            {required: true, message: '标题不能为空', trigger: 'blur'}
          ],
          type: [
            {required: true, message: '请输入标识', trigger: 'blur'}
          ],
          content: [
            {required: true, message: '请输入内容', trigger: 'blur'}
          ]
        }
      }
    },
    components: {
      'wang-editor': wangEditor
    },
    methods: {
      init(id) {
        this.dataForm.id = id || 0
        this.visible = true
        this.$nextTick(() => {
          this.$refs['dataForm'].resetFields()
          if (this.dataForm.id) {
            this.$http({
              url: this.$http.adornUrl(`/api/admin/pages/${this.dataForm.id}`),
              method: 'get',
              params: this.$http.adornParams({
                'id': this.dataForm.id
              })
            }).then(({data}) => {
              if (data && data.code === 200) {
                this.dataForm.name = data.result.name
                this.dataForm.content = data.result.content
                this.dataForm.type = data.result.type
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
              url: this.$http.adornUrl(`/api/admin/pages${!this.dataForm.id ? '' : '/' + this.dataForm.id}`),
              method: `${!this.dataForm.id ? 'post' : 'put'}`,
              data: this.$http.adornData({
                'id': this.dataForm.id || null,
                'name': this.dataForm.name,
                'type': this.dataForm.type,
                'content': this.dataForm.content
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
