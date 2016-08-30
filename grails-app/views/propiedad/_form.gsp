<%@ page import="inmobadminback.Propiedad" %>



<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="propiedad.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${propiedadInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'ph', 'error')} required">
	<label for="ph">
		<g:message code="propiedad.ph.label" default="Ph" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ph" required="" value="${propiedadInstance?.ph}"/>

</div>

