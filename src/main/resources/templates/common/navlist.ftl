<div class="col-md-12 green" >
	<div class="modal fade"  id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
<#--			<div class="modal-content">-->
<#--				<div class="modal-header">-->
<#--					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>-->
<#--					<h4 class="modal-title">捐赠【OASYS】 </h4>-->
<#--				</div>-->
<#--				<div class="modal-body" style="text-align: center;">-->
<#--					<h4>项目的发展离不开您的支持，请作者喝杯咖啡吧！</h4>-->
<#--					<div style="display: inline-block">-->
<#--						<h4>支付宝</h4>-->
<#--						<img src="http://pic.yupoo.com/felixluo/93036494/9a0646aa.jpeg" alt="zhifubao.jpeg" width="150"  align=center />-->
<#--					</div>-->
<#--					<div style="display: inline-block;margin: 0px 20px 0 20px;">-->
<#--						<h4>微信</h4>-->
<#--						<img src="http://pic.yupoo.com/felixluo/66100130/455e5d47.jpeg" alt="weichat.jpeg" width="150"  align=center />-->
<#--					</div>-->
<#--					<div style="display: inline-block;">-->
<#--						<img  src="http://pic.yupoo.com/felixluo/dd33c805/fb3b68c1.jpeg" alt="me.jpeg"  width="150"  align=center />-->
<#--					</div>-->
<#--					<div style="    display: inline-block;    border-left: 2px solid green;    padding: 10px 5px;">-->
<#--						捐赠 <span style="    background-color: #009688;    color: #ffffff;    padding: 0 6px; border-radius: 2px;">9.9元</span>-->
<#--						,可获得作者手把手教你本地运行与部署。请扫码加我好友，备注:-->
<#--						<span style="    background-color: #009688;    color: #ffffff;    padding: 0 6px; border-radius: 2px;">help</span>-->
<#--					</div>-->
<#--				</div>-->
<#--				<div class="modal-footer">-->
<#--					<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>-->
<#--				</div>-->
<#--			</div><!-- /.modal-content &ndash;&gt;-->
		</div><!-- /.modal-dialog -->
	</div><!-- /.modal -->
	<!--导航栏左侧按钮，-->
	<ul class="nav navbar-nav navbar-left" style="margin-left: -15px;">
		<li><a href="#" class="green-none white"><span
				class="glyphicon glyphicon-menu-hamburger"></span></a></li>
	</ul>
	<!--右侧导航栏-->
	<ul class="nav navbar-nav navbar-right moredeep">
		<li><a href="javascript:changepath('/infromlist');" class="green-none white"><span
				class="glyphicon glyphicon-bell"></span>
				<#if notice==0>
					<span class="badge blue-badge badge-notice"></span>
				<#else>
					<span class="badge blue-badge badge-notice">${(notice)!''}</span>
				</#if>
				</a>
		</li>
		<li><a href="javascript:changepath('/mail');" class="green-none white"><span
				class="glyphicon glyphicon-envelope"></span>
				<#if mail==0>
					<span class="badge yellow-badge badge-mail"></span>
				<#else>
					<span class="badge yellow-badge badge-mail">${(mail)!''}</span>
				</#if>
				</a>
		</li>
		<li><a href="javascript:changepath('/mytask');" class="green-none white"><span
				class="glyphicon glyphicon-flag"></span>
				<#if task==0>
					<span class="badge red-badge"></span>
				<#else>
					<span class="badge red-badge">${(task)!''}</span>
				</#if>
				</a>
		</li>
		<li class="dropdown">
		<!--设置导航栏头像面板--> 
		<a href="#" class="green-none white" data-toggle="dropdown">
				<img src="/image/${(user.imgPath)!'/timg.jpg'}" class="user-image" /> <span>${user.userName}</span>
		</a> <!--设置点击按钮弹出用户面板层-->
			<ul class="dropdown-menu" style="padding:0;">
				<li class="user-header green"><img src="/image/${(user.imgPath)!'/timg.jpg'}"
					class="img-circle" style="width: 100px;height:100px;" />
					<p class="white" style="">
						<span>${user.dept.deptName} </span> / <span> ${user.role.roleName}</span><br> <small>${user.position.name}</small>
					</p></li>
				<li class="user-footer">
					<div class="pull-left">
						<a href="javascript:changepath('userpanel');" class="btn btn-default">用户面板</a>
					</div>
					<div class="pull-right">
						<a href="loginout" class="btn btn-danger">退出登录</a>
					</div>
				</li>
			</ul>
		</li>

		<li style="position: relative;"><a  id="history" class="green-none white" data-toggle="dropdown"><span
				class="glyphicon glyphicon-time"></span></a>
				
		<ul id="historypanel" class="dropdown-menu"
				style="position: absolute; background-color: #222d32;">
				<#include "/user/userlog.ftl"/>
		</ul>
	</li>
</ul>
</div>
<script>
	function changeemail(){
		var email=$('.badge-mail').text().trim();
		var emailNum=parseInt(email);
		if(emailNum>1){
			$('.badge-mail').text((emailNum-1));
		}else{
			$('.badge-mail').text("");
		}
	}
	function changeinformation(){
		var email=$('.badge-notice').text().trim();
		var emailNum=parseInt(email);
		if(emailNum>1){
			$('.badge-notice').text((emailNum-1));
		}else{
			$('.badge-notice').text("");
		}
	}
	//从右往左滑动效果
	$(function() {
		var num = 1;
		$("#history").click(function() {
			num++;
			if (num % 2 == 0) {
				$("#historypanel").css({ //从右边飞入，使用绝对定位来操作 
					"width" : "230px",
					"right" : "-230px"
				}).show().animate({
					"right" : "0"
				}, "fast");
			} else
				$("#historypanel").animate({
					"width" : "toggle"
				}, "slow");
			$('#historypanel').load('/userlogs');

		})
	})
</script>