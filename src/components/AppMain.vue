<template>
  <el-container class="main-container">
    <el-aside v-bind:class="asideClass">
      <LeftNav></LeftNav>
    </el-aside>
    <el-container>
      <el-header class="main-header">
        <TopNav></TopNav>
      </el-header>
      <el-main class="main-center">
        <router-view></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
  // 导入组件
  import TopNav from '@/components/TopNav.vue'
  import LeftNav from '@/components/LeftNav.vue'

  // 导出模块
  export default {
    data() {
      return {
        asideClass:'main-aside '
      }
    },
    components:{
      TopNav,LeftNav
    } ,
    created(){
      this.$root.Bus.$on("collaspsed-side", (v)=>{
        this.asideClass = v ? 'main-aside-collapsed' :'main-aside ' ;
        console.log(this.asideClass);
      });
    }
  };
</script>
<style scoped>
  .main-container {
    height: 100%;
    width: 100%;
    box-sizing: border-box;
  }

  .main-aside-collapsed {
    /* 在CSS中，通过对某一样式声明! important ，可以更改默认的CSS样式优先级规则，使该条样式属性声明具有最高优先级 */
    width: 64px !important;
    height: 100%;
    background-color: #334157;
    margin: 0px;
  }

  .main-aside {
    width: 240px !important;
    height: 100%;
    background-color: #334157;
    margin: 0px;
  }

  .main-header,
  .main-center {
    padding: 0px;
    border-left: 2px solid #333;
  }
</style>
