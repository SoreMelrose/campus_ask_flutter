// api 接口
class Api {
  // static const String BASE_URL = 'http://192.144.169.239/kt';
  // static const String BASE_URL = 'https://qituant.cn:8082';
  static const String BASE_URL = 'http://10.21.11.12:8089';

  static const String login = BASE_URL + '/jeecg-boot/sys/login'; //初始化 重新登录 app初始化时调用

  static const String randomImage = BASE_URL + '/jeecg-boot/sys/randomImage'; //验证码.
  static const String getUserPermissionByToken = BASE_URL + '/jeecg-boot/sys/permission/getUserPermissionByToken'; //验证码.

  static const String getNewArticle = BASE_URL + '/ForumController/getNewArticle'; //获取最新文章
  static const String forumArticles = BASE_URL + '/ForumController/forumArticles'; //获取文章
  static const String getArticleByThemeId = BASE_URL + '/ForumController/getArticleByThemeId'; //获取tab2文章
  static const String getArticleById = BASE_URL + '/ForumController/getArticleById'; //从id获取文章
  static const String getNewComment = BASE_URL + '/ForumController/getNewComment'; //从id获取评论
  static const String articles = BASE_URL + '/ArticleController/articles'; //获取办事流程和政策文件列表
  static const String GetDetailArticleController = BASE_URL + '/ArticleController/GetDetailArticleController'; //通过ID获取文章具体数据

  static const String telephones = BASE_URL + '/ArticleController/telephones'; //获取电话号码信息列表
  static const String insertArticle = BASE_URL + '/ForumController/insertForumArticle'; //论坛发帖

  static const String giveALikeInForum = BASE_URL + '/ForumController/giveALikeInForum'; //论坛点赞一次
  static const String cancelALikeInForum = BASE_URL + '/ForumController/cancelALikeInForum'; //论坛取消点赞一次
  static const String insertForumComment = BASE_URL + '/ForumController/insertForumComment'; //论坛发布评论

  static const String GetAllBuildingInfoController = BASE_URL + '/BuildingController/GetAllBuildingInfoController'; //获取所有建筑物数据
  static const String buildingTypes = BASE_URL + '/BuildingController/buildingTypes'; //获取建筑物类别


  static const String taskStandard = BASE_URL + '/jeecg-boot/prodplan/prodPlan/list'; //prod_plan-分页列表查询
  static const String Search = BASE_URL + '/wx/index/course/search'; //关键词搜索
  static const String prodPlan = BASE_URL + '/wx/index/courses'; //查询所有所有课程
  static const String CourseInfo = BASE_URL + '/wx/index/course/info'; //获取课程详情
  static const String CourseComments = BASE_URL + '/wx/index/course/comments'; //获取课程评价
  static const String CourseTeacher = BASE_URL + '/wx/course/teacher'; //查看老师信息
  static const String UserInfo = BASE_URL + '/wx/user/info'; // 获取个人信息
  static const String SendCode = BASE_URL + '/sendCode'; // 发送验证码
  static const String LoginByPhone = BASE_URL + '/loginByPhone'; // 手机号验证码登录
  static const String FileUpload = BASE_URL + '/wx/file/upload'; // 文件上传
  static const String Feedback = BASE_URL + '/wx/feedback'; // 添加反馈
  static const String ChangeInfo = BASE_URL + '/wx/user/info'; // 修改个人信息
  static const String OrderMine = BASE_URL + '/wx/order/mine'; // 查询个人所有订单
  static const String AllOrderComment = BASE_URL + '/wx/evaluate/all'; // 查询个人所有评价订单
  static const String CommentEvaluate = BASE_URL + '/wx/evaluate'; // 评价课程
  static const String MineAck = BASE_URL + '/wx/course/mine/ack'; // 确认订单
  static const String RefundReasons = BASE_URL + '/wx/reasons'; // 申请售后的理由
  static const String OrderRefund = BASE_URL + ' /wx/order/refund'; // 申请售后

}
