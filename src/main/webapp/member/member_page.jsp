<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import = "java.sql.*,java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원 전용</title>
<link rel="stylesheet" href="../resources/css/Main.css">
</head>
<body>

<TABLE border ='0' width='600' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade></TD>
	</TR>
</TABLE>
<TABLE cellSpacing='0' cellPadding='30' align='center' border='0'>
<%
try{
	String strUser="yes";
	String strSession = session.getAttribute("user").toString();
	if ( !strUser.equals(strSession)) {

%>
	<TR>
		<TD align='center'><Font size='2'>ログインしてください.</Font></TD>
	</TR>
	<TR>
		<TD align='center'><a href="../member/member_page.jsp">[ログイン]</TD>
	</TR>
<%
	}else {

%>
	<body>
    <div id="container">
        <header>
            <div id="logo">
                <a href="../member/member_page.jsp">
                    <h1><center>- IDALL -</center></h1>
                </a>
            </div>
            <div class="fixbar">
                <nav> 
                    <ul>
                        <br>
                        <li><a href="../goods/goods.jsp" class="leftmenu"><h1>GOODS</h1></a></li><br>
                        <li><a href="../Map/Map2.jsp" class="leftmenu"><h1>MAP</h1></a></li><br>
                        <li><a href="#" class="leftmenu"><h1>company</h1></a></li><BR>
                        
                    </ul>
                </nav>
            


            </div>
            <center >
                <div class="topmenu">
                    <ul>
                        <li class="topmenu_li" style="margin-left: 30px;"><a href="../search/search2.jsp">Search</a></li>
                       <li class="topmenu_li"><a href="../notice2/listboard.jsp">NOTICE</a></li>
						<li class="topmenu_li"><a href="../member/logout.jsp">로그아웃</a></li>
                    </ul>
                </div>
            </center>
        </header>
        
        <div id="slideShow">
            <div id="slides">
                <img src="../resources/images/itzy.jpg" alt="">
                <img src="../resources/images/itzy2.jpg" alt="">
                <img src="../resources/images/트와이스.jpg" alt="">
                <img src="../resources/images/트와이스2.jpg" alt="">
                <button id="prev">&lang;</button>
                <button id="next">&rang;</button>
            </div>
         </div>
        
         <center><h1 id="ARTIST">ARTIST</h1></center><br>
         <center><hr width="600" id="LINE"></center>
         
         <div id="p-color">

            <div id="contents">
                
                <ul>
                    <li><a href="./twice.jsp"><img class="profile" src="../resources/images/나연.png" alt="나연"><em>나연</em></a>&nbsp;&nbsp;
                    <a href="#"><img class="profile" src="../resources/images/아이린.jpeg" alt="아이린"><em>아이린</em></a>&nbsp;&nbsp;
                    <a href="#"><img class="profile" src="../resources/images/강혜원.jpg" alt="강혜원"><em>강혜원</em></a></li>
                </ul>
            </div><br><br>
            <div id="contents2">
                <ul>
                    <li><a href="#"><img class="profile" src="../resources/images/아이유.jpg" alt="아이유"><em>아이유</em></a>&nbsp;&nbsp;
                        <a href="#"><img class="profile" src="../resources/images/미연2.jpg" alt="미연"><em>미연&nbsp;</em></a>&nbsp;&nbsp;
                        <a href="#"><img class="profile" src="../resources/images/유나.jpg" alt="유나"> <em>유나&nbsp;</em></a>&nbsp;&nbsp;
                    </li>
    
    
    
    
                </ul>
               
            </div>
        </div>
            

        <footer style="text-align: center;">
            <br>
            <hr>
            <br>
             <font class="bottom" size=1> 회사소개&nbsp;&nbsp; 인재채용&nbsp;&nbsp; 제휴제안&nbsp;&nbsp; 이용약관&nbsp;&nbsp; <a href="goods/aaaa.jsp">재고관리</a>&nbsp;&nbsp;개인정보처리방침</font> <br><br>
             <font size=1>2021 COPYRIGHT @ 常勝CORP. ALL RIGHT RESERVED</font>
             
        
        
        
        </footer>
        



    </div>

	</TR>
<%
	}
	}catch(NullPointerException e){
%>
	<TR>
		<TD align='center'><font size='2'>ログインしてください.</font></TD>
	</TR>
	<TR>
		<TD align='center'><a href="member.jsp">[ログイン]</font></TD>
	</TR>
<%
}
%>
</center>
</TABLE>
    <script src="../resources/JS/Main.js"></script>
</body>
</html>