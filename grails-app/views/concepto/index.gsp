
<%@ page import="inmobadminback.Concepto" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'concepto.label', default: 'Concepto')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-concepto" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-concepto" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="cuotas" title="${message(code: 'concepto.cuotas.label', default: 'Cuotas')}" />
					
						<g:sortableColumn property="descripcion" title="${message(code: 'concepto.descripcion.label', default: 'Descripcion')}" />
					
						<g:sortableColumn property="inicio" title="${message(code: 'concepto.inicio.label', default: 'Inicio')}" />
					
						<g:sortableColumn property="isCredito" title="${message(code: 'concepto.isCredito.label', default: 'Is Credito')}" />
					
						<g:sortableColumn property="monto" title="${message(code: 'concepto.monto.label', default: 'Monto')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${conceptoInstanceList}" status="i" var="conceptoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${conceptoInstance.id}">${fieldValue(bean: conceptoInstance, field: "cuotas")}</g:link></td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "descripcion")}</td>
					
						<td><g:formatDate date="${conceptoInstance.inicio}" /></td>
					
						<td><g:formatBoolean boolean="${conceptoInstance.isCredito}" /></td>
					
						<td>${fieldValue(bean: conceptoInstance, field: "monto")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${conceptoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
