<%@ page import="inmobadmin.Propiedad" %>



<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'direccion', 'error')} ">
	<label for="direccion">
		<g:message code="propiedad.direccion.label" default="Direccion" />
		
	</label>
	<g:textField name="direccion" value="${propiedadInstance?.direccion}"/>
</div>

