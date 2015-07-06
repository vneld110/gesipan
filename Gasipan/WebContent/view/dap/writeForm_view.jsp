<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import = "bean.ThemeBean" %>
<%@ page import = "dao.ThemeDaoImpl" %>
<%-- <%@ page import = "madvirus.gallery.ThemeManagerException" %> --%>
<%
    String parentId = request.getParameter("parentId");
    String title = "";
    ThemeBean theme = null;
    if (parentId != null) {
    	ThemeDaoImpl manager = null; //ThemeDaoImpl.getInstance();
        theme = null; //manager.select(Integer.parseInt(parentId));
        if (theme != null) {
            title = "re:"+theme.getTitle();
        }
    }
%>
<c:set var="theme" value="<%= theme %>" />
<script language="JavaScript">
function validate(form) {
    if (form.title.value == "") {
        alert("������ �Է��ϼ���.");
        return false;
    } else if (form.name.value == "") {
        alert("�̸��� �Է��ϼ���.");
        return false;
    } else if (form["parentId"] == null && form.imageFile.value == "") {
        alert("�̹��� ������ �����ϼ���.");
        return false;
    } else if (form.content.value == "") {
        alert("������ �Է��ϼ���");
        return false;
    }
}
</script>

<form action="write.jsp" method="post" enctype="multipart/form-data"
      onSubmit="return validate(this)">
<input type="hidden" name="level" value="${theme.level + 1}">
<c:if test="${! empty param.groupId}">
<input type="hidden" name="groupId" value="${param.groupId}">
</c:if>
<c:if test="${! empty param.parentId}">
<input type="hidden" name="parentId" value="${param.parentId}">
</c:if>
<table width="100%" border="1" cellpadding="1" cellspacing="0">
<tr>
    <td>����</td>
    <td><input type="text" name="title" size="40" value="<%= title %>"></td>
</tr>
<tr>
    <td>�̸�</td>
    <td><input type="text" name="name" size="10" value=""></td>
</tr>
<tr>
    <td>�̸���</td>
    <td><input type="text" name="email" size="10" value=""></td>
</tr>
<tr>
    <td>��ȣ</td>
    <td><input type="password" name="password" size="10" value=""></td>
</tr>
<tr>
    <td>�̹���</td>
    <td><input type="file" name="imageFile"></td>
</tr>
<tr>
    <td>����</td>
    <td><textarea name="content" cols="40" rows="8"></textarea></td>
</tr>
<tr>
    <td colspan="2"><input type="submit" value="���"></td>
</tr>
</table>

</form>