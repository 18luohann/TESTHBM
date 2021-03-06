<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="/WEB-INF/jsp/common/meta.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>权限管理</title>
</head>
<body>
   <div data-options="title:'权限关联设置',border:false" style="padding: 0px; height: 100%">
       <table fit=true id="mainAttachAuthJoin_grid" class="" pageSize="${defaultPageSize}" pageList="${defaultPageList}"
            toolbar="#mainAttachAuthJoin_toolbar" showFooter=true  pagination="true"
           fitColumns=true
           data-options="">
           <thead>
               <tr>
               	   <th data-options="field:'authJoinId',checkbox:true"></th>
               	   <c:if test="${type == '1' }">
	                   <th data-options="field:'attachSysAuth.authName',width:150">名称</th>
	                   <th data-options="field:'attachSysAuth.authCode',width:100">编码</th>
	                   <th data-options="field:'attachSysAuth.uri',width:120">URI</th>
	                   <th data-options="field:'attachSysAuth.descr',width:120">描述</th>
               	   </c:if>
               	   <c:if test="${type == '2' }">
	                   <th data-options="field:'mainSysAuth.authName',width:150">名称</th>
	                   <th data-options="field:'mainSysAuth.authCode',width:100">编码</th>
	                   <th data-options="field:'mainSysAuth.uri',width:120">URI</th>
	                   <th data-options="field:'mainSysAuth.descr',width:120">描述</th>
               	   </c:if>
               </tr>
           </thead>
       </table>
       <div id="mainAttachAuthJoin_toolbar" tag=listen_hotkey>
           <table class="table_form_result">
		        <caption>
		            <a href="javascript:void(0);" class="a_btn_blue" tag="attachAuthJoin"><em>管理</em></a>
		            <a href="javascript:void(0);"  class="a_btn_red" tag="del"><em>删除</em></a>
		            <a href="javascript:void(0);"  class="a_btn_gray" tag="clear"><em>清空查询</em></a>
		        </caption>
	       </table>
       </div>
   </div>
   	<script type="text/javascript">
   		var mainAttachAuthJoin_type ='${type}';
   	</script>
    <script type="text/javascript"
        src="${ctx}/static/js/sys/auth/mainAttachAuthJoin_view.js?jsTimer=${jsTimer}"></script>
</body>
</html>