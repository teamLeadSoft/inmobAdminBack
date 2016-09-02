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

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'nombreFantasia', 'error')} required">
	<label for="nombreFantasia">
		<g:message code="locador.nombreFantasia.label" default="Nombre Fantasia" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreFantasia" required="" value="${locadorInstance?.nombreFantasia}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'propiedad', 'error')} ">
	<label for="propiedad">
		<g:message code="locador.propiedad.label" default="Propiedad" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${locadorInstance?.propiedad?}" var="p">
    <li><g:link controller="propiedad" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="propiedad" action="create" params="['locador.id': locadorInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'propiedad.label', default: 'Propiedad')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: locadorInstance, field: 'telefono', 'error')} required">
	<label for="telefono">
		<g:message code="locador.telefono.label" default="Telefono" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefono" required="" value="${locadorInstance?.telefono}"/>

</div>

