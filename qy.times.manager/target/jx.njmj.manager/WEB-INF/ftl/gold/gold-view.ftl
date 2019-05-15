<!DOCTYPE HTML>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />
		<LINK rel="Bookmark" href="/favicon.ico">
		<LINK rel="Shortcut Icon" href="/favicon.ico" />
		<!--[if lt IE 9]>
	<script type="text/javascript" src="lib/html5.js"></script>
	<script type="text/javascript" src="lib/respond.min.js"></script>
	<script type="text/javascript" src="lib/PIE_IE678.js"></script>
	<![endif]-->
		<link rel="stylesheet" type="text/css" href="${base}/static/h-ui/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="${base}/lib/Hui-iconfont/1.0.8/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="${base}/lib/icheck/icheck.css" />
		<link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/skin/default/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="${base}/static/h-ui.admin/css/style.css" />
		<!--[if IE 6]>
	<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
	<script>DD_belatedPNG.fix('*');</script>
	<![endif]-->
		<!--/meta 作为公共模版分离出去-->

		<title>添加用户 - H-ui.admin v2.3</title>
		<meta name="keywords" content="H-ui.admin v2.3,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
		<meta name="description" content="H-ui.admin v2.3，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
	</head>
	<style>
		#preview {
			width: 100px;
			height: 100px;
			overflow: hidden;
		}
		
		#preview img {
			width: 100%;
			height: 100%;
		}
		
		.Huifold .item{ position:relative}
		.Huifold .item h4{margin:0;font-weight:bold;position:relative;border-top: 1px solid #fff;font-size:15px;line-height:22px;padding:7px 10px;background-color:#eee;cursor:pointer;padding-right:30px}
		.Huifold .item h4 b{position:absolute;display: block; cursor:pointer;right:10px;top:7px;width:16px;height:16px; text-align:center; color:#666}
		.Huifold .item .info{display:none;padding:10px}
	</style>

	<body>
		<input type="hidden" value="${base}" id="base" name="base" />
		<input type="hidden" value="${contextPath}" id="contextPath" name="contextPath" />
		<article class="page-container">
			<form method="post" class="form form-horizontal" id="form-gold-edit" action="${base}/goldRecord/edit.do">
				<div class="Huialert Huialert-success"><i class="icon-remove"></i>金币交易详情</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">序号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.id}" id="id" name="id" readonly style="background:#eaeae3;">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">成员ID：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.memberId}" id="memberId" name="memberId" readonly style="background:#eaeae3;">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">交易金额：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.amount}" id="amount" name="amount" readonly style="background:#eaeae3;">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">交易后金额：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.after}" id="after" name="after" readonly style="background:#eaeae3;">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">创建时间：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.createTime}" id="createTime" name="createTime" readonly style="background:#eaeae3;">
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">备注：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<textarea name="remark" cols="" rows="" class="textarea" readonly style="background:#eaeae3;">${goldRecord.remark}</textarea>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">交易类型：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<span class="select-box" style="width:150px;">
							<select class="select" id="type" name="type" disabled style="background:#eaeae3;">
								<option value="1">转入</option>
								<option value="2">转出</option>
								<option value="3">胡牌</option>
								<option value="4">明杠</option>
								<option value="5">暗杠</option>
							</select>
						</span>
					</div>
				</div>
				<div class="row cl">
					<label class="form-label col-xs-4 col-sm-3">房间号：</label>
					<div class="formControls col-xs-8 col-sm-9">
						<input type="text" class="input-text" value="${goldRecord.roomId}" id="roomId" name="roomId" readonly style="background:#eaeae3;">
					</div>
				</div>
				<br />
				<div class="line"></div>
				<div class="row cl">
					<div class="col-xs-6 col-sm-6 col-xs-offset-6 col-sm-offset-6">
						<input onClick="layer_close();" class="btn btn-primary  radius" type="button" value="&nbsp;&nbsp;关闭&nbsp;&nbsp;">
					</div>
				</div>
			</form>
		</article>
		<!--_footer 作为公共模版分离出去-->
		<script type="text/javascript" src="${base}/lib/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="${base}/lib/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="${base}/lib/icheck/jquery.icheck.min.js"></script>
		<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/jquery.validate.js"></script>
		<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/validate-methods.js"></script>
		<script type="text/javascript" src="${base}/lib/jquery.validation/1.14.0/messages_zh.js"></script>
		<script type="text/javascript" src="${base}/static/h-ui/js/H-ui.js"></script>
		<script type="text/javascript" src="${base}/static/h-ui.admin/js/H-ui.admin.js"></script>
		<script type="text/javascript" src="${base}/static/ajaxfileupload.js"></script>
		<!--/_footer /作为公共模版分离出去-->

		<!--请在下方写此页面业务相关的脚本-->
		<script>
			$(document).ready(function() {
				$('#type').val(${goldRecord.type});
				var createTime = getNowFormatDate(${goldRecord.createTime});
				$('#createTime').val(createTime);
				$("input:not(:button,:hidden)").prop("disabled", "disabled");
			});
			
			$("#form-gold-edit").validate({
				rules: {
					amount: {
						required: true,
					},
					after: {
						required: true,
					},
					remark: {
						required: true,
					},
					type: {
						required: true,
					},
					roomId: {
						required: true,
					},
				},
				messages: {
					amount: "请输入-交易金额 ",
					after: "请输入-交易后金额 ",
					remark: "请输入-备注 ",
					type: "请选择-交易类型 ",
					roomId: "请输入-房间号 ",
				},
				success: "valid",
				submitHandler: function(form) {
					$.ajax({
						'cache': false,
						'type': "POST",
						'url': '${base}/goldRecord/edit.do',
						'data': $('#form-gold-edit').serialize(),
						'error': function(request) {
							layer.alert('保存失败!');
						},
						'success': function(data) {
							if(data.errorCode == 0) {
								window.parent.location.reload();
							} else {
								layer.alert(data.errorInfo);
							}
						}
					});
				}
			});
			
			 function getNowFormatDate(lastLoginTime) {
			//debugger;
				lastLoginTime = lastLoginTime * 1000;
				var date = new Date(lastLoginTime);
				var seperator1 = "-";
				var seperator2 = ":";
				var month = date.getMonth() + 1;
				var strDate = date.getDate();
				var strMin = date.getMinutes();
				var strSec = date.getSeconds();
				if(month >= 1 && month <= 9) {
					month = "0" + month;
				}
				if(strDate >= 0 && strDate <= 9) {
					strDate = "0" + strDate;
				}
				if(strMin >= 0 && strMin <= 9){
					strMin = "0" +strMin;
				}
				if(strSec >= 0 && strSec <= 9){
					strSec = "0" +strSec;
				}
				var cTime = date.getFullYear() + seperator1 + month + seperator1 + strDate +
					" " + date.getHours() + seperator2 + strMin +
					seperator2 + strSec;
				return cTime;
			}
	  
		</script>
		<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>