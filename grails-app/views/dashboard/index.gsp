<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 10/08/25
  Time: 23.24
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Website Monitoring</title>
</head>

<body>
<div class="main">
    <h2 class="title_dashboard">Dashboard</h2>
    <h4 class="action"><a href="${createLink(controller:'dashboard', action:'create')}">Add New Website</a></h4>
    <table class="table_head-dashboard table-bordered">
        <thead>
        <tr>
            <th>id</th>
            <th>Website Name</th>
            <th>URL</th>
            <th>Status</th>
            <th>Last Checked</th>
            <th>Note</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${sites}" var="site">
            <tr>
                <td>${site.id}</td>
                <td>${site.name}</td>
                <td><a href="${site.url}" target="_blank">${site.url}</a></td>
                <td style="color: ${site.status == 'OK' ? 'green' : 'red'}">${site.status}</td>
                <td>
                    <g:if test="${site.lastChecked}">
                    <g:formatDate date="${site.lastChecked}" format="dd MMM yyyy HH:mm"/>
                    </g:if>
                    <g:else>-</g:else>
                </td>
                <td>${site.note}</td>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>