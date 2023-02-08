let tblUser;

document.addEventListener("DOMContentLoaded",function(){
	setTimeout(()=>{
		$('#overlayU').hide();
	}, 700);
	tblUser = new DataTable("#tblUser",{
		aProcessing: true,
		aServerSide: true,
		//Opciones de lenguaje
		language: {
			url: `${base_url}/Assets/app/js/dataTables.spanish.json`
		},
		//Consultar los datos a la api
		ajax:{
			url:`${base_url}/Users/all`,
			dataSrc:"",
		},
		//Datos desde el servidor
		columns:[
			{data: `id`},
			{data: `idrol`},
			{data: `usuario`},
			{data: `email`},
			{data: `rol`},
			{data: `tf`},
			{
				defaultContent:"<div><button type='button' class='editarFnt btn btn-warning btn-xs'><i class='fa fa-edit'></i></button><button type='button' class='eliminarFnt btn btn-danger btn-xs'><i class='fa fa-remove'></i></button></div>"
            },
		],
		//Ocultar columnas
        columnDefs:[
            {
                targets:[0,1],
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




const formulario = document.getElementById('formulario');
const inputs = document.querySelectorAll('#formulario input');

const expresiones = {
	usuario: /^[a-zA-Z0-9\_\-]{4,16}$/, // Letras, numeros, guion y guion_bajo
	nombre: /^[a-zA-ZÀ-ÿ\s]{1,40}$/, // Letras y espacios, pueden llevar acentos.
	password: /^.{4,12}$/, // 4 a 12 digitos.
	correo: /^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$/,
	telefono: /^[01246]{4}-[0-9]{7}$/ // 7 a 14 numeros.
}

const campos = {
	nombre: false,
	correo: false,
	telefono: false
}

const validarFormulario = (e) => {
	switch (e.target.name) {
		case "usuario":
			validarCampo(expresiones.usuario, e.target, 'usuario');
		break;
		case "correo":
			validarCampo(expresiones.correo, e.target, 'correo');
		break;
		case "telefono":
			validarCampo(expresiones.telefono, e.target, 'telefono');
		break;
	}
}

const validarCampo = (expresion, input, campo) => {
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





document.addEventListener(
"DOMContentLoaded", 
function(){

},
false
);

//Ocultar el campo id del form
$("#id").hide();

//agregar
$("#buttonAdd").on(
    "click",
    "button.btn",function(){
        openModal();
        $('#modal-header').css('background', '#4FCFC3')
        $(".modal-title").text('Nuevo Usuario');
        $(".id").hide();
        $("#enviar").show();
        document.getElementById("enviar").style.width = '100vh';
        $("#edit").hide();
        $("#delete").hide();
        formulario.reset();
        
    }
    );


let refresh = document.getElementById('refresh');
refresh.addEventListener('click', _ => {
            formulario.reset();
})


async function save(e){
    event.preventDefault();
    formRegister = document.querySelector('#formulario');
    let datos = new FormData(formRegister);

    try {
        const url = `${base_url}/Users/save`;
    
        const respuesta = await fetch(url,{
            method: "POST",
            body: datos,
        });
    
        const result = await respuesta.json();

        if (result.status) {
            console.log(result);
            formRegister.reset(); 

            var n = new Noty({
                text: `${result.msg} <br> Se ha enviado la contraseña a el correo electronico`,
                type: "success",
                layout: "center",
                modal: "true",
                buttons: [
                    Noty.button('ACEPTAR', 'btn btn-success', async function () {
                    window.location.href = `${base_url}/Users`;  
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

function openModal()
    {   
        $('#newUser').modal('show');     
    }




//editar
$("#tblUser tbody").on(
    "click",
    "button.editarFnt",
    async function()
    {
        openModal();
        $('#modal-header').css('background', '#FFD24C')
        $(".modal-title").text('Editar Usuario');
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
$("#tblUser tbody").on(
    "click",
    "button.eliminarFnt",
    async function()
    {
        let data_tabla = tblUser.row($(this).parents("tr")).data();
        let id = data_tabla.id;
        delDialog(id);
    }
);

function delDialog(id){
    var n = new Noty({
        text: 'Estas seguro de eliminar a este paciente?',
        type: "error",
        layout: "center",
        modal: "true",
        buttons: [
          Noty.button('YES', 'btn btn-success', async function () {
              
            const datos = new FormData();

            datos.append('id', id);

            try {
                const url = `${base_url}/Users/delete`;
                const respuesta = await fetch(url, {
                    method: 'POST',
                    body: datos,
                })
                const resultado = await respuesta.json();

                if(resultado) {
                    new Noty({
                        text: `${resultado.msg}`,
                        type: "success",
                        layout: "topRight",
                        theme: "metroui",
                        timeout: 1500,
                    }).show();
                    setTimeout(function(){
                        window.location.href = `${base_url}/Users`;        
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


$(document).ready(function() {
    rolList();
});

function rolList(){
    $.ajax({
        url:`${base_url}/Users/rolList`,
        type:'POST'
    }).done(function(resp){
        
        var data = JSON.parse(resp)
        var cadena = "";
        if (data.length > 0) {
            for (var i = 0; i < data.length; i++) {
                cadena +="<option title='"+data[i]["descripcion"]+"' value='"+data[i]["id_rol"]+"'>"+data[i]["nombre_rol"]+"</option>";
                
            }
            $("#rol").html(cadena);
        } else {
            cadena +="<option value=''>No se encontraron registros</option>";
            $("#rol").html(cadena);
        }
    })
}