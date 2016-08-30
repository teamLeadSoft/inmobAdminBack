<%@ page import="inmobadminback.Parte" %>



<div class="fieldcontain ${hasErrors(bean: parteInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="parte.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${parteInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parteInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="parte.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${parteInstance?.dni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="parte.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${parteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parteInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="parte.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${parteInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: parteInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="parte.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${parteInstance?.telefono}"/>

</div>

