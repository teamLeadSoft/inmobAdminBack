
<%@ page import="inmobadminback.Propiedad" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'propiedad.label', default: 'Propiedad')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-propiedad" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-propiedad" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list propiedad">
			
				<g:if test="${propiedadInstance?.barrio}">
				<li class="fieldcontain">
					<span id="barrio-label" class="property-label"><g:message code="propiedad.barrio.label" default="Barrio" /></span>
					
						<span class="property-value" aria-labelledby="barrio-label"><g:fieldValue bean="${propiedadInstance}" field="barrio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.bloque}">
				<li class="fieldcontain">
					<span id="bloque-label" class="property-label"><g:message code="propiedad.bloque.label" default="Bloque" /></span>
					
						<span class="property-value" aria-labelledby="bloque-label"><g:fieldValue bean="${propiedadInstance}" field="bloque"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.calle}">
				<li class="fieldcontain">
					<span id="calle-label" class="property-label"><g:message code="propiedad.calle.label" default="Calle" /></span>
					
						<span class="property-value" aria-labelledby="calle-label"><g:fieldValue bean="${propiedadInstance}" field="calle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="propiedad.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${propiedadInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.numero}">
				<li class="fieldcontain">
					<span id="numero-label" class="property-label"><g:message code="propiedad.numero.label" default="Numero" /></span>
					
						<span class="property-value" aria-labelledby="numero-label"><g:fieldValue bean="${propiedadInstance}" field="numero"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.ph}">
				<li class="fieldcontain">
					<span id="ph-label" class="property-label"><g:message code="propiedad.ph.label" default="Ph" /></span>
					
						<span class="property-value" aria-labelledby="ph-label"><g:fieldValue bean="${propiedadInstance}" field="ph"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${propiedadInstance?.piso}">
				<li class="fieldcontain">
					<span id="piso-label" class="property-label"><g:message code="propiedad.piso.label" default="Piso" /></span>
					
						<span class="property-value" aria-labelledby="piso-label"><g:fieldValue bean="${propiedadInstance}" field="piso"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:propiedadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${propiedadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
