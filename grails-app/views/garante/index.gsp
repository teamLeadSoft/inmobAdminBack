
<%@ page import="inmobadminback.Garante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'garante.label', default: 'Garante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-garante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-garante" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="apellido" title="${message(code: 'garante.apellido.label', default: 'Apellido')}" />
					
						<th><g:message code="garante.contrato.label" default="Contrato" /></th>
					
						<g:sortableColumn property="dni" title="${message(code: 'garante.dni.label', default: 'Dni')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'garante.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="nombre" title="${message(code: 'garante.nombre.label', default: 'Nombre')}" />
					
						<g:sortableColumn property="telefono" title="${message(code: 'garante.telefono.label', default: 'Telefono')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${garanteInstanceList}" status="i" var="garanteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${garanteInstance.id}">${fieldValue(bean: garanteInstance, field: "apellido")}</g:link></td>
					
						<td>${fieldValue(bean: garanteInstance, field: "contrato")}</td>
					
						<td>${fieldValue(bean: garanteInstance, field: "dni")}</td>
					
						<td>${fieldValue(bean: garanteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: garanteInstance, field: "nombre")}</td>
					
						<td>${fieldValue(bean: garanteInstance, field: "telefono")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${garanteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
