
<%@ page import="inmobadminback.Locatario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'locatario.label', default: 'Locatario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-locatario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-locatario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'locatario.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'locatario.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'locatario.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'locatario.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'locatario.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${locatarioInstanceList}" status="i" var="locatarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${locatarioInstance.id}">${fieldValue(bean: locatarioInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: locatarioInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: locatarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: locatarioInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: locatarioInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${locatarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
