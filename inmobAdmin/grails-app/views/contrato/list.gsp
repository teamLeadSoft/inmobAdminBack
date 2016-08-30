
<%@ page import="inmobadmin.Contrato" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contrato.label', default: 'Contrato')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contrato" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contrato" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="finalContrato" title="${message(code: 'contrato.finalContrato.label', default: 'Final Contrato')}" />
					
						<g:sortableColumn property="inicioContrato" title="${message(code: 'contrato.inicioContrato.label', default: 'Inicio Contrato')}" />
					
						<th><g:message code="contrato.inquilino.label" default="Inquilino" /></th>
					
						<g:sortableColumn property="numeroContrato" title="${message(code: 'contrato.numeroContrato.label', default: 'Numero Contrato')}" />
					
						<th><g:message code="contrato.propiedad.label" default="Propiedad" /></th>
					
						<th><g:message code="contrato.propietario.label" default="Propietario" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contratoInstanceList}" status="i" var="contratoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contratoInstance.id}">${fieldValue(bean: contratoInstance, field: "finalContrato")}</g:link></td>
					
						<td><g:formatDate date="${contratoInstance.inicioContrato}" /></td>
					
						<td>${fieldValue(bean: contratoInstance, field: "inquilino")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "numeroContrato")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "propiedad")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "propietario")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contratoInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
