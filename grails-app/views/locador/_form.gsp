<%@ page import="inmobadminback.Locador" %>



<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'apellido', 'error')} required">
	<label for="apellido">
		<g:message code="locador.apellido.label" default="Apellido" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="apellido" required="" value="${locadorInstance?.apellido}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'dni', 'error')} required">
	<label for="dni">
		<g:message code="locador.dni.label" default="Dni" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dni" required="" value="${locadorInstance?.dni}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="locador.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${locadorInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="locador.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" required="" value="${locadorInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'propiedad', 'error')} ">
	<label for="propiedad">
		<g:message code="locador.propiedad.label" default="Propiedad" />
		
	</label>
	<g:select name="propiedad" from="${inmobadminback.Propiedad.list()}" multiple="multiple" optionKey="id" size="5" value="${locadorInstance?.propiedad*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="locador.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${locadorInstance?.telefono}"/>

</div>

