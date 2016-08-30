<%@ page import="inmobadminback.Propiedad" %>



<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'barrio', 'error')} required">
	<label for="barrio">
		<g:message code="propiedad.barrio.label" default="Barrio" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barrio" required="" value="${propiedadInstance?.barrio}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'bloque', 'error')} required">
	<label for="bloque">
		<g:message code="propiedad.bloque.label" default="Bloque" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="bloque" type="number" value="${propiedadInstance.bloque}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'calle', 'error')} required">
	<label for="calle">
		<g:message code="propiedad.calle.label" default="Calle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="calle" required="" value="${propiedadInstance?.calle}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'departamento', 'error')} required">
	<label for="departamento">
		<g:message code="propiedad.departamento.label" default="Departamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="departamento" type="number" value="${propiedadInstance.departamento}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'numero', 'error')} required">
	<label for="numero">
		<g:message code="propiedad.numero.label" default="Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numero" type="number" value="${propiedadInstance.numero}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'ph', 'error')} required">
	<label for="ph">
		<g:message code="propiedad.ph.label" default="Ph" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ph" required="" value="${propiedadInstance?.ph}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: propiedadInstance, field: 'piso', 'error')} required">
	<label for="piso">
		<g:message code="propiedad.piso.label" default="Piso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="piso" type="number" value="${propiedadInstance.piso}" required=""/>

</div>

