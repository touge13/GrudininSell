<#macro template user>
    <!doctype html>
    <html lang="ru">
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="/static/css/style.css">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
              integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
              crossorigin="anonymous">

        <title>GrudininSell</title>
    </head>
    <body>
    <nav class="navbar navbar-dark bg-dark">
        <div class="container-fluid">
            <a href="/">
                <span class="navbar-brand mb-0 h1">GrudininSell</span>
            </a>
            <#if user.email??>
                <div class="dropdown text-end">
                            <!-- Font Awesome is a great free icon font. -->
                            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet"/>
                              <div class="buttonmsg">
                              <a href="http://localhost:3000" class="icon-block">
                                <i class="fa fa-comments"></i>
                                <span class="button__badge">4</span>
                              </a>
                              </div>
                    <a href="/profile">
                        <img src="/static/images/avatar.png" alt="mdo"
                             width="32" height="32" class="rounded-circle">
                    </a>
                </div>
            <#else>
                <button class="btn btn-light my-2 my-sm-0" type="button"
                        onclick="window.location.href = '/login'">
                    Войти
                </button>
            </#if>
        </div>
    </nav>
    <div class="container mt-4">
        <#nested/>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    </body>

    <style>
           .buttonmsg {
             color: white;
             display: inline-block;
             position: relative;
             padding: 2px 5px;
             font-size: 25px;
           }

           .fa-comments:hover {
             color: white;
           }

           .button__badge {
             background-color: #fa3e3e;
             border-radius: 100px;
             color: white;

             padding: 2px 5px;
             font-size: 10px;

             position: absolute;
             top: 5;
             right: 0;
           }
            .form-row, h1, h2, h3, h4, h5, a, p, label, #text, b, body{
                color:white;
            }
            .card-img-top{
                object-fit: cover;
                height: 275px;
            }
            .card-columns{
                width:100%;
                -webkit-column-count: 4;
            }
            body{
                background-color:#202124;
            }
            .btn {
                border-radius: 10px
            }
    </style>
    <style type="text/css">
        .input-file {
        	position: relative;
        	display: inline-block;
        }
        .input-file span {
        	position: relative;
        	display: inline-block;
        	cursor: pointer;
        	outline: none;
        	text-decoration: none;
        	font-size: 14px;
        	vertical-align: middle;
        	color: rgb(255 255 255);
        	text-align: center;
        	border-radius: 4px;
        	background-color: #419152;
        	line-height: 22px;
        	height: 40px;
        	padding: 10px 20px;
        	box-sizing: border-box;
        	border: none;
        	margin: 0;
        	transition: background-color 0.2s;
        }
        .input-file input[type=file] {
        	position: absolute;
        	z-index: -1;
        	opacity: 0;
        	display: block;
        	width: 0;
        	height: 0;
        }

        /* Focus */
        .input-file input[type=file]:focus + span {
        	box-shadow: 0 0 0 0.2rem rgba(0,123,255,.25);
        }

        /* Hover/active */
        .input-file:hover span {
        	background-color: #59be6e;
        }
        .input-file:active span {
        	background-color: #2E703A;
        }

        /* Disabled */
        .input-file input[type=file]:disabled + span {
        	background-color: #eee;
        }

    </style>


     <!-- добавление товара -->
    <script src="https://snipp.ru/cdn/jquery/2.1.1/jquery.min.js"></script>
    <script>
    $('.input-file input[type=file]').on('change', function(){
    	let file = this.files[0];
    	$(this).next().html(file.name);
    });

    $(document).ready(function(){
        $('#image1').change(function(){
            $("#frames1").html('');
            for (var i = 0; i < $(this)[0].files.length; i++) {
                $("#frames1").append('<img src="'+window.URL.createObjectURL(this.files[i])+'" width="100px" height="100px"/>');
            }
        });
    });
    $(document).ready(function(){
            $('#image2').change(function(){
                $("#frames2").html('');
                for (var i = 0; i < $(this)[0].files.length; i++) {
                    $("#frames2").append('<img src="'+window.URL.createObjectURL(this.files[i])+'" width="100px" height="100px"/>');
                }
            });
        });
    $(document).ready(function(){
            $('#image3').change(function(){
                $("#frames3").html('');
                for (var i = 0; i < $(this)[0].files.length; i++) {
                    $("#frames3").append('<img src="'+window.URL.createObjectURL(this.files[i])+'" width="100px" height="100px"/>');
                }
            });
        });
    </script>

<!-- автозаполнение города -->
    <link rel="stylesheet" href="https://files.geotree.ru/jquery/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://files.geotree.ru/jquery/jquery-1.12.4.js" defer></script>
    <script src="https://files.geotree.ru/jquery/ui/1.12.1/jquery-ui.js" defer></script>
    <style>
      .ui-autocomplete-loading {
        background: white url("https://files.geotree.ru/jquery/ui/images/ui-anim_basic_16x16.gif") right center no-repeat;
      }
	  #place, #searchWord{
		width: 100%;
		font-weight: bolder;
		padding: 5px;
		border-radius: 5px;
	  }
    </style>
<script>
    var URL_ADDRESS_API="https://api.geotree.ru/address.php?types=address";
    var URL_PLACE_API="https://api.geotree.ru/search.php?levels=4";
    window.addEventListener("load", function(event) {
      autocomplete_init_place();
      autocomplete_init_address();
    });

    //Иницилизация параметров автозаполнения населённого пункта
    function autocomplete_init_place() {
      $("#place").autocomplete({
        source: URL_PLACE_API,
        minLength: 0, //минимальное количество символов для отображения подсказок
        delay: 0, //задержка отображения подсказок
        select: autocomplete_select_place //обработчик события выбора подсказки
      })
      //разделение каждой подсказку на значение и описание
      .autocomplete( "instance" )._renderItem = autocomplete_item_place;
    }


    //функция, разделяющая каждую подсказку для населённого пункта на значение и описание
    function autocomplete_item_place (ul,item){
      //значение, которое будет установлено в текстовое поле при выборе подсказки
      item.value=item.name_display;
      //html-код подсказки
      return jQuery( "<li>" )
        .append( "<div><span style='font-weight: bold'>" + item.value + "</span><br><span>" + item.description + "</span></div>" )
        .appendTo( ul );
    }

    //обработчик события выбора подсказки для населённого пункта
    function autocomplete_select_place(event, ui) {
      //при выборе населённого пункта изменяется источник подсказок для адреса
      //в соответствии с кодом ОКТМО выбранного населённого пункта
      $("#address").autocomplete("option", "source", URL_ADDRESS_API+"&oktmo="+ui.item.oktmo_short);
    }

</script>
    </html>
</#macro>