<#include "/common/commoncss.ftl">
<style type="text/css">
a {
	color: black;
}

a:hover {
	text-decoration: none;
}

.bgc-w {
	background-color: #fff;
}
.table>tbody>tr>td{
    border-top: 1px solid rgba(245, 245, 220, 0.29);
    }

</style>

<div class="row" style="padding-top: 10px;">
	<div class="col-md-2">
		<h1 style="font-size: 24px; margin: 0;" class="">菜单管理</h1>
	</div>
	<div class="col-md-10 text-right">
		<a href="index"><span class="glyphicon glyphicon-home"></span> 首页</a>
		> <a disabled="disabled">菜单管理</a>
	</div>
</div>

<div class="row" style="padding-top: 15px;">
	<div class="col-md-12">
		<!--id="container"-->
		<div class="bgc-w box box-primary">
			<!--盒子头-->
			<div class="box-header">
				<h3 class="box-title">
					<a href="menuedit" class="label label-success"
						style="padding: 5px;"> <span class="glyphicon glyphicon-plus"></span>
						新增
					</a>
					<a href="" class="label label-success" style="padding: 5px;margin-left:5px;">
						<span class="glyphicon glyphicon-refresh"></span> 刷新
					</a>
				</h3>
				<div class="box-tools">
					<div class="input-group" style="width: 150px;">
						<input type="text" class="form-control input-sm baseKey"
							placeholder="按名称查找" />
						<div class="input-group-btn">
							<a class="btn btn-sm btn-default baseKeySubmit"><span
								class="glyphicon glyphicon-search"></span></a>
						</div>
					</div>
				</div>
			</div>
			<!--盒子身体-->
			<div class="box-body no-padding thistable">
				<#include "menutable.ftl">
			</div>
			<!--盒子尾-->
		</div>
	</div>
</div>
<script>
	$('.baseKeySubmit').on('click',function(){
		var name=$('.baseKey').val();
		$('.thistable').load("menutable?name="+name);
	});
</script>