<%@ page import="inmobadminback.Concepto" %>



<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'cuotas', 'error')} required">
	<label for="cuotas">
		<g:message code="concepto.cuotas.label" default="Cuotas" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cuotas" type="number" value="${conceptoInstance.cuotas}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'inicio', 'error')} required">
	<label for="inicio">
		<g:message code="concepto.inicio.label" default="Inicio" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="inicio" precision="day"  value="${conceptoInstance?.inicio}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'isCredito', 'error')} ">
	<label for="isCredito">
		<g:message code="concepto.isCredito.label" default="Is Credito" />
		
	</label>
	<g:checkBox name="isCredito" value="${conceptoInstance?.isCredito}" />

</div>

<div class="fieldcontain ${hasErrors(bean: conceptoInstance, field: 'monto', 'error')} required">
	<label for="monto">
		<g:message code="concepto.monto.label" default="Monto" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="monto" value="${fieldValue(bean: conceptoInstance, field: 'monto')}" required=""/>

</div>

