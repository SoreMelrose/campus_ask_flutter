import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../api/ColorUtil.dart';
import '../api/LogUtil.dart';
import '../api/api.dart';
import '../api/SpUtil.dart';
import '../api/FutureDioToken.dart';
import '../api/LogUtil.dart';

class HomeIndexPage extends StatefulWidget {
  @override
  _HomeIndexPageState createState() => _HomeIndexPageState();
}

class _HomeIndexPageState extends State<HomeIndexPage> {
  var _futureBuilderFuture;
  // Future _gerData() async {
  //   var response = HttpUtil()
  //       .get('http://api.douban.com/v2/movie/top250', data: {'count': 15});
  //   return response;
  // }
  Future _getData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData = FutureDio('post', Api.login, {"sid": "076003"});
    _futureBuilderFuture = _getData;
    // LogUtil.init(title: "来自LogUtil",limitLength:800);

    var log = "我是日志";
    //仅在Debug时打印
    LogUtil.d(log);
    LogUtil.d("我是日志");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0, //隐藏底部阴影分割线
        title: new Text(
          "编辑内容",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        backgroundColor: Colors.white,
      ),
      body: FutureBuilder(
        builder: _buildFuture,
        future: _futureBuilderFuture,
      ),
    );
  }

  Widget _buildFuture(BuildContext context, AsyncSnapshot snapshot) {
    switch (snapshot.connectionState) {
      case ConnectionState.none:
        print('还没有开始网络请求');
        return Text('还没有开始网络请求');
      case ConnectionState.active:
        print('active');
        return Text('ConnectionState.active');
      case ConnectionState.waiting:
        print('waiting');
        return Center(
          child: CircularProgressIndicator(),
        );
      case ConnectionState.done:
        print('done');
        if (snapshot.hasError) return Text('Error: ${snapshot.error}');
        if (!snapshot.hasData)
          return Center(
            child: Text("暂无数据"),
          );
        LogUtil.d('finished');
        LogUtil.d(snapshot.data);
        List showList = snapshot.data.data['data']['records'];
        return ListView.builder(
            itemCount: showList.length,
            itemBuilder: (context, index) {
          return Container();
        });
      default:
        return null;
    }
  }
}
