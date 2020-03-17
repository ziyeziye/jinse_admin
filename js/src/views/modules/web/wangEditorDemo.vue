<template>
  <wang-editor
    :config="editorConfig"
    :content="content"
    v-model="result">
  </wang-editor>
</template>

<script type="text/javascript">
  import wangEditor from '@/components/wangeditor'

  export default {
    data() {
      return {
        // input content to editor
        content: '',
        // output content from editor
        result: '',
        editorConfig: {
          uploadUrl: this.$http.adornUrl('/web/upload'),
          uploadRes: {
            res: 'result',
            url: 'src'
          },
          // menus: ['source', '|', 'bold', 'underline', 'italic', 'strikethrough',
          //   'eraser', 'forecolor', 'bgcolor', 'quote', 'fontfamily', 'fontsize',
          //   'head', 'unorderlist', 'orderlist', 'alignleft', 'aligncenter', 'alignright',
          //   '|', 'link', 'unlink', 'table', 'img', 'video', 'insertcode', '|', 'undo', 'redo', 'fullscreen'
          // ]
        },
      }
    },
    components: {
      'wang-editor': wangEditor
    }
  }
</script>
