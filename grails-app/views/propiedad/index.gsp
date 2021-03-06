
<%@ page import="inmobadminback.Propiedad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-propiedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-propiedad" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="calle" title="${message(code: 'propiedad.calle.label', default: 'Calle')}" />
					
						<g:sortableColumn property="numero" title="${message(code: 'propiedad.numero.label', default: 'Numero')}" />
					
						<g:sortableColumn property="ph" title="${message(code: 'propiedad.ph.label', default: 'Ph')}" />
					
						<g:sortableColumn property="barrio" title="${message(code: 'propiedad.barrio.label', default: 'Barrio')}" />
					
						<g:sortableColumn property="departamento" title="${message(code: 'propiedad.departamento.label', default: 'Departamento')}" />
					
						<g:sortableColumn property="piso" title="${message(code: 'propiedad.piso.label', default: 'Piso')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${propiedadInstanceList}" status="i" var="propiedadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${propiedadInstance.id}">${fieldValue(bean: propiedadInstance, field: "calle")}</g:link></td>
					
						<td>${fieldValue(bean: propiedadInstance, field: "numero")}</td>
					
						<td>${fieldValue(bean: propiedadInstance, field: "ph")}</td>
					
						<td>${fieldValue(bean: propiedadInstance, field: "barrio")}</td>
					
						<td>${fieldValue(bean: propiedadInstance, field: "departamento")}</td>
					
						<td>${fieldValue(bean: propiedadInstance, field: "piso")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${propiedadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
