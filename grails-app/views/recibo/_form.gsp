<%@ page import="inmobadminback.Recibo" %>



<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'año', 'error')} required">
	<label for="año">
		<g:message code="recibo.año.label" default="Año" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="año" type="number" value="${reciboInstance.año}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'ciudad', 'error')} required">
	<label for="ciudad">
		<g:message code="recibo.ciudad.label" default="Ciudad" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ciudad" required="" value="${reciboInstance?.ciudad}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comporbanteMesGas', 'error')} required">
	<label for="comporbanteMesGas">
		<g:message code="recibo.comporbanteMesGas.label" default="Comporbante Mes Gas" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comporbanteMesMunicipal', 'error')} required">
	<label for="comporbanteMesMunicipal">
		<g:message code="recibo.comporbanteMesMunicipal.label" default="Comporbante Mes Municipal" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comprobanteMesAgua', 'error')} required">
	<label for="comprobanteMesAgua">
		<g:message code="recibo.comprobanteMesAgua.label" default="Comprobante Mes Agua" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comprobanteMesExpensas', 'error')} required">
	<label for="comprobanteMesExpensas">
		<g:message code="recibo.comprobanteMesExpensas.label" default="Comprobante Mes Expensas" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comprobanteMesLuz', 'error')} required">
	<label for="comprobanteMesLuz">
		<g:message code="recibo.comprobanteMesLuz.label" default="Comprobante Mes Luz" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'comprobanteMesRentas', 'error')} required">
	<label for="comprobanteMesRentas">
		<g:message code="recibo.comprobanteMesRentas.label" default="Comprobante Mes Rentas" />
		<span class="required-indicator">*</span>
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'direccion', 'error')} required">
	<label for="direccion">
		<g:message code="recibo.direccion.label" default="Direccion" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="direccion" required="" value="${reciboInstance?.direccion}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'dniLocador', 'error')} required">
	<label for="dniLocador">
		<g:message code="recibo.dniLocador.label" default="Dni Locador" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dniLocador" type="number" value="${reciboInstance.dniLocador}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'dniLocatario', 'error')} required">
	<label for="dniLocatario">
		<g:message code="recibo.dniLocatario.label" default="Dni Locatario" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dniLocatario" type="number" value="${reciboInstance.dniLocatario}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'esAbonado', 'error')} ">
	<label for="esAbonado">
		<g:message code="recibo.esAbonado.label" default="Es Abonado" />
		
	</label>
	<g:checkBox name="esAbonado" value="${reciboInstance?.esAbonado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'esActivo', 'error')} ">
	<label for="esActivo">
		<g:message code="recibo.esActivo.label" default="Es Activo" />
		
	</label>
	<g:checkBox name="esActivo" value="${reciboInstance?.esActivo}" />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'fecha', 'error')} required">
	<label for="fecha">
		<g:message code="recibo.fecha.label" default="Fecha" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fecha" precision="day"  value="${reciboInstance?.fecha}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'mes', 'error')} required">
	<label for="mes">
		<g:message code="recibo.mes.label" default="Mes" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mes" required="" value="${reciboInstance?.mes}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'nombreLocador', 'error')} required">
	<label for="nombreLocador">
		<g:message code="recibo.nombreLocador.label" default="Nombre Locador" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreLocador" required="" value="${reciboInstance?.nombreLocador}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'nombreLocatario', 'error')} required">
	<label for="nombreLocatario">
		<g:message code="recibo.nombreLocatario.label" default="Nombre Locatario" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombreLocatario" required="" value="${reciboInstance?.nombreLocatario}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'nroRecibo', 'error')} required">
	<label for="nroRecibo">
		<g:message code="recibo.nroRecibo.label" default="Nro Recibo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="nroRecibo" type="number" value="${reciboInstance.nroRecibo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'sumaLetras', 'error')} required">
	<label for="sumaLetras">
		<g:message code="recibo.sumaLetras.label" default="Suma Letras" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="sumaLetras" required="" value="${reciboInstance?.sumaLetras}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: reciboInstance, field: 'sumaNumero', 'error')} required">
	<label for="sumaNumero">
		<g:message code="recibo.sumaNumero.label" default="Suma Numero" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sumaNumero" value="${fieldValue(bean: reciboInstance, field: 'sumaNumero')}" required=""/>

</div>

