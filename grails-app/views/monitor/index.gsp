<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 11/08/25
  Time: 11.49
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="monitor.css"/>
    <title>Dashboard</title>
</head>

<body>
<div class="main">
    <div class="title_monitoring">
        <h2 class="">Website Monitoring</h2>
    </div>
    <table class="table_head-monitor">
        <thead class="table_head-monitor">
        <tr>
            <th>Name Website</th>
            <th>URL</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${sites}" var="site">
            <tr>
                <td>${site.name}</td>
                <td><a href="${site.url}" target="_blank">${site.url}</a></td>
                <td>
                    <a href="/edit/${site.id}">Edit</a>
                    <g:link action="delete" controller="dashboard" id="${site.id}" onclick="return confirm('Yakin hapus?')">
                        Delete
                    </g:link>
                </td>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>