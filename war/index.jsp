<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
	 <script>
		function upload() {
    	 
    	//make some field validation
		
        document.getElementById("form1").submit();
        }
	</script>
        <title>Upload Test</title>
    </head>
    <body>
    	<p>After you submit a file, the file is automatically downloaded</p>
    	<p>to re-submit a file, please hit "refresh" button</p>
        <form action="<%= blobstoreService.createUploadUrl("/upload") %>" method="post" enctype="multipart/form-data" id="form1">
            <input type="text" name="foo">
            <input type="file" multiple="true" name="files">
            <input type="text" name="description">
            <input id="button" type="button" onclick="upload()" value="Submit">
        </form>
        
        <form action="/" method="get">
            <input type="submit" value="refresh">
        </form>
        
    </body>
</html>
