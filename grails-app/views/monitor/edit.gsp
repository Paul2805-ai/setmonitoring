<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 13/08/25
  Time: 16.31
--%>

<%--
  Created by IntelliJ IDEA.
  User: fairtech
  Date: 13/08/25
  Time: 16.30
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <asset:stylesheet src="main.css"/>
    <meta name="layout" content="main"/>
    <title></title>
</head>
<body>
<div class="form-edit">
    <g:form controller="dashboard" action="update" method="PUT">
    <div class="pb-12">
        <h4 class="">Personal Information</h4>
        <div class="">
            <div class="input-create">
                <label>Name :</label>
                <div class="mt-2">
                    <input value ='${sites.name}' id="first-name" type="text" name="name" autocomplete="given-name" class="block w-55 rounded-md bg-white/5 px-3 py-1.5 text-base outline-1 -outline-offset-1 outline-white/10 placeholder:text-gray-500 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-500 sm:text-sm/6" />
                </div>
            </div>
        </div>
        <div class="input-create">
            <label >Url :</label>
            <div class="input-create">
                <input value ='${sites.url}' id="street-address" type="text" name="url" autocomplete="street-address" class="block w-50 rounded-md bg-white/5 px-3 py-1.5 text-base outline-1 -outline-offset-1 outline-white/10 placeholder:text-gray-500 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-500 sm:text-sm/6" />
            </div>
        </div>
        <div class="input-create">
            <label>Note :</label>
            <input value ='${sites.note}' id="note" type="text" name="note" autocomplete="given-note" class="block w-50 rounded-md bg-white/5 px-3 py-1.5 text-base outline-1 -outline-offset-1 outline-white/10 placeholder:text-gray-500 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-500 sm:text-sm/6" />
        </div>
    </div>
        <input type="hidden" name="id" value="${sites.id}">
        <g:submitButton name="submit" value="Update"/>
    </g:form>
</div>
</body>
</html>