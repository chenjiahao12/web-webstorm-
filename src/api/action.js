/**
 * 对后台请求的地址的封装，URL格式如下：
 * 模块名_实体名_操作
 */
export default {
	'SERVER': 'http://localhost', //服务器
  // 'SERVER': 'http://localhost:8080',//服务器
	'SYSTEM_USER_DOLOGIN': '/User/login', //用户登陆
	'SYSTEM_USER_DOREG': '', //用户注册
   'SYSTEM_EXPORT':'/Aritcles/getAll',
  // 'VERIFICATION':'/vue/user/verificationCode',  //获取验证码
	'SYSTEM_MENU_TREE': '/Tree/list', //左侧树形菜单加载
	'SYSTEM_ARTICLE_LIST': '/Aritcles/list', //文章列表
	'SYSTEM_ARTICLE_ADD': '/Aritcles/Insert', //文章新增
	'SYSTEM_ARTICLE_EDIT': '/Aritcles/update', //文章修改
	'SYSTEM_ARTICLE_DEL': '/Aritcles/delete', //文章删除
  'SYSTEM_ARTICLE_GETID':'/Aritcles/getid',//根据id查询
	'SYSTEM_USER_GETASYNCDATA': '/vue/userAction_getAsyncData.action', //vuex中的异步加载数据
	'getFullPath': k => { //获得请求的完整地址，用于mockjs测试时使用
		return this.SERVER + this[k];
	}
}
