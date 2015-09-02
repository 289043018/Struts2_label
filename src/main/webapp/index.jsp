<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<s:form action="login" method="post">
		<s:textfield label="用户名" name="us.username" />
		<s:password label="密码" name="us.password" />
		<!-- 复选框 -->
		<s:checkboxlist name="hobby" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'看书'}"/>
		<!-- 单选框 -->
		<s:radio name="hobby2" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'看书'}"/>
		<!-- 下拉列表 -->
		<s:select name="hobby3" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'看书'}"/>
		<s:select name="hobby4" multiple="true" label="爱好" list="#{'1':'打篮球','2':'下棋','3':'看书'}"/>
		<!-- 文本框 -->
		<s:textarea name="text" label="简述" rows="22" clos="50"/>
		<!-- 级联下拉菜单 -->
		<s:doubleselect doubleList="top=='我爱西红柿'?{'斗破','修仙'}:{'斗鱼','斗牛'}" list="{'我爱西红柿','土豆'}" doubleName="auther" name=""/>
		
		<s:optiontransferselect 
		label="喜欢的书"
		name="cnbook"
		leftTitle="中文书籍"
		list="#{'1':'java编程思想','2':'企业实战'}" 
		listKey="Key"
		listValue="value"
		multiple="true"
		emptyOption="true"
		rightTitle="英文书籍"
		headerKey="cnKey"
		headerValue="请选择中文书籍"
		doubleList="#{'1':'my world','2':'apple'}" 
		doubleListKey="Key"
		doubleListValue="value"
		doubleHeaderKey="enKey"
		doubleHeaderValue="请选择英文书籍"
		doubleMultiple="true"
		doubleEmptyOption="true"
		doubleName="enbook"/>
		
		<s:submit value="提交"/>
	
	</s:form>
</body>
</html>