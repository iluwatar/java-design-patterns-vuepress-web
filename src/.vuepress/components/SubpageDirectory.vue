<script setup>
import { useLinks } from 'vuepress-plugin-subpage-directory/client'
let links = useLinks()
</script>

<template>
  <div v-for="link in links">
    <RouterLink :to="link">
      <h3 v-text="link" />
    </RouterLink>
  </div>
</template>
