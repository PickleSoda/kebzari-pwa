<template>
  <SwPluginSlot
    name="blog-card"
    :slot-context="blog"
    style="display: contents"
  >
    <BlogCard :blog="blog"/>
  </SwPluginSlot>
</template>

<script>
import SwPluginSlot from "sw-plugins/SwPluginSlot.vue";
import BlogCard from "@/components/card/BlogCard.vue"

export default {
  components: {
    BlogCard,
    SwPluginSlot
  },
  props: {
    blog: {
      type: Object,
      default: () => ({}),
    },
  },
  data() {
    return {}
  },
}
</script>

<style lang="scss" scoped>
.sw-blog-card {
  overflow: hidden;
  --image-width: 600px;
  --image-height: 400px;
}
.variants-price {
  .sf-price__regular {
    font-size: 0.9em;
  }
}
</style>
