
<%@ page import="gov.spawar.icode.Location" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="generatedViews" />
        <g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
    <content tag="content">
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'location.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="aisGeom" title="${message(code: 'location.aisGeom.label', default: 'Ais Geom')}" />
                        
                            <th><g:message code="location.ais.label" default="Ais" /></th>
                        
                            <g:sortableColumn property="date" title="${message(code: 'location.date.label', default: 'Date')}" />
                        
                            <g:sortableColumn property="latitude" title="${message(code: 'location.latitude.label', default: 'Latitude')}" />
                        
                            <g:sortableColumn property="longitude" title="${message(code: 'location.longitude.label', default: 'Longitude')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${locationInstanceList}" status="i" var="locationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "aisGeom")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "ais")}</td>
                        
                            <td><g:formatDate date="${locationInstance.date}" /></td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "latitude")}</td>
                        
                            <td>${fieldValue(bean: locationInstance, field: "longitude")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${locationInstanceTotal}" />
            </div>
        </div>
    </content>
    </body>
</html>