<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page errorPage = "/error/error_view.jsp" %>

<%@ page import = "java.sql.Timestamp" %>
<%@ page import = "java.io.File" %>
<%-- <%@ page import = "org.apache.commons.fileupload.FileItem" %> --%>

<%@ page import = "util.ImageUtil" %>
<%@ page import = "util.FileUploadUtil" %>

<%@ page import = "bean.ThemeBean" %>
<%@ page import = "dao.ThemeDaoImpl" %>
<%-- <%@ page import = "madvirus.gallery.ThemeManagerException" %> --%>

<%
    FileUploadUtil requestWrap = new FileUploadUtil(
        request, -1, -1,
        "C:\\jakarta-tomcat-5.0.19\\webapps\\chap18\\temp");
    HttpServletRequest tempRequest = request;
    /* request = requestWrap; */
%>
<jsp:useBean id="theme" class="bean.ThemeBean">
    <jsp:setProperty name="theme" property="*" />
</jsp:useBean>
<%
    /* FileItem imageFileItem = requestWrap.getFileItem("imageFile");
    String image = "";
    if (imageFileItem.getSize() > 0) {
        int idx = imageFileItem.getName().lastIndexOf("\\");
        if (idx == -1) {
            idx = imageFileItem.getName().lastIndexOf("/");
        }
        image = imageFileItem.getName().substring(idx + 1);
        
        // �̹����� ������ ��ο� ����
        File imageFile = new File(
            "C:\\jakarta-tomcat-5.0.19\\webapps\\chap18\\image",
            image);
        // ���� �̸��� �����̸� ó��
        if (imageFile.exists()) {
            for (int i = 0 ; true ; i++) {
                imageFile = new File(
                    "C:\\jakarta-tomcat-5.0.19\\webapps\\chap18\\image",
                    "("+i+")"+image);
                if (!imageFile.exists()) {
                    image = "("+i+")"+image;
                    break;
                }
            }
        }
        imageFileItem.write(imageFile);
        
        // ����� �̹��� ����
        File destFile = new File(
            "C:\\jakarta-tomcat-5.0.19\\webapps\\chap18\\image",
            image+".small.jpg");
        ImageUtil.resize(imageFile, destFile, 50, ImageUtil.RATIO);
    }
    
    theme.setRegister(new Timestamp(System.currentTimeMillis()));
    theme.setImage(image);
    
    ThemeDaoImpl manager = null; //ThemeDaoImpl.getInstance();
    manager.insert(theme); */
%>
<script>
alert("���ο� �̹����� ����߽��ϴ�.");
location.href = "list.jsp";
</script>