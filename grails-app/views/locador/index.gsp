
<%@ page import="inmobadminback.Locador" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'locador.label', default: 'Locador')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-locador" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-locador" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'locador.apellido.label', default: 'Apellido')}" />
					
						<g:sortableColumn property="dni" title="${message(code: 'locador.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'locador.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'locador.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="nombreFantasia" title="${message(code: 'locador.nombreFantasia.label', default: 'Nombre Fantasia')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'locador.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${locadorInstanceList}" status="i" var="locadorInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${locadorInstance.id}">${fieldValue(bean: locadorInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: locadorInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: locadorInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: locadorInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: locadorInstance, field: "nombreFantasia")}</td>
					
						<td>${fieldValue(bean: locadorInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${locadorInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
