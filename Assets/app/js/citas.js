

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
    listarPac();
    listarMed();
});

function listarPac(){
    $.ajax({
        url:`${base_url}/citas/listarPac`,
        type:'POST'
    }).done(function(resp){
        var data = JSON.parse(resp)
        var cadena = "";
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option value='"+data[i]["TMPAC_PID"]+"'>Cédula: "+data[i]["TMPAC_CI"]+' &nbsp;&nbsp; Nombre: '+data[i]["TMPAC_NO"]+"&nbsp;&nbsp;"+data[i]["TMPAC_AP"]+"</option>";
                
            }
            $("#pac_select").html(cadena);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#pac_select").html(cadena);
        }
    })
}
function listarMed(){
    $.ajax({
        url:`${base_url}/citas/listarMed`,
        type:'POST'
    }).done(function(resp){
        var data = JSON.parse(resp)
        var cadena = "";
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option value='"+data[i]["TMMED_MID"]+"'>Cédula: "+data[i]["TMMED_CI"]+' &nbsp;&nbsp; Nombre: '+data[i]["TMMED_NO"]+"&nbsp;&nbsp;"+data[i]["TMMED_AP"]+"&nbsp;&nbsp; Especialidad: "+data[i]["TMESP_NO"]+"</option>";
                
            }
            $("#med_select").html(cadena);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#med_select").html(cadena);
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



const formulario = document.getElementById('citasForm');
const formulario2 = document.getElementById('formNewPaciente');
const inputs = document.querySelectorAll('#citasForm input');
const inputs2 = document.querySelectorAll('#formNewPaciente input');
const textareas = document.querySelectorAll('#citasForm textarea');

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
    
    formNewPaciente = document.querySelector('#citasForm');
    let datos = new FormData(formNewPaciente);
    console.log("registrando consulta");
    try {
        const url = `${base_url}/citas/save`;
    
        const respuesta = await fetch(url,{
            method: "POST",
            body: datos,
        });
    
        const result = await respuesta.json();

        if (result.status) {
            console.log(result);
            var n = new Noty({
                text: `${result.msg} <br> Se ha envio la cita correctamente al destinatario`,
                type: "success",
                layout: "center",
                modal: "true",
                buttons: [
                    Noty.button('YES', 'btn btn-success', async function () {
                    window.location.href = `${base_url}/Citas/citasTable`;  
                    }, {id: 'button1', 'data-status': 'ok'}),
                ]
            });
            n.show();
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

//SaveAll
async function saveP(e){
    event.preventDefault();
    
    formNewPaciente = document.querySelector('#formNewPaciente');
    let datos = new FormData(formNewPaciente);

    try {
        const url = `${base_url}/pacientes/save`;
    
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
            setTimeout(function(){
                $('.npac-form')
                .addClass('toggle')
                $('#cosultFormIn')
                .animate({opacity: '1'})
                .removeClass('col-lg-4')
                .addClass('col-lg-12');  
                $('#cosultFormIn input ,#cosultFormIn select, #cosultFormIn textarea')
                .attr('disabled', false)
                $('.btn-c')
                .attr("onclick","saveC()");
                $('#newPacBtn').show()
                formulario2.reset();
                listarPac();
                fetchLastInsert();
            },2000);       
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






//Combo para listar Estado Municipio
function listarEDO(){
    $.ajax({
        url:`${base_url}/Pacientes/listarEDO`,
        type:'POST'
    }).done(function(resp){
        var data = JSON.parse(resp)
        var cadena = "";
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option value='"+data[i]["TMEDO_CE"]+"'>"+data[i]["TMEDO_NO"]+"</option>";
                
            }
            $("#sel_estado").html(cadena);
            var idedo = $("#sel_estado").val();
            listarMUN(idedo);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#sel_estado").html(cadena);
        }
    })
}

function listarMUN(idedo, mun){
    $.ajax({
        url:`${base_url}/Pacientes/listarMUN`,
        type:'POST',
        data:{
            idedo:idedo
        }
    }).done(function(resp){
        var data = JSON.parse(resp)
        var cadena = "";

        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option value='"+data[i]["TMMUN_CM"]+"'>"+data[i]["TMMUN_NO"]+"</option>";
                
            }
            $("#sel_municipio").html(cadena);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#sel_municipio").html(cadena);
        }
        if(mun){ $("#sel_municipio").val(mun); }
    })

}


function changeEDO(mun){
       
    var idedo = $("#sel_estado").val();
    listarMUN(idedo, mun);
    
    
}


$(document).ready(function() {
    listarEDO();
});
    $("#sel_estado").change(function(){
    var idedo= $("#sel_estado").val();
    listarMUN(idedo);
})

////////////////////////Lista de citas///////////////////////////

let tblCitas;

function openModal()
    {   
        $('#cita').modal('show');     
    }




document.addEventListener("DOMContentLoaded",function(){

	setTimeout(()=>{
		$('#overlayU').hide();
	}, 700);

	tblCitas = new DataTable("#tblCitas",{
        
		aProcessing: true,
		aServerSide: true,
		//Opciones de lenguaje
		language: {
			url: `${base_url}/Assets/app/js/dataTables.spanish.json`
		},
		//Consultar los datos a la api
		ajax:{
			url:`${base_url}/Citas/all`,
			dataSrc:"",
		},
		//Datos desde el servidor
		columns:[
			{data: `id`},
			{data: `title`},
			{data: `date_at`},
			{data: `time_at`},
			{data: `created_at`},
			{data: `pacNombre`},
            {data: `medNombre`},
            {data: `usuNombre`},
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







//editar
$("#tblCitas tbody").on(
    "click",
    "button.editarFnt",
    async function()
    {
        openModal();
        $('#modal-header').css('background', '#FFD24C')
        $(".modal-title").text('Editar cita');
        $(".id").show();
        $("#enviar").hide();
        document.getElementById("enviar").style.width = '13vh';
        $("#edit").show();
        $("#delete").show();
        let data_tabla = tblUser.row($(this).parents("tr")).data();
        var id = data_tabla.id
        let idrol = data_tabla.idrol;
        let usuario = data_tabla.usuario;
        let email = data_tabla.email;
        currEmail = email;
        let tf = data_tabla.tf;

        $(".id").text('Usuario Nro '+id);
        $("#id").val(id);
        $("#rol").val(idrol);
        $("#usuario").val(usuario);
        $("#correo").val(email); 
        $("#telefono").val(tf);

    }
);


$("#formulario").on(
    "click",
    "#edit",function(e){
        e.preventDefault();
        edit();
    }
);


async function edit(e){
    event.preventDefault();
        
    formRegister = document.querySelector('#formulario');
    let datos = new FormData(formRegister);

    datos.append('currEmail', currEmail);

    
    try {
        const url = `${base_url}/Users/edit`;
        
        const respuesta = await fetch(url,{
            method: "POST",
            body: datos,
        });
        
        
        const result = await respuesta.json();

        if (result.mailStatus && result.status) {
            var n = new Noty({
                text: `${result.msg} <br> Se ha enviado la contraseña al nuevo correo electronico`,
                type: "success",
                layout: "center",
                modal: "true",
                buttons: [
                    Noty.button('YES', 'btn btn-success', async function () {
                    window.location.href = `${base_url}/Users`;  
                    }, {id: 'button1', 'data-status': 'ok'}),
                ]
            });
            n.show();
        } else {
            if (result.status) {
                console.log(result);
                new Noty({
                    type: 'success',
                    theme: 'metroui',
                    text: `${result.msg}`,
                    timeout: 2000,
                }).show();
                formRegister.reset();
                setTimeout(function(){
                    window.location.href = `${base_url}/Users`;        
                },2500);           
            } else {
                new Noty({
                    type: 'error',
                    theme: 'metroui',
                    text: `${result.error}`,
                    timeout: 2000,
                }).show(); 
            }
        }

        
        
    } catch (err) {
        console.log(err);
    }

}





//Eliminar

$("#formulario").on(
    "click",
    "#delete",async function(e){
        e.preventDefault();
        id = $("#id").val();
        delDialog(id);
    }
);

//Funcion eliminar
$("#tblCitas tbody").on(
    "click",
    "button.eliminarFnt",
    async function()
    {
        let data_tabla = tblCitas.row($(this).parents("tr")).data();
        let id = data_tabla.id;
        delDialog(id);
    }
);

function delDialog(id){
    
    var n = new Noty({
        text: 'Estas seguro de eliminar esta cita?',
        type: "error",
        layout: "center",
        modal: "true",
        buttons: [
          Noty.button('SI', 'btn btn-success', async function () {
            
              
              const datos = new FormData();
              
              
              datos.append('id', id);

            try {
                const url = `${base_url}/Citas/delete`;
                const respuesta = await fetch(url, {
                    method: 'POST',
                    body: datos,
                })

                
                const resultado = await respuesta.json();
                
                console.log("no sea sapo");
                

                if(resultado) {
                    new Noty({
                        text: `${resultado.msg}`,
                        type: "success",
                        layout: "topRight",
                        theme: "metroui",
                        timeout: 1500,
                    }).show();
                    setTimeout(function(){
                        window.location.href = `${base_url}/Citas`;        
                    },2500);  
                }
            } catch (error) {
                console.log(error);
                new Noty({
                    text: `Hubo un problema al eliminar este registro`,
                    type: "warning",
                    layout: "topRight",
                    theme: "metroui",
                    timeout: 2000,
                }).show();
            }

            n.close();
          }, {id: 'button1', 'data-status': 'ok'}),
      
          Noty.button('NO', 'btn btn-error', function () {
              console.log('button 2 clicked');
              n.close();
          })
        ]
      });
      n.show();
}
