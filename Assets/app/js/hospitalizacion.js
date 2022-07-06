let tblHospitalizacion;
document.addEventListener("DOMContentLoaded",function(){
    tblHospitalizacion = new DataTable("#tblHospitalizacion",{
        aProcessing: true,
        aServerSide: true,
        //Opciones de lenguaje
        language: {
            url: `${base_url}/Assets/app/js/dataTables.spanish.json`
        },
        //Consultar los datos a la api
        ajax:{
            url:`${base_url}/Hospitalizacion/all`,
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
        $('#newHospitalizacion').modal('show');     
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

    $('#overlay1').hide();
    $('#overlay2').hide();
    $('#overlay3').hide();
    $('#overlay4').hide();

    $("#tile1").on(
        "click",
        function(){
            $('#overlay1').show();
            setTimeout(()=>{
                openModal();
                console.log("1 Segundo esperado")
            }, 700);
            setTimeout(()=>{
                $('#overlay1').hide();
                console.log("1 Segundo esperado")
            },700);
            
        }
        
        );
        $("#tile2").on(
            "click",
            function(){
                event.preventDefault();
                $('#overlay2').show();
                setTimeout(()=>{
                    window.location.href = base_url+"/medicos";
                    console.log("1 Segundo esperado")
                }, 1000);
            }
            );
            $("#tile3").on(
            "click",
            function(){
                event.preventDefault();
                $('#overlay3').show();
                setTimeout(()=>{
                    window.location.href = base_url+"/medicos";
                    console.log("1 Segundo esperado")
                }, 1000);
            }
            );
            $("#tile4").on(
            "click",
            function(){
                event.preventDefault();
                $('#overlay4').show();
                setTimeout(()=>{
                    window.location.href = base_url+"/medicos";
                    console.log("1 Segundo esperado")
                }, 1000);
            }
            );
    
            function listarCTO(){
                $.ajax({
                    url:`${base_url}/hospitalizacion/listarCTO`,
                    type:'POST'
                }).done(function(resp){
                    var data = JSON.parse(resp)
                    var cadena = "";
                    if (data.length > 0) {
                        for (var i = 0; i < data.length; i++) {
                            cadena +="<option value='"+data[i]["TMEDO_CE"]+"'>"+data[i]["TMEDO_NO"]+"</option>";
                            
                        }
                        $("#sel_cuarto").html(cadena);
                        var idedo = $("#sel_cuarto").val();
                        listarMUN(idedo);
                    } else {
                        cadena +="<option value=''>No se encontraron registros</option>";
                        $("#sel_cuarto").html(cadena);
                    }
                })
            }
            
            function listarCAM(idedo, mun){
                $.ajax({
                    url:`${base_url}/hospitalizacion/listarCAM`,
                    type:'POST',
                    data:{
                        idedo:idedo
                    }
                }).done(function(resp){
                    var data = JSON.parse(resp)
                    var cadena = "";
            
                    if (data.length > 0) {
                        for (var i = 0; i < data.length; i++) {
                            cadena +="<option value='"+data[i]["TMMUN_CTO"]+"'>"+data[i]["TMMUN_CTO"]+"</option>";
                            
                        }
                        $("#sel_cama").html(cadena);
                    } else {
                        cadena +="<option value=''>No se encontraron registros</option>";
                        $("#sel_cama").html(cadena);
                    }
                    if(mun){ $("#sel_cama").val(mun); }
                })
            
            }
            
            
            function changeCTO(mun){
                   
                var idedo = $("#sel_cuarto").val();
                listarMUN(idedo, mun);
                
                
            }
            
            
            $(document).ready(function() {
                listarCTO();
            });
                $("#sel_cuarto").change(function(){
                var idedo= $("#sel_cuarto").val();
                listarMUN(idedo);
            })
            
            