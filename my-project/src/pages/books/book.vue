<template>
  <div>
    <h1>{{msg}}</h1>

  </div>
</template>

<script>
  import {get} from '@/util'

  export default {
    data () {
      return {
        msg: 'book'
      }
    },
    async created () {
      const res = await get('/weapp/demo');
      console.log(res);
      console.log('小程序启动了');
    },
    methods: {

    }
  }
</script>

<style scoped>

</style>
