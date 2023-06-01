<template>
  <div class="sw-blog-card" data-testid="product-card">
    <div class="sw-blog-card__image" @click.native="$router.push(getRouterLink)">
      <SwImage
        :src="blog.media.url"
        :title="blog.title"
        :alt="blog.title"
        :style="getImageStyle"
      />
    </div>
    <div class="sw-blog-card__title">
      {{ blog.title }}
    </div>
  </div>
</template>

<script>
import SwImage from "@/components/atoms/SwImage.vue";
import { computed } from "@vue/composition-api";
import { getProductUrl } from "@shopware-pwa/helpers";

export default {
  components: {
    SwImage,
  },
  props: {
    blog: {
      type: Object,
      default: () => ({}),
    },
  },
  computed: {
    getRouterLink() {
      return getProductUrl(this.blog);
    },
  },
  methods: {
    getImageStyle() {
      return {
        width: "100%",
        height: "auto",
        cursor: "pointer",
      };
    },
  },
};
</script>

<style lang="scss" scoped>
@import "@/assets/scss/variables";

.sw-blog-card {
  display: flex;
  flex-direction: column;
  align-items: center;
  margin: var(--spacer-lg);

  &__image {
    display: flex;
    justify-content: center;
    align-items: center;
  }

  &__title {
    margin-top: 1rem;
    font-weight: bold;
    font-size: 1.2rem;
  }
}
</style>
