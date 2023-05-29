<template>
  <SwBlogCard
    :blog="content.data.blog"
    class="cms-element-blog-card"
  />
</template>

<script>
import SwBlogCard from "@/components/SwBlogCard.vue"

export default {
  components: {
    SwBlogCard,
  },
  name: "CmsElementBlogCard",
  props: {
    content: {
      type: Object,
      default: null,
    },
  },
}
</script>

<style lang="scss" scoped>
@import "@/cms/settings.scss";
</style>
