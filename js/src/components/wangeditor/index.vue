<template>
  <div @input="result" id="weditor" v-html="content">
  </div>
</template>

<script>
  import WangEditor from 'wangeditor'

  export default {
    props: ['content', 'config'],
    data() {
      return {
        editor: '',
      }
    },
    mounted() {
      let editor = new WangEditor('weditor')
      // editor.config.menus = ['source', '|', 'bold', 'underline', 'italic', 'strikethrough', 'eraser', 'forecolor', 'bgcolor', '|', 'quote', 'fontfamily', 'fontsize', 'head', 'unorderlist', 'orderlist', 'alignleft', 'aligncenter', 'alignright',
      //   '|', 'link', 'unlink', 'table', 'img', 'video', 'insertcode', '|', 'undo', 'redo', 'fullscreen'
      // ]
      editor.config.uploadImgUrl = '/upload'
      editor.config.uploadImgFileName = 'file'

      editor = this.setConfig(editor)

      editor.create()
      this.editor = editor
    },
    methods: {
      result() {
        this.$emit('input', this.editor.$txt.html())
      },
      //编辑器配置
      setConfig(editor) {
        //设置菜单
        if (this.config.menus !== undefined) {
          editor.config.menus = this.config.menus
        }
        //设置上传地址
        if (this.config.uploadUrl !== undefined) {
          editor.config.uploadImgUrl = this.config.uploadUrl;
        }
        //设置上传文件请求名
        if (this.config.uploadName !== undefined) {
          editor.config.uploadImgFileName = this.config.uploadName;
        }
        //设置上传参数
        if (this.config.uploadParams !== undefined) {
          editor.config.uploadParams = this.config.uploadParams;
        }
        //设置上传Header
        if (this.config.uploadHeaders !== undefined) {
          editor.config.uploadHeaders = this.config.uploadHeaders;
        }
        //设置上传事件
        // if (this.config.uploadImgFns !== undefined) {
        //   editor.config.uploadImgFns = this.config.uploadImgFns;
        // }
        //单独设置上传Response
        if (this.config.uploadRes !== undefined) {
          editor.config.uploadImgFns.onload = this.uploadLoadFns;
        }

        //设置表情包
        if (this.config.emotions !== undefined) {
          editor.config.emotions = this.config.emotions;
        }
        // 百度地图的key
        if (this.config.mapAk !== undefined) {
          editor.config.mapAk = this.config.mapAk;
        }

        return editor
      },
      uploadLoadFns(resultText, xhr) {
        // resultText 服务器端返回的text
        // xhr 是 xmlHttpRequest 对象，IE8、9中不支持
        let response = JSON.parse(resultText)
        let res = this.config.uploadRes.res
        let url = this.config.uploadRes.url
        resultText = response[res][url]

        // 上传图片时，已经将图片的名字存在 editor.uploadImgOriginalName
        var originalName = this.editor.uploadImgOriginalName || '';

        // 如果 resultText 是图片的url地址，可以这样插入图片：
        // editor.command(null, 'insertHtml', '<img src="' + resultText + '" alt="' + originalName + '" style="max-width:100%;"/>');

        // 如果不想要 img 的 max-width 样式，也可以这样插入：
        this.editor.command(null, 'InsertImage', resultText);
      },
      setContent(val) {　　　　//设置内容
        this.editor.$txt.html(val)
      },
      clearContent() {　　　　//清空内容
        // this.editor.txt.clear()
        this.editor.$txt.html(this.editorDefault)
      },
      getContent() {　　　　　　//获取内容
        var content = this.editor.$txt.html()
        if (content.replace("<p><br></p>", "").trim() != "") {
          return this.editor.$txt.html()
        } else {
          return ""
        }
      }
    }
  }
</script>
<style scoped>
  #editor {
    height: 440px;
  }

  .wangEditor-container {
    border-radius: 2px;
    overflow: hidden;
    border: 1px solid #CCC;
  }
</style>
