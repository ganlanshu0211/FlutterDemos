import 'dart:io';

import 'package:online_school/common/tools/share_preference.dart';
import 'package:flutter_umeng_analytics/flutter_umeng_analytics.dart';
import 'package:wangxiao_plugin/wangxiao_plugin.dart';

///
/// @name 注册友盟
/// @description 
/// @author liuca
/// @date 2020-01-11
///
class Global {
  static init() async {
    // 设置了本地化，和这条冲突
    // initializeDateFormatting('zh_CN');
    await SharedPrefsUtils.init();
    if (Platform.isAndroid)
      UMengAnalytics.init('5cbd8c740cafb2e076000fb5',
          channel: await WangxiaoPlugin.getChannel,
          policy: Policy.BATCH,
          encrypt: true,
          reportCrash: true,
          logEnable: true);
    else if (Platform.isIOS)
      UMengAnalytics.init('5cbd8cdd3fc195db0a0008bc',
          policy: Policy.BATCH,
          encrypt: true,
          reportCrash: true,
          logEnable: true);
  }
}
