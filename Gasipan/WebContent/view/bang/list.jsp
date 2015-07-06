<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "dao.BangDaoImpl" %>
<%@ page import = "bean.BangBean" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%@ page errorPage = "/error.jsp" %>
<%!
    int PAGE_SIZE = 10;
    SimpleDateFormat formatter = 
        new SimpleDateFormat("yyyy-MM-dd HH:mm");
%>

<%
    String pageNum = request.getParameter("num");
    if (pageNum == null) {
        pageNum = "1";
    }
    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * PAGE_SIZE + 1;
    int endRow = currentPage * PAGE_SIZE;
    int count = 0;
    
    List bookList = null;
    BangDaoImpl manager = null;
    count = 0;
    
    if (count > 0) {
        bookList = null;
    }
%>
<html>
<head><title>�۸��</title></head>
<body>
<center>
<table width="100%">
<tr>
    <td>
    <a href="writeForm.jsp">�۾���</a>
    </td>
</table>

<%
    if (count == 0) {
%>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td bgcolor="#e9e9e9">
    ���Ͽ� ����� ���� �����ϴ�.
    </td>
</table>

<%  } else {    %>
<table width="100%" border="1" cellpadding="0" cellspacing="0">
<%
        for (int i = 0 ; i < bookList.size() ; i++) {
        	BangBean book = null;
%>
<tr>
    <!-- ����¡ ó�� -->
</tr>
<tr>
    <td>����</td>
</tr>
<%      }   %>
</table>
<%  }   %>

<%
    if (count > 0) {
        int pageCount = count / PAGE_SIZE + ( count % PAGE_SIZE == 0 ? 0 : 1);
        int startPage = currentPage / PAGE_SIZE + 1;
        int endPage = startPage + 10;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > 10) {    %>
        <a href="list.jsp?num=<%= startPage - 10 %>">[����]</a>
<%      }
        for (int i = startPage ; i <= endPage ; i++) {  %>
        <a href="list.jsp?num=<%= i %>">[<%= i %>]</a>
<%
        }
        if (endPage < pageCount) {  %>
        <a href="list.jsp?num=<%= startPage + 10 %>">[����]</a>
<%
        }
    }
%>
</center>
</body>
</html>