<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <asset:stylesheet src="main.css"/>
    <meta name="layout" content="main"/>
    <title>Website Monitoring</title>
</head>

<body>
<div class="main">
    <h2 class="title_reporting">Reporting</h2>
    <table class="table_head-dashboard table-bordered">
        <thead>
        <tr>
            <th>id</th>
            <th>Website Name</th>
            <th>URL</th>
            <th>Status</th>
            <th>Description</th>
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
                <g:form controller="dashboard" action="update" method="POST">
                    <g:hiddenField name="id" value="${site.id}" />

                    <g:textArea name="note" rows="4" cols="50">${site.note}</g:textArea><br/><br/>
                    <g:submitButton name="submit" value="Update"/>
                </g:form>
            </td>
        </g:each>
        </tbody>
    </table>
</div>

</body>
</html>