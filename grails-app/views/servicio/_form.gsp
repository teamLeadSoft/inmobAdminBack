<%@ page import="inmobadminback.Servicio" %>



<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="servicio.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numero" required="" value="${servicioInstance?.numero}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="servicio.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="periodo" precision="day"  value="${servicioInstance?.periodo}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: servicioInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="servicio.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${servicioInstance?.tipo}"/>

</div>

