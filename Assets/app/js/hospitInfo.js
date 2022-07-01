let tblHospitInfo;
document.addEventListener("DOMContentLoaded",function(){
    tblHospitInfo = new DataTable("#tblHospitInfo",{
        aProcessing: true,
        aServerSide: true,
        //Opciones de lenguaje
        language: {
            url: `${base_url}/Assets/app/js/dataTables.spanish.json`
        },
        //Consultar los datos a la api
        ajax:{
            url:`${base_url}/HospitInfo/all`,
            dataSrc:"",
        },
        //Datos desde el servidor
        columns:[
            {data: `idpac`},
            {data: `cipac`},
            {data: `apellido`},
            {data: `nombre`},
            {data: `codhos`},
            {data: `fecha`},
            {data: `numcama`},
            {data: `codcon`},
            {data: `status`},
            {
                defaultContent:"<div><button type='button' class='editarFnt btn btn-warning btn-xs'><i class='fa fa-edit'></i></button><button type='button' class='eliminarFnt btn btn-danger btn-xs'><i class='fa fa-remove'></i></button></div>"
            },
        ],
        //Ocultar columnas
        columnDefs:[
            {
                targets:[0,4,7],
                visible:false,
                serchable:false,
            },
            { responsivePriority: 1, targets:  0},
            { responsivePriority: 2, targets:  4},
        ],
        //Mostrar botones de exportacion
        dom:"lBfrtip",
        buttons:[
            
        ],
        lengthMenu:[
            [5,10,25,50,-1],
            [5,10,25,50,"All"],
        ],
        iDisplayLength:5,
        order:[[1,"asc"]],
    });

},false);

//abrir los modales
function openModal()
    {   
        $('#newHospitInfo').modal('show');     
    }

    //agregar
$("#buttonAdd").on(
    "click",
    "button.btn",function(){
        openModal();
        $('#modal-header').css('background', '#4FCFC3')
        $(".modal-title").text('Nueva Especialidad');
        $(".id").hide();
        $("#enviar").show();
        document.getElementById("enviar").style.width = '100vh';
        $("#edit").hide();
        $("#delete").hide();
        formulario.reset();
        
    }
    );

    $('#overlay').hide();
    $('#overlay1').hide();

    $("#tile1").on(
        "click",
        function(){
            $('#overlay').show();
            setTimeout(()=>{
                openModal();
                console.log("1 Segundo esperado")
            }, 700);
            setTimeout(()=>{
                $('#overlay').hide();
                console.log("1 Segundo esperado")
            },700);
            
        }
        
        );
        $("#tile2").on(
            "click",
            function(){
                event.preventDefault();
                $('#overlay1').show();
                setTimeout(()=>{
                    window.location.href = base_url+"/medicos";
                    console.log("1 Segundo esperado")
                }, 1000);
            }
            );
    