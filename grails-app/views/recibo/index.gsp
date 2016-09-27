
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
					
						<g:sortableColumn property="año" title="${message(code: 'recibo.año.label', default: 'Año')}" />
					
						<g:sortableColumn property="ciudad" title="${message(code: 'recibo.ciudad.label', default: 'Ciudad')}" />
					
						<g:sortableColumn property="comporbanteMesGas" title="${message(code: 'recibo.comporbanteMesGas.label', default: 'Comporbante Mes Gas')}" />
					
						<g:sortableColumn property="comporbanteMesMunicipal" title="${message(code: 'recibo.comporbanteMesMunicipal.label', default: 'Comporbante Mes Municipal')}" />
					
						<g:sortableColumn property="comprobanteMesAgua" title="${message(code: 'recibo.comprobanteMesAgua.label', default: 'Comprobante Mes Agua')}" />
					
						<g:sortableColumn property="comprobanteMesExpensas" title="${message(code: 'recibo.comprobanteMesExpensas.label', default: 'Comprobante Mes Expensas')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${reciboInstanceList}" status="i" var="reciboInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${reciboInstance.id}">${fieldValue(bean: reciboInstance, field: "año")}</g:link></td>
					
						<td>${fieldValue(bean: reciboInstance, field: "ciudad")}</td>
					
						<td>${fieldValue(bean: reciboInstance, field: "comporbanteMesGas")}</td>
					
						<td>${fieldValue(bean: reciboInstance, field: "comporbanteMesMunicipal")}</td>
					
						<td>${fieldValue(bean: reciboInstance, field: "comprobanteMesAgua")}</td>
					
						<td>${fieldValue(bean: reciboInstance, field: "comprobanteMesExpensas")}</td>
					
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
