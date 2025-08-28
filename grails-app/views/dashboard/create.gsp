<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 12/08/25
  Time: 15.10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet src="main.css"/>
    <meta name="layout" content="main"/>
    <title>Add New Website</title>
</head>

<body>
<div class="create-site">
    <h2>Add New Website</h2>

    <g:form controller="dashboard" action="save" method="POST">
        <label>Website Name:</label><br/>
        <div class="input-create">
            <g:textField name="name" required="true"/><br/><br/>
            <label>URL:</label><br/>
            <g:textField name="url" required="true"/><br/><br/>
        </div>
        <g:submitButton name="submit" value="Save"/>
    </g:form>

</div>

</body>
</html>