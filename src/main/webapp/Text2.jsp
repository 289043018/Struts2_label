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
	<!-- 相当于request.setAttribute("age","60") -->
	<!-- 向pageContext和request放入名称为age，值为60的信息。 -->
	<s:set name="age" value="60" />
	<%=request.getAttribute("age") %>
	<%=pageContext.getAttribute("age") %>
	<%=session.getAttribute("age") %>
	<%=application.getAttribute("age") %>
	<s:set name="age1" value="61"  scope="session" />
	<%=session.getAttribute("age1") %>
	
	<s:set name="bookList" value="{'斗牛','斗鱼'}"/>
	<s:set name="bookMap" value="#{'1':'斗牛','2':'斗鱼'}"/>
	<s:select label="书籍" list="#bookList"/>
	<s:select label="书籍map" list="#bookMap" listKey="key" listValue="value"/>
	
	<!-- 从request范围内寻找age的值 -->
	<s:property value="#age"/>
	<!--从session范围内寻找age的值  -->
	<s:property value="#session.age1"/>
	<!-- 从request范围内寻找booklist集合的数据 -->
	<s:property value="#bookList"/>
	<s:property value="#bookList[1]"/>
	<!-- 如果是集合里面放置一个对象类型，然后查找对象类型的某个属性 -->
<%-- 	<s:property value="#bookList.{对象名}[0]"/> --%>
	<!-- 查看map集合  -->
	<s:property value="#bookMap"/>
	<s:property value="#bookMap.keys"/>
	<s:property value="#bookMap.values"/>
	
	<s:set name="score" value="80"/>
	<!-- text内放置判断条件 -->
	<s:if test="#score>=60">
		及格
	</s:if>
	<s:elseif test="#score>30">
		学渣
	</s:elseif>
	<s:else>
		学渣..
	</s:else>
	<br>
	<!-- 使用迭代器循环遍历获取booklist的值，为它设置一个名字叫bookName -->
	<s:iterator value="#bookList" id="bookName">
		<s:property value="bookName"/>
	</s:iterator>]
	<!-- 遍历map的时候不同指定id，使用map中的key和value指定即可 -->
	<s:iterator value="#bookMap" >
		<s:property value="key"/>
		<s:property value="value"/><br>
	</s:iterator>
	
	<!-- 模拟从action中传递过来一个集合，集合中是对象 -->
	<%
		List<Em> list2 = new ArrayList<Em>();
		Em em1=new Em(1,"jky");
		Em em2=new Em(2,"jky2");
		Em em3=new Em(3,"jky3");
		Em em4=new Em(4,"jky4");
		Em em5=new Em(5,"jky5");
		
		list2.add(em1);
		list2.add(em2);
		list2.add(em3);
		list2.add(em4);
		list2.add(em5);
		
		request.setAttribute("list2", list2);
	
	%>
	
	<!-- 从request中获取list2的元素，并且为其取个别名叫em。begin是指定从第几个开始遍历，默认是从0开始。
	end是指定遍历到哪一个就结束。step指定的是每次遍历多少个，但是只会获得每次遍历的最后一个，在使用step属性的时候，需要使用begin，否则不会生效。-->
	<s:iterator value="#request.list2" var="em" status="st">
	<%--  begin="0" end="4" step="2" --%>
	<%-- status属性是查询该属性的状态，比如是否是第一个或者最后一个。 --%>
	<!-- value="#request.list2.{?this.eplId>2}"可以只遍历列表中属性值为eplId大于2的值“？”可以换成“^”或者“$” -->
	 <br>
	 	<s:if test="#st.index%2==0"><br></s:if>
	 	<!-- 当前的行号 -->
	 	当前的行号:<s:property value="#st.index"/>
	 	<!-- 当前是否是第一个元素 -->
	 	当前是否是第一个元素：<s:property value="#st.first" />
	 	<!-- 当前是否是最后一个元素 -->
	 	当前是否是最后一个元素:<s:property value="#st.last" />
	 	<!-- 当前是第几个元素 -->
	 	当前是第几个元素：<s:property value="#st.count" />
	 	<!-- 当前是否是奇数行 -->
	 	当前是否是奇数行：<s:property value="#st.odd" />
	 	<!-- 当前是否是偶数行 -->
	 	当前是否是偶数行：<s:property value="#st.even" />
		<s:property value="#em.eplId" />
		<s:property value="#em.username" />
	</s:iterator>
	
</body>
</html>