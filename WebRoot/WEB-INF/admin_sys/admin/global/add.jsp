<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>JSP教学管理系统</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<#include "/admin_sys/head.jsp"/>
<link type="text/css" rel="stylesheet" href="${base}/res/assets/global/plugins/icheck/skins/all.css">
</head>
<!-- END HEAD -->

<body
	class="page-header-fixed page-sidebar-closed-hide-logo page-container-bg-solid page-md">
	<!-- BEGIN HEADER -->
	<#include "/admin_sys/top.jsp"/>
	<!-- END HEADER -->
	<!-- BEGIN HEADER & CONTENT DIVIDER -->
	<div class="clearfix"></div>
	<!-- END HEADER & CONTENT DIVIDER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<#assign tb_15=true />
			<#assign tb_15_ul=true  />
			<#assign tb_15_li_1=true />
			<#assign tb_15_arrow=true />
		<#include "/admin_sys/left.jsp"/>
		<!-- END SIDEBAR -->
		<div class="page-content-wrapper">
			<!-- BEGIN CONTENT BODY -->
			<div style="min-height:1022px" class="page-content">
				<!-- page bar start -->
				<div class="page-bar">

					<ul class="page-breadcrumb">
						<li><a href="v_list.do">用户管理</a> <i class="fa fa-angle-right"></i>
						</li>
						<li><span>添加</span>
						</li>
					</ul>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption">
									<i class="fa fa-gift"></i>添加用户信息
								</div>
								<div class="actions">
									<a class="dt-button buttons-print btn white  btn-outline"
											href="v_list.do" tabindex="0"><span>返回</span> </a>
								</div>
							</div>
							<div class="portlet-body form" style="display: block;">
								<!-- BEGIN FORM-->
								<form action="o_save.do" method="post" id="form_save"
									novalidate="novalidate"
									class="form-horizontal form-row-seperated">
									<div class="form-body">
										<div class="alert alert-danger display-hide">
											<button class="close" data-close="alert"></button>
											请仔细检查输入的用户信息！
										</div>
										<#if errors??>
										<div class="alert alert-danger" role="alert"">
											<button class="close" data-close="alert"></button>
											<#list errors as error> ${error}<br /> </#list>
										</div>

										</#if>
										<div class="form-group">
											<label class="control-label col-md-3">用户名<span
												class="required" aria-required="true"> * </span> </label>

											<div class="col-md-9">
												<input type="text" name="username"
													 class="form-control">
											</div>
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">真实姓名<span
												class="required" aria-required="true"> * </span> </label>

											<div class="col-md-9">
												<input type="text" name="realname"
													" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">密码<span
												class="required" aria-required="true"> * </span></label>

											<div class="col-md-9">
												<input type="text" id="password" name="password" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">确认密码 <span
												class="required" aria-required="true"> * </span></label>

											<div class="col-md-9">
												<input type="text" name="configPwd" class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">等级<span
												class="required" aria-required="true"> * </span> </label>

											<div class="col-md-9">
												<input type="text" name="rank" value="${currRank-1}"
													class="form-control">
											</div>
										</div>
										<div class="form-group">
											<label class="control-label col-md-3">性别</label>

											<div class="col-md-8">
												<div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label class="">
                                                                  <input type="radio" data-radio="iradio_square-blue" class="icheck" checked="checked" name="gender" value="true" >男</label>
                                                              <label class="">
                                                                   <input type="radio" data-radio="iradio_square-blue" class="icheck"  name="gender" value="false" > 女</label>
                                                                        </div>
                                                           </div>
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-3 control-label">禁用<span
												class="required" aria-required="true"> * </span> </label>
											
											<div class="col-md-8">
												<div class="input-group">
                                                        <div class="icheck-inline">
                                                            <label class="">
                                                                  <input type="radio" data-radio="iradio_square-blue" class="icheck"  name="disabled" value="true" >是</label>
                                                              <label class="">
                                                                  <input type="radio" data-radio="iradio_square-blue" class="icheck" checked="checked" name="disabled"  value="false" ">否</label>
                                                           </div>
                                                    </div>
											</div>
										</div>


										<div class="form-group">
											<label class="control-label col-md-3">角色<span
												class="required" aria-required="true"> * </span> </label>

											<div class="col-md-9">
												<select name="roleId" class="form-control">
													<option value="3"
														selected="selected">装柜人员</option>
													<option value="2">业务员</option>
													<option value="1">管理员</option>
												</select>

											</div>
										</div>


										<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-6 col-md-6">
												<button type="submit"  class="btn  btn-primary" >
													<i class="fa fa-check"></i> 添加
												</button>
											</div>
										</div>
									</div>
								</form>
									</div>
									
								<!-- END FORM-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- BEGIN CONTENT -->

		<#include "/admin_sys/common/bootAlert_message.jsp"/>
		<!-- END CONTENT -->
		<script
			src="${base}/res/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"
			type="text/javascript"></script>
		<script
			src="${base}/res/assets/global/plugins/jquery-validation/js/localization/messages_zh.js"></script>
		<script
			src="${base}/res/assets/global/plugins/jquery-validation/js/additional-methods.min.js"
			type="text/javascript"></script>
			<script type="text/javascript" src="${base}/res/assets/global/plugins/icheck/icheck.min.js"></script>
				<script src="${base}/res/assets/js/admin-global-validation.js"
			type="text/javascript"></script>
	</div>
	<!-- END CONTAINER -->
</body>

</html>