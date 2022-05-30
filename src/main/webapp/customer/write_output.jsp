<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type='text/css'></style>
<style>
.button {
	background-color: #2faeff;
	color: white;
	font-size: 22px;
	border: none;
	cursor: pointer;
}
.button:hover {
	background: black;
	opacity: 0.5;
}
</style>
</head>
<body>
<%
String num = request.getParameter("num");

/* 오라클 연동 코드
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection(
   "jdbc:oracle:thin:@localhost:1521:XE",
   "scott","nsu");
*/

Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/kmove" ;
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/kmove", "root", "11111111");

PreparedStatement pstmt = null;
ResultSet rs = null;

try {
	String strSQL = "SELECT * FROM kmc WHERE NUM = ?";
	pstmt = conn.prepareStatement(strSQL);
	pstmt.setInt(1, Integer.parseInt(num));
	
	rs = pstmt.executeQuery();
	rs.next();

	String name = rs.getString("name");
	String title = rs.getString("title");
	String text = rs.getString("text").trim();
	String writedate = rs.getString("writedate");
	int readcout = rs.getInt("readcount");
   %>
   <center><font size='3'><b> 게시판 </b></font>
   <table border='0' width='600' cellpadding='0' cellspacing='0' >
      <tr>
         <td><hr size='1' noshade>
         </td>
      </tr>
   </table>
   <table border='0' width='600' bgcolor=>
      <tr>
      <td align='left'><font size='2'> 번호 : <%=num %></font></td>
         <td align='left'>
         <font size='2'> 작성자 : <%=name %></font>
         </td>
         
         <td align=right>
         <font size='2'> 작성일 : <%=writedate %>, 조회수 : <%=readcout %></font> 
         </td>
      </tr>
   </table>
   
   <table border='0' cellspacing=3 cellpadding=3 width='600'>
      <tr bgcolor='#2faeff'>
         <td align='center'>
         <font size='3'><b><%=title %></b></font>
         </td>
      </tr>
   </table>
   <table border='0' cellspacing=5 cellpadding=10 width='600'>
      <tr bgcolor='ededed'>
         <td><font size='2' color=''><%=text %></font>
         </td>
      </tr>
   </table>
   <table border='0' width='600'>
      <tr>
         <td align='right'>
         <font size='2'><br><font size='2'></font></font>
         </td>
      </tr>
   </table>
   <table border='0' width='600' cellpadding='0' cellspacing='0'>
      <tr>
         <td><hr size='1' noshade>
         </td>
      </tr>   
   </table>
   <table border='0' width='600'>
      <tr>
         <td align='right'>
            <button class="button" value="글쓰기" onclick="location.href='write.jsp'">글쓰기</button>
            <button class="button" value="목록보기" onclick="location.href='listboard.jsp'">목록보기</button>
            <button class="button" value="수정하기" onclick="location.href='modify_pass.jsp?num=<%=num %>'">수정하기</button>
            <button class="button" value="삭제하기" onclick="location.href='delete_pass.jsp?num=<%=num %>'">삭제하기</button>
            
         </td>
      </tr>
      <%
      strSQL = "UPDATE kmc SET readcount=readcount+1 WHERE num = ?";
      pstmt = conn.prepareStatement(strSQL);
      pstmt.setInt(1, Integer.parseInt(num));
      pstmt.executeUpdate();
}catch(SQLException e){
   out.print("SQL 에러"+ e.toString());
}catch(Exception ex){
   out.print("JSP에러 " + ex.toString());
}finally{
   rs.close();
   pstmt.close();
   conn.close();
}

%>
</table>
</body>
</html>