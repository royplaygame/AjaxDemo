<%@page import="org.apache.commons.fileupload.FileUploadBase"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		String fileUploadPath = "D://";
		String fileUploadPath1 = application.getRealPath("/upload");
		String fileUploadPath2 = request.getSession().getServletContext().getRealPath("/upload");
		String fileUploadPath3 = request.getServletContext().getRealPath("/upload");
		out.println(fileUploadPath1 + "<br/>");
		out.println(fileUploadPath2 + "<br/>");
		out.println(fileUploadPath3 + "<br/>");

		DiskFileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		// 设置最大上传文件大小
		try{
			upload.setSizeMax(1024*10);
			List<FileItem> items = upload.parseRequest(request);
			for (FileItem item : items) {
				if (item.isFormField()) {
					out.println(item.getString() + "上传了一个文件<br/>");
				} else {
					File saveFile = new File(fileUploadPath, item.getName());
					// 控制上传文件类型
					List<String> fileType = Arrays.asList("jpg", "png", "gif");
					String suffer = item.getName().substring(item.getName().indexOf(".") + 1);
					if (fileType.contains(suffer)) {
						item.write(saveFile);
						out.println("上传成功后的文件名称是：" + item.getName());
					} else {
						out.println("文件的类型不正确，请重新选择!   可以选择的文件类型有："+fileType);
					}

				}
			}
		}catch(FileUploadBase.SizeLimitExceededException ex){
		    out.print("上传失败，文件太大，全部文件的最大限制是：" +upload.getSizeMax() + "bytes!");
		}
	%>
</body>
</html>