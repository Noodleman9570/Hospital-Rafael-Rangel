
$('#newPacBtn').click(function(){
    event.preventDefault();
    console.log("hola");
    $('#cosultFormIn')
    .animate({opacity: '0.4'})
    .removeClass('col-lg-12')
    .addClass('col-lg-5');  
    $('#cosultFormIn input ,#cosultFormIn select, #cosultFormIn textarea')
    .attr('disabled', true)
    $('.npac-form')
    .removeClass('toggle')
    .addClass('pull-left');
    $('#newPacBtn').hide()
    $('.btn-c')
    .attr("onclick","saveP()")
    .html('Enviar datos de paciente');
    
  })

  $('#formClose').click(function(){
    location.reload();
  })
  pixels = $(document).width();

if(pixels < 500){
    alert("pantalla menor a 500px");
}


  //Listar pacientes
  $(document).ready(function() {
    listarCitas();
});








function listarCitas(){
    $.ajax({
        url:`${base_url}/consulta/listarCitas`,
        type:'POST'
    }).done(function(resp){
        var data = JSON.parse(resp)
        var cadena = "";
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option value='"+data[i]["id_cita"]+"'>Cédula: "+data[i]["TMPAC_CI"]+' &nbsp;&nbsp; Nombre: '+data[i]["TMPAC_NO"]+"&nbsp;&nbsp;"+data[i]["TMPAC_AP"]+"&nbsp;&nbsp;&nbsp;&nbsp; Asunto:"+data[i]["title"]+"</option>";
                
            }
            $("#cita").html(cadena);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#cita").html(cadena);
        }
    })
}





  const expresiones = {
    nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	telefono: /^[01246]{4}-[0-9]{7}$/, // 7 a 14 numeros.
    cedula: /^[0-9]{7,8}$/,
    temp: /^[3][5-9]$/,
    peso: /^[2-9][1-9]$/,
}

const campos = {
	nom: false,
	ced: false,
	correo: false,
	telefono: false,
}



const formulario = document.getElementById('consultForm');
const formulario2 = document.getElementById('formNewPaciente');
const inputs = document.querySelectorAll('#consultForm input');
const inputs2 = document.querySelectorAll('#formNewPaciente input');
const textareas = document.querySelectorAll('#consultForm textarea');

const validarFormulario = (e) => {
	switch (e.target.id) {
		case "temp":
			validarCampo(expresiones.temp, e.target, 'temp');
		break;
        case "peso":
			validarCampo(expresiones.peso, e.target, 'peso');
		break;
        case "cedula":
			validarCampo(expresiones.cedula, e.target, 'cedula');
		break;
		case "apellido":
			validarCampo2(expresiones.nombre, e.target, 'apellido');
		break;
		case "nombre":
			validarCampo2(expresiones.nombre, e.target, 'nombre');
		break;
		case "telefono":
			validarCampo2(expresiones.telefono, e.target, 'telefono');
		break;
	}
}

const validarCampo = (expresion, input, campo) => {
	if(expresion.test(input.value)){
		document.getElementById(campo).classList.remove('is-invalid');
		document.getElementById(campo).classList.add('is-valid');	
		campos[campo] = true;
	} else {
		document.getElementById(campo).classList.add('is-invalid');
		document.getElementById(campo).classList.remove('is-valid');
		campos[campo] = false;
	}
}

const validarCampo2 = (expresion, input, campo) => {
	if(expresion.test(input.value)){
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-correcto');	
        document.querySelector(`#grupo__${campo} .formulario__validacion-estado`).classList.add('fa-circle-check');
		document.querySelector(`#grupo__${campo} .formulario__validacion-estado`).classList.remove('fa-times-circle');
		campos[campo] = true;
	} else {
		document.getElementById(`grupo__${campo}`).classList.add('formulario__grupo-incorrecto');
		document.getElementById(`grupo__${campo}`).classList.remove('formulario__grupo-correcto');
        document.querySelector(`#grupo__${campo} .formulario__validacion-estado`).classList.add('fa-circle-xmark');
		document.querySelector(`#grupo__${campo} .formulario__validacion-estado`).classList.remove('fa-check-circle');
		campos[campo] = false;
	}
}

inputs.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});

inputs2.forEach((input) => {
	input.addEventListener('keyup', validarFormulario);
	input.addEventListener('blur', validarFormulario);
});

textareas.forEach((textarea) => {
	textarea.addEventListener('keyup', validarFormulario);
	textarea.addEventListener('blur', validarFormulario);
});


$("#pac_select").on(
    'change',
     function(){
        $('#pac_select')
        .removeClass("togg");
    }
);

//Nuevo registro
async function saveC(e){
    event.preventDefault();
    formNewPaciente = document.querySelector('#consultForm');
    let datos = new FormData(formNewPaciente);
    console.log("registrando consulta");
    try {
        const url = `${base_url}/consulta/save`;
    
        const respuesta = await fetch(url,{
            method: "POST",
            body: datos,
        });
    
        const result = await respuesta.json();

        if (result.status) {
            console.log(result);
            new Noty({
                type: 'success',
                theme: 'metroui',
                text: `${result.msg}`,
                timeout: 2000,
            }).show();
            formNewPaciente.reset(); 
            setTimeout(function(){
                window.location.href = `${base_url}/consulta`;        
            },2500);       
        } else {
            new Noty({
                type: 'error',
                theme: 'metroui',
                text: `${result.error}`,
                timeout: 2000,
            }).show(); 
        }
  
    } catch (err) {
        console.log(err);
    }
}




async function fetchLastInsert()
{
    $.ajax({
        url:`${base_url}/pacientes/lastInsert`,
        type:'POST'
    }).done(function(resp){
        var data = JSON.parse(resp)
        $('#pac_select')
        .val(data[0]["MAX(TMPAC_PID)"])
        .addClass("togg");
        
    })
}


/////////////////////////////////////////////////////////////////////////////////////////////

let tblConsultas;

document.addEventListener("DOMContentLoaded",function(){

	setTimeout(()=>{
		$('#overlayU').hide();
	}, 700);

	tblConsultas = new DataTable("#tblConsultas",{
        
		aProcessing: true,
		aServerSide: true,
		//Opciones de lenguaje
		language: {
			url: `${base_url}/Assets/app/js/dataTables.spanish.json`
		},
		//Consultar los datos a la api
		ajax:{
			url:`${base_url}/Consulta/all`,
			dataSrc:"",
		},
		//Datos desde el servidor
		columns:[
			{data: `id`},
            {data: `asunto`},
			{data: `cedula`},
			{data: `nombre`},
			{data: `diag`},
			{data: `tratamiento`},
            {data: `date_at`}
		],
		//Ocultar columnas
        columnDefs:[
            {
                targets:[0],
                visible:false,
                serchable:false,
            },
            { responsivePriority: 1, targets:  0},
            { responsivePriority: 2, targets:  6},
        ],
        //Mostrar botones de exportacion
        responsive: "true",
        dom:"lBfrtip",
        buttons:[
            {
                extend:"print",    
                text:"<i class='fa fa-print'><i/>",
                titleAttr:"Imprimir",
                className: "btn btn-info"
            },
            {
                extend:"excelHtml5",
                text:"<i class='fa fa-file-excel-o'><i/>",
                titleAttr:"Exportar a Excel",
                className: "btn btn-success"
            },
            {
                extend:"pdfHtml5",
                text:"<i class='fa fa-file-pdf-o'><i/>",
                titleAttr:"Exportar a PDF",
                className: "btn btn-danger"
            },
        ],
        lengthMenu:[
            [5,10,25,50,-1],
            [5,10,25,50,"All"],
        ],
		iDisplayLength:5,
		order:[[1,"asc"]],
	});

},false);








