
<%@ page import="inmobadmin.Inquilino" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'inquilino.label', default: 'Inquilino')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-inquilino" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-inquilino" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'inquilino.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'inquilino.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'inquilino.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${inquilinoInstanceList}" status="i" var="inquilinoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${inquilinoInstance.id}">${fieldValue(bean: inquilinoInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: inquilinoInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: inquilinoInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${inquilinoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
