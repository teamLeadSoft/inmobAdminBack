
<%@ page import="inmobadmin.Propietario" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propietario.label', default: 'Propietario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-propietario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-propietario" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'propietario.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'propietario.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'propietario.nombre.label', default: 'Nombre')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${propietarioInstanceList}" status="i" var="propietarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${propietarioInstance.id}">${fieldValue(bean: propietarioInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: propietarioInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: propietarioInstance, field: "nombre")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${propietarioInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
