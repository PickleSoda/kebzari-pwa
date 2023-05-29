<template>
  <SwBlogListing
    :initialListing="content.data"
    listingType="categoryListing"
  />
</template>

<script>
import SwBlogListing from "@/components/SwBlogListing.vue"

export default {
  name: "CmsElementBlogListing",
  components: {
    SwBlogListing,
  },
  props: {
    content: {
      type: Object,
      default: () => ({}),
    },
  },
  computed: {
    getContent() {
       return console.log(this.content);
      // return this.content.slots || []
    },
  },
  setup(props){
    console.log(props.content)
  },
}
</script>
