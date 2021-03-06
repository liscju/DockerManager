<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>DockerManager Containers</title>
  <%@ include file="/resources/html/includes.html" %>
  <link href="${pageContext.request.contextPath}/resources/css/main.css" rel="stylesheet"/>
  <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/containers_main.js"></script>
</head>
<body>
<%@ include file="/resources/html/menu.html" %>

<div class="container">
  <div class="starter-template">
    <h1>DockerManager</h1>

    <p class="lead">Container id: ${id}, container name: ${image}</p>
  </div>

	<form role="form" id="manage" method="post">
	  	<select name="action">
		    <option value="create">create image from container</option>
		    <option value="delete">remove container</option>
	  	</select>
	  	<input type="hidden" name="container_image" value="${image}"/>
	  	<input type="submit" value="Submit">
	</form>
	

    <table class="table">
      <thead>
      <tr>
        <th>Parameter</th>
        <th>Value</th>
      </tr>
      </thead>
      <tbody>
          <tr>
            <td>ID</td>
            <td>${imageS.id}</td>
          </tr>
          <tr>
            <td>Created</td>
            <td>${created}</td>
          </tr>
          <tr>
            <td>Size</td>
            <td>${imageS.size}</td>
          </tr>
      </tbody>
    </table>

    <form action="${pageContext.request.contextPath}/home/containers/run" method="POST">
      <h2>Run command in image</h2>
      <input type="hidden" name="container_image" value="${image}"/>
      <input type="text" name="command" placeholder="Place for your command"></input>
      <br>
      <input type="submit"/>
    </form>

</div>

</body>
</html>
