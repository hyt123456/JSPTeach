<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.3.6
Version: 4.5.5
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

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
		<#assign tb_12=true />
			<#assign tb_12_ul=true  />
			<#assign tb_12_li_1=true />
			<#assign tb_12_arrow=true />
		<#include "/admin_sys/left.jsp"/>
		<!-- END SIDEBAR -->
		<div class="page-content-wrapper">
			<!-- BEGIN CONTENT BODY -->
			<div style="min-height:1022px" class="page-content">
				<!-- page bar start -->
				<div class="page-bar">

					<ul class="page-breadcrumb">
						<li><a href="v_list.do">章类别</a> <i class="fa fa-angle-right"></i>
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
									<i class="fa fa-gift"></i>章类别
								</div>
								<div class="tools">
									<div class="dt-buttons">
										<a class="dt-button buttons-print btn white  btn-outline"
											href="v_list.do" tabindex="0"><span>返回</span> </a>
									</div>
								</div>
							</div>
							<div class="portlet-body form" style="display: block;">
								<!-- BEGIN FORM-->
								<form action="o_update.do" method="post" id="form_update"
									novalidate="novalidate"
									class="form-horizontal form-row-seperated">
									<input type="hidden" name="id" value="${chapter.id }" />
									<div class="form-body">
									<div class="form-body">
                                    <div class="alert alert-danger display-hide">
                                        <button class="close" data-close="alert"></button>
                                                                                                               请仔细检查输入的章的信息！
                                    </div>
                                    <#if errors??>
                                        <div class="alert alert-danger" role="alert">
                                            <button class="close" data-close="alert"></button>
                                            <#list errors as error> ${error}<br/></#list>
                                        </div>
                                    </#if>
                                </div>
										 
										<div class="form-group">
											<label class="control-label col-md-3">名称<span
												class="required" aria-required="true"> * </span> </label>

										<div class="col-md-9">
											<input type="text" name="name" id="name" class="form-control" value="${chapter.name!}">
										</div>
										</div>
										
										<div class="form-group">
											<label class="control-label col-md-3">优先级<span
												class="required" aria-required="true"> * </span> </label>
											<div class="col-md-9">
												<select name="priority" class="form-control" id="queryPriority">
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
													<option value="5">5</option>
													<option value="6">6</option>
													<option value="7">7</option>
													<option value="8">8</option>
													<option value="9">9</option>
													<option value="10">10</option>
												</select>

											</div>
										</div>
									</div>
									<div class="form-actions">
										<div class="row">
											<div class="col-md-offset-6 col-md-6">
												<button type="submit"  class="btn  btn-primary" >
													<i class="fa fa-check"></i> 提交
												</button>
											</div>
										</div>
									</div>
								</form>
								<!-- END FORM-->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- BEGIN CONTENT -->

<script type="text/javascript">
  $(function(){
	  $('#queryPriority').val('${chapter.priority}');
  });
</script>

		<#include "/admin_sys/common/bootAlert_message.jsop"/>
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
			<script src="${base}/res/assets/js/chapter_validation.js" type="text/javascript"></script>
           <script src="${base}/res/assets/global/plugins/jquery-validation/js/localization/messages_zh.js"></script>
           <script src="${base}/res/assets/global/plugins/jquery-validation/js/additional-methods.min.js" type="text/javascript"></script>
           <script type="text/javascript" src="${base}/res/assets/global/plugins/icheck/icheck.min.js"></script>
		
	</div>
	<!-- END CONTAINER -->
</body>

</html>