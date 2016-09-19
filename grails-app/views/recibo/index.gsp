
<%@ page import="inmobadminback.Recibo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'recibo.label', default: 'Recibo')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-recibo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-recibo" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="recibo.contrato.label" default="Contrato" /></th>
					
						<g:sortableColumn property="esAbonado" title="${message(code: 'recibo.esAbonado.label', default: 'Es Abonado')}" />
					
						<g:sortableColumn property="esActivo" title="${message(code: 'recibo.esActivo.label', default: 'Es Activo')}" />
					
						<g:sortableColumn property="fechaCreacion" title="${message(code: 'recibo.fechaCreacion.label', default: 'Fecha Creacion')}" />
					
						<g:sortableColumn property="reciboJson" title="${message(code: 'recibo.reciboJson.label', default: 'Recibo Json')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reciboInstanceList}" status="i" var="reciboInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reciboInstance.id}">${fieldValue(bean: reciboInstance, field: "contrato")}</g:link></td>
					
						<td><g:formatBoolean boolean="${reciboInstance.esAbonado}" /></td>
					
						<td><g:formatBoolean boolean="${reciboInstance.esActivo}" /></td>
					
						<td><g:formatDate date="${reciboInstance.fechaCreacion}" /></td>
					
						<td>${fieldValue(bean: reciboInstance, field: "reciboJson")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${reciboInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
