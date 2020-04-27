<%@page import="jdk.internal.org.objectweb.asm.tree.TryCatchBlockNode"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Gugudan.hsp</title>
</head>
<body>
	<h2>JSP로 구구단 출력하기</h2>
	<%!
	//Jsp내장객체는 스크립트릿 영역에서 function으로 보내줘야 선언부에서 사용 가능
	public void showGugudan(JspWriter out){
		try{
			out.println("<table border='1' width='700'>");
			for(int i=2 ; i<=9 ; i++){
				out.println("<tr>");
				for(int j=1; j<=9 ; j++){
					out.println("<td>" + i + "*" + j + "=" + (i*j) + "</td>");
					/* out.println("<td>");
					String str = String.format("%d * %d = %d", i, j, i*j);
					out.println(str);
					out.println("</td>"); */
				}
				out.println("</tr>");				
			}
			out.println("</table>");			
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}
	%>
	<h3>구구단 출력1 - 메소드로 구현</h3>
	<%
		showGugudan(out);
	%>
	
	<h3>구구단 출력2 - 표현식으로 구현</h3>
	<table border="1" width="700">
		<!-- 단에 해당하는 tr -->
		<%
		for(int i=2 ; i<=9 ; i++){		
		%>
		<tr>
			<%
			for(int j=1 ; j<=9 ; j++){			
				/* String str = String.format("%d*%d=%d", i, j, i*j); */
			%>			
			<!-- 수에 해당하는 td -->
			<td><%=i%>*<%=j%>=<%=(i*j)%></td>			
			<%
			}
			%>
		</tr>
		<%
		}
		%>	
	</table>
	
	
	
	
</body>
</html>