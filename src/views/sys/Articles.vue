<template>
  <div>
    <el-form :inline="true" :model="formInline" class="user-search">
      <el-form-item label="搜索:">
        <el-input size="small" v-model="formInline.title" placeholder="输入文章标题"></el-input>
      </el-form-item>
      <el-form-item>
        <el-button size="small" type="primary" icon="el-icon-search" @click="search">搜索</el-button>
        <el-button size="small" type="primary" icon="el-icon-plus" @click="add()">添加</el-button>
        <el-button @click="ExportOpen" type="success" size="small" icon="el-icon-download">导出数据</el-button> <!---->
      </el-form-item>


    </el-form>
    <!-- 列表-->
    <el-table :data="listData"  stripe border size="small" style="width: 100%;"  >
      <el-table-column prop="id" label="ID" width="390"></el-table-column>
      <el-table-column prop="title" label="文章标题" width="390">
      </el-table-column>
      <el-table-column  label="文章内容" width="390">
        <template slot-scope="scope">
          <span class="el-icon-view" prop="body" @click="open1(scope.row)"></span>
        </template>
      </el-table-column>
      <el-table-column align="center" label="操作" min-width="300" >
        <template slot-scope="scope">
          <el-button size="mini" @click="editedit(scope.$index, scope.row)">编辑</el-button>
          <el-button size="mini" type="danger" @click="del(scope.$index, scope.row)">删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    <!-- 分页条 -->
    <el-pagination style="margin-top: 20px;" @size-change="handleSizeChange" @current-change="handleCurrentChange"
                   :current-page="formInline.page" :page-sizes="[10, 20, 30, 50]" :page-size="formInline.rows"
                   layout="total, sizes, prev, pager, next, jumper"
                   :total="pageBean.total">
    </el-pagination>
    <!-- 编辑界面 -->
    <el-dialog :title="title" :visible.sync="editFormVisible" width="30%" @click="closeDialog">
      <el-form label-width="120px" :model="editForm" :rules="rules" ref="editForm">
        <el-form-item label="文章标题" prop="title">
          <el-input size="small" v-model="editForm.title" auto-complete="off" placeholder="请输入文章标题"></el-input>
        </el-form-item>
        <el-form-item label="文章内容" prop="body">
          <el-input size="small" v-model="editForm.body" auto-complete="off" placeholder="请输入文章内容"></el-input>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button size="small" @click="closeDialog">取消</el-button>
        <el-button size="small" type="primary" class="title" @click="submitForm">保存</el-button>
      </div>
    </el-dialog>


    <!-- 文件导出字段-->
    <el-dialog :title="Exporttitle" :visible.sync="Export" width="35%" @click="closeDialog">
      <el-transfer
        :titles="['选择导出字段', '已选择导出字段']"
        :filter-method="filterMethod"
        v-model="value"
        :data="data">
      </el-transfer>
      <div slot="footer" class="dialog-footer">
        <el-button size="small" @click="cancel" >取消</el-button>
        <el-button size="small" type="primary" class="title" @click="save">保存</el-button>
      </div>
    </el-dialog>
  </div>
</template>


<script>


  import index from "../../router";

  export default {
    data() {
      const generateData = _ => {
        const data = [];
        const cities = ['ID', '文章标题', '文章内容'];
        const pinyin = ['id', 'title', 'body'];
        cities.forEach((city, index) => {
          data.push({
            label: city,
            key: index,
            pinyin: pinyin[index]
          });
        });
        return data;
      };
      return {
        selectedText : [],
    selectedOption : [],
        data: generateData(),
        value: [],

        /*定义数组*/
        listData: [],
        pageBean: {
          total: 0
        },
        /*分页*/
        formInline: {
          title: '',
          page: 1,
          rows: 10,
          total: 0
        },
        Export:false,
        Exporttitle:'',
        /*编辑*/
        editFormVisible: false,/*默认关闭*/
        title: '',
        editForm: {
          body: '',
          title: '',
          id: 0
        },
        /*表单验证*/
        rules: {
          title: [{
            required: true,
            message: '请输入文章标题',
            trigger: 'blur'
          }],
          body: [{
            required: true,
            message: '请输入文章内容',
            trigger: 'blur'
          },
          /*  {
              min: 0,
              max: 0,
              message: '长度在 0到 0个字符',
              trigger: 'blur'
            }*/
          ]
        }
      };
    },
    methods: {
      filterMethod(query, item) {
        return item.pinyin.indexOf(query) > -1;
      },
   /*点击图标*/
      open1(row) {
        let  url= this.axios.urls.SYSTEM_ARTICLE_GETID;
        this.axios.post(url,{id:row.id}).then((response) => {
          console.log(response);
          const h = this.$createElement;
          this.$notify({
            title: response.data.data.title,
            duration:5000,
            message: h('i', { style: 'color: teal'},response.data.data.body)


            /*message: response.data.result.body,*/
           /* type: 'success'*/
          });
        }).catch((response) => {
          console.log(response);

        });

      },
      /*查询按钮*/
      search() {
        this.doSearch(this.formInline);
      },
      /*模糊查询*/
      doSearch(params) {
        let url = this.axios.urls.SYSTEM_ARTICLE_LIST;
        this.axios.post(url, params).then((response) => {
          console.log(response);
          this.listData = response.data.data;
          this.pageBean = response.data.pageBean;
        }).catch((response) => {
          console.log(response);

        });
      },
      /*页码大小发生改变（一页多少条）*/
      handleSizeChange(rows) {
        console.log('页码大小发生改变' + rows);
        this.formInline.page = 1;
        this.formInline.rows = rows;
        this.search();
      },
      /*当前页码发生变化（低几页）*/
      handleCurrentChange(page) {
        console.log('当前页码发生改变' + page);
        this.formInline.page = page;
        this.search();
      },
      /*关闭导出窗口*/
      cancel(){
        this.Export = false;
        this.clearFrom();
      },
      /*文件导出保存*/
      save(){

       /* this.data.forEach(item=>{
          this.selectedText.push(item.label);
          this.selectedOption.push(item.pinyin);

        });

        console.log(JSON.stringify(this.selectedOption));
        console.log(JSON.stringify(this.selectedText))*/
        let url ="http://localhost/Aritcles/getAll";
      this.$http.get(url,{

      }).then((response) => {
        this.closeDialog();
        console.log(response);

      });




      },
      /* 关闭新增编辑界面*/
      closeDialog() {
        this.editFormVisible = false;
        this.clearFrom();
      },
      /* 提交新增，修改*/
      submitForm() {
        //用来提交新增，修改的表单数据的，提交之前需要通过Vue实列中定义的表单填写规则
        this.$refs['editForm'].validate((valid) => {
          if (valid) {
            let url;
            if (this.editForm.id == 0) {
              url = this.axios.urls.SYSTEM_ARTICLE_ADD;
            } else {
              url = this.axios.urls.SYSTEM_ARTICLE_EDIT;
            }
            /*提交函数*/
            this.axios.post(url,
              this.editForm
            ).then((response) => {
              console.log(response);
              this.clearFrom();
              this.doSearch(this.formInline);
              this.$message({
                message: response.data.msg,
                type: 'success'
              });
            }).catch((response) => {
              this.$message({
                message: response.data.msg,
                type: 'error'
              });
            });

          } else {
            console.log('error submit!!');
            return false;
          }
        });
      },
      /* 清空表格*/
      clearFrom() {
        this.editForm.id = '';
        this.editForm.title = '';
        this.editForm.body = '';
        this.formInline.page = 1;
        this.formInline.rows = 10;
        this.editFormVisible = false;
      },
      /* 新增文章*/
      add() {
        this.title = '新增文章';
        this.editFormVisible = true;
      },
      /*文件导出*/
      ExportOpen(){
        this.Exporttitle='文件导出';
        this.Export=true;
      },
      /*删除文章 */
      del(index, row) {
        this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          let url = this.axios.urls.SYSTEM_ARTICLE_DEL;
          this.axios.post(url, {
            id: row.id
          }).then((response) => {
            console.log(response);
            this.clearFrom();
            this.doSearch({});
          }).catch((response) => {
            console.log(response);
          });
          this.$message({
            type: 'success',
            message: '删除成功!'
          });
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          });
        });

      },
      /* 编辑文章*/
      edit(index, row) {
        this.title = '编辑文章';
        //index代表的是操作数据在当前界面的行号
        //row代表操作当前数据，也就是说可以重row中获取所有数据库列段名
        //var row = $("#dd").datagrid("getselected");
        //$("#ff").form("load",row);完成了数据回显
        this.editForm.id = row.id;
        this.editForm.title = row.title;
        this.editForm.body = row.body;
        this.editFormVisible = true;
      }

    },
    /*页面一加载就调用*/
    created() {

      this.doSearch({});
    }
  }
</script>

<style>
</style>
