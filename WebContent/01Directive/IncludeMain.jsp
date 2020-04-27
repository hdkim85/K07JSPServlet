<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%--
	include 지시어 : 공통으로 사용할 jsp파일을 생성한 후
		현재문서에 포함시킬때 사용한다. 각각의 jsp파일 상단에는
		반드시 page 지시어(Directive)가 삽입되어야 한다.
		
		※ 단, 하나의 jsp파일에는 page지시어가 중복되어서는 안된다.
 --%>
<%@ include file="IncludePage.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IncludeMain.jsp</title>
<!-- CSS코드는 양이 많으므로 외부파일로 선언하여 현재문서에 링크시킨다. -->
<link rel="stylesheet" href="./css/div_layout.css" />
</head>
<body>
	<div class="AllWrap">
		<div class="header">
		<!-- GNB영역(Global Navigation Bar) - 전체공통메뉴 -->
		<%@ include file="../common/Top.jsp" %>
		</div>
		<div class="body">
			<div class="left_menu">
			<!-- LNB영역(Local Navigation Bar) - 로컬메뉴 -->
			<%@ include file="../common/Left.jsp" %>
			</div>
			<div class="contents">
			
			<!-- Contents 영역 -->
			<%--
			해당 변수는 외부파일에 선언하여 본 문서에 include처리되었다.
			include는 문서자체를 포함시키는 개념이므로 에러가 발생하지
			 않는다.
			 --%>
			<h2>오늘의 날짜: <%=todayStr %></h2>
				<br /><br /> 
				
				안내 JTBC 뉴스는 여러분의 생생한 제보를 기다리고 있습니다. 크게작게 프린트 메일 URL
				<br />
				줄이기페이스북트위터 닫기 [앵커] 코로나 때문에 무급휴직을 하게 된 직장인들은 오늘(27일)부터 고용노동부에서 지원금을
				<br />
				신청할 수 있습니다. 3개월 동안 150만 원을 받습니다. 대학생 학자금 대출 금리도 내려갑니다. 송승환 기자입니다.
				<br />
				[기자] 최근 온라인 커뮤니티에선 회사로부터 무급휴직을 통보받은 직장인들 하소연이 늘었습니다. 월세나 통신비 같은 돈은
				<br />
				그대로 나가는데 갑자기 소득이 끊기자 생계유지가 어렵다는 것입니다. 이런 경우 고용노동부에서 '무급휴직 신속 지원금'을
				<br />
				받을 수 있습니다. 한 명당 한 달에 50만 원씩 3개월 동안입니다. 신청은 사업주가 해야 하는데 지원금은 정부가
				<br />
				노동자에게 직접 줍니다. 신청을 독려하기 위해 사업주의 부담도 줄였습니다. 기존에는 유급휴직을 통해 고용을 유지한 기간이
				<br />
				있어야만 무급휴직 지원금을 신청할 수 있었습니다.
				<br /><br />


			</div>
		</div>
		<div class="copyright">
	<!-- Copyright -->
		<%@ include file="../common/Copyright.jsp" %>
	</div>
	</div>
	
</body>
</html>