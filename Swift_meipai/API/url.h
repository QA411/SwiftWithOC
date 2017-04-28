//
//  url.h
//  Swift_meipai
//
//  Created by qq on 2017/4/18.
//  Copyright © 2017年 fangxian. All rights reserved.
//

#define kSchema @"http://"

// 测试环境和生产环境分开

// 接口服务器 IP
#if DEBUG
#define kHost @"10.66.120.63:28080"//@"10.66.120.69"//@"120.24.160.24"//10.66.120.63//@"10.66.120.69"// communication-service-v2.jy.gznb.com
#else
#define kHost @"communication-service-v2.jy.gznb.com"
#endif

// 儿童电台服务器
#if DEBUG
#define kHost1 @"10.66.120.63:28083"//@"10.66.120.69"//@"120.24.160.24"//10.66.120.63//@"10.66.120.69"//
#else
#define kHost1 @"open-content-service-v1.jy.gznb.com"
#endif

// 文件服务器
#if DEBUG
#define kFileHost @"communication-service-v2.jy.gznb.com"//@"10.66.120.69"//@"120.24.160.24"//10.66.120.63//@"10.66.120.69"//
#else
#define kFileHost @"communication-service-v2.jy.gznb.com"
#endif


// 登录页面
#define kLogin [NSString stringWithFormat:@"http://%@/wisdomschool/phone/login/doLogin",kHost]
#define kGetStudentList [NSString stringWithFormat:@"http://%@/wisdomschool/phone/student/list?token=",kHost]
#define kRegister [NSString stringWithFormat:@"http://%@/wisdomschool/phone/login/doRegister", kHost]
#define kSendVerCode [NSString stringWithFormat:@"http://%@/wisdomschool/phone/login/sendVerCode", kHost]
#define kForgetPassword [NSString stringWithFormat:@"http://%@/wisdomschool/phone/login/forgetPassword", kHost]

// H5 的页面所在的 URL
// 关于我们 URL
#define kAboutURL [NSString stringWithFormat:@"http://%@/wisdomschool/static/html/about-us.html",kHost]
// 常见问题 URL
#define kFAQURL [NSString stringWithFormat:@"http://%@/wisdomschool/static/html/question.html",kHost]

#define kBaseURL [NSString stringWithFormat:@"http://%@/wisdomschool/phone/",kHost]
#define kBaseURL1 [NSString stringWithFormat:@"http://%@/wisdomradio/phone/",kHost1]

// 电台接口地址
#define kRadioList [NSString stringWithFormat:@"%@radio/list?token=",kBaseURL]
#define kAlbumList [NSString stringWithFormat:@"%@album/list?token=",kBaseURL]
#define kProgramList [NSString stringWithFormat:@"%@program/list?token=",kBaseURL]
#define kOrgRadioList [NSString stringWithFormat:@"%@radio/organRadioList?token=",kBaseURL]
#define kCollectionList [NSString stringWithFormat:@"%@collection/list?token=",kBaseURL]
#define kCommentList [NSString stringWithFormat:@"%@comment/list?token=",kBaseURL]
#define kSetCommentLike [NSString stringWithFormat:@"%@comment/addLikeNum?token=", kBaseURL]
#define kSetSchoolAlbumSubcribe [NSString stringWithFormat:@"%@push/task/setTime?token=",kBaseURL]
#define kSchoolAlbumSubcribeList [NSString stringWithFormat:@"%@push/task/rss?token=",kBaseURL]

/// 少先队电台点击率
#define kProgramHitCount [NSString stringWithFormat:@"%@program/doClick",kBaseURL]

// 儿童电台接口
#define kGoodAlbumList [NSString stringWithFormat:@"%@tp/abum/getRecommendList?token=",kBaseURL1]
#define kChildrenRadioType [NSString stringWithFormat:@"%@tp/type/getTypes?token=",kBaseURL1]
#define kChildrenRadioAlbumListByType [NSString stringWithFormat:@"%@tp/abum/getListByType?token=",kBaseURL1]
#define kChildrenRadioProgramList [NSString stringWithFormat:@"%@tp/program/list?token=",kBaseURL1]
#define kChildrenRadioSubscribe [NSString stringWithFormat:@"%@tp/abum/collection/add?token=",kBaseURL1]
#define kChildrenRadioUnsubscribe [NSString stringWithFormat:@"%@tp/abum/collection/delete?token=",kBaseURL1]
#define kChildrenCollectionList [NSString stringWithFormat:@"%@tp/abum/collection/list?token=",kBaseURL1]
#define kSetChildrenAlbumSubcribe [NSString stringWithFormat:@"%@tp/push/task/setTime?token=",kBaseURL1]
#define kChildrenAlbumSubcribeList [NSString stringWithFormat:@"%@tp/push/task/rss?token=",kBaseURL1]
#define kChildrenHitCount [NSString stringWithFormat:@"%@tp/program/addCollection?token=",kBaseURL1] //添加节目的收藏、点赞、推送、播放记录

// 文件服务器地址
#define kDownloadUrl [NSString stringWithFormat:@"http://%@:28085/schcommonweb/weedfs/download/",kFileHost]
#define kUploadUrl [NSString stringWithFormat:@"http://%@:28085/schcommonweb/weedfs/upload/",kFileHost]

// 设备信息接口
#define kGetLocation [NSString stringWithFormat:@"%@client/getLocation?token=",kBaseURL]
// 向设备下发文件接口
#define kDowngoingFile [NSString stringWithFormat:@"%@tonben/downNewFile?token=",kBaseURL]
// 订阅收藏地址
#define kSubscribe [NSString stringWithFormat:@"%@collection/add?token=",kBaseURL]
// 取消订阅地址
#define kUnsubscribe [NSString stringWithFormat:@"%@collection/delete?token=",kBaseURL]
// 获取角色类型
#define kRoleType [NSString stringWithFormat:@"%@login/getType",kBaseURL]
// 获取考勤打卡列表
#define kAttendanceList [NSString stringWithFormat:@"%@attend/getAttends?token=",kBaseURL]
// 根据角色获取组织机构列表
#define kOrgListByRole [NSString stringWithFormat:@"%@organ/getOrgListByRole?token=",kBaseURL]
// 获取通知列表
#define kNoticeList [NSString stringWithFormat:@"%@notice/list?token=",kBaseURL]
// 获取通知类型
#define kNoticeType [NSString stringWithFormat:@"%@notice/listOfType?token=",kBaseURL]
// 发送校园通知
#define kSendNotice [NSString stringWithFormat:@"%@notice/add?token=",kBaseURL]
// 添加节目接口
#define kAddProgram [NSString stringWithFormat:@"%@program/add?token=",kBaseURL]
// 添加专辑接口
#define kAddAlbum [NSString stringWithFormat:@"%@album/add?token=",kBaseURL]
// 设置教师头像
#define kUpdateTeacherAvatar [NSString stringWithFormat:@"%@user/updateUserInfo?token=",kBaseURL]
// 设置用户头像
#define kUpdateUserAvatar [NSString stringWithFormat:@"%@parent/updateParentInfo?token=",kBaseURL]
// 获取设备配置信息（比如音量）
#define kDeviceConfig [NSString stringWithFormat:@"%@client/getTerminalConfig?token=",kBaseURL]
// 获取群成员信息
#define kQunMemberInfo [NSString stringWithFormat:@"%@student/getGroupChatMember?token=",kBaseURL]

//逆地理编码API服务地址：
#define kRegeoUrl @"http://restapi.amap.com/v3/geocode/regeo?"
