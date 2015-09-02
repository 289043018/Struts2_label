<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.hand.POJO.Dpt"%>
<%@page import="com.hand.POJO.Em"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	Map<Dpt,List<Em>> map = new HashMap<Dpt,List<Em>>();
	Dpt de1 = new Dpt(1,"采购部");
	Dpt de2 = new Dpt(2,"市场部");
	Dpt de3 = new Dpt(3,"营销部");
	List<Em> li1=new ArrayList<Em>();
	List<Em> li2=new ArrayList<Em>();
	List<Em> li3=new ArrayList<Em>();
	Em em1 = new Em(1,"张珊");
	Em em2 = new Em(2,"王五");
	Em em3 = new Em(3,"老刘");
	Em em4 = new Em(4,"麻子");
	Em em5 = new Em(5,"疙瘩");
	Em em6 = new Em(6,"老王");
	Em em7 = new Em(7,"小李");
	Em em8 = new Em(8,"啊黄");
	Em em9 = new Em(9,"旺财");
	li1.add(em1);
	li1.add(em2);
	li1.add(em3);
	li2.add(em4);
	li2.add(em5);
	li2.add(em6);
	li3.add(em7);
	li3.add(em8);
	li3.add(em9);
	
	map.put(de1,li1);
	map.put(de2,li2);
	map.put(de3,li3);
	
	request.setAttribute("map", map);
	%>
	<s:form action="doubleSelectPost" name="form1">  
	<s:doubleselect 
		formName="form1"
		label="业务员"
		list="#request.map.keySet()"
		name="DptId"
		id="comboId"
		listKey="DptId"
		listValue="DptName"
		doubleName="eplId"
		doubleId="comboDoubleId"
		doubleList="#request.map[top]"
		doubleListKey="eplId"
		doubleListValue="username"
	/>
	</s:form>
	
	
	
</body>
</html>