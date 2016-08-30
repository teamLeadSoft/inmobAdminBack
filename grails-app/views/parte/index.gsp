
<%@ page import="inmobadminback.Parte" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parte.label', default: 'Parte')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-parte" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-parte" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'parte.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'parte.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'parte.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'parte.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'parte.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${parteInstanceList}" status="i" var="parteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${parteInstance.id}">${fieldValue(bean: parteInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: parteInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: parteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: parteInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: parteInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${parteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
