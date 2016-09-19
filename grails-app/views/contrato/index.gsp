
<%@ page import="inmobadminback.Contrato" %>
<!DOCTYPE html>
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
					
						<g:sortableColumn property="fechaFin" title="${message(code: 'contrato.fechaFin.label', default: 'Fecha Fin')}" />
					
						<g:sortableColumn property="fechaInicio" title="${message(code: 'contrato.fechaInicio.label', default: 'Fecha Inicio')}" />
					
						<th><g:message code="contrato.locador.label" default="Locador" /></th>
					
						<th><g:message code="contrato.locatario.label" default="Locatario" /></th>
					
						<g:sortableColumn property="montoMensualContrato" title="${message(code: 'contrato.montoMensualContrato.label', default: 'Monto Mensual Contrato')}" />
					
						<g:sortableColumn property="montoTotalContrato" title="${message(code: 'contrato.montoTotalContrato.label', default: 'Monto Total Contrato')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contratoInstanceList}" status="i" var="contratoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contratoInstance.id}">${fieldValue(bean: contratoInstance, field: "fechaFin")}</g:link></td>
					
						<td><g:formatDate date="${contratoInstance.fechaInicio}" /></td>
					
						<td>${fieldValue(bean: contratoInstance, field: "locador")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "locatario")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "montoMensualContrato")}</td>
					
						<td>${fieldValue(bean: contratoInstance, field: "montoTotalContrato")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contratoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
