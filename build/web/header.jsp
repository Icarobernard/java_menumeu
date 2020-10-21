<%-- 
    Document   : header
    Created on : 18/06/2020, 18:52:34
    Author     : Samsung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="pt-br">

    <head>
        <title>MenuMeu</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Great+Vibes" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">

        <script>

            function funcao(id) {


                document.getElementById("test").innerHTML = id;
                document.getElementById("valor").value = id;
                var d = new Date();
                var horario = d.getHours() + ":" + d.getMinutes();
                document.getElementById("hora").value = horario;
                var mudaEstado = false;


            }
            (() => {




                const recognition = new webkitSpeechRecognition();
                recognition.interimResults = true;
                recognition.lang = "pt-BR";
                recognition.continuous = true;
                recognition.start();
                var segundos = 13000
                // This event happens when you talk in the microphone

                recognition.onresult = function (event) {

                    for (let i = event.resultIndex; i < event.results.length; i++) {

                        if (event.results[i].isFinal) {
                            // Here you can get the string of what you told
                            const content = event.results[i][0].transcript.trim();
                            output.textContent = content;


                            if (event.resultIndex >= 1) {
                                segundos = 15000
                            }

                            if (content.toLowerCase() === 'menu') {

                                alert("funfou");

                                var clique = document.getElementById("menu").click();

                            }

                            if (content.toLowerCase() === 'confirmar') {


                                var clique = document.getElementById("confirmarpedido").click();

                            } else {
                                var y = document.getElementById("textofalado").value = content;
                            }
                            var x = document.getElementById(content).click();


                        }

                    }
                };

            })();
        </script>
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.jsp">Menu<small>Meu</small></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                        aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>
                <span id="output" class="badge badge-dark"><img src="images/audio.png"></span>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li id="menu" class="nav-item"><a href="ProdutoController?acao=Only" class="nav-link">Menu</a></li>
                        <li class="nav-item"><a href="PedidoController?acao=Only" class="nav-link">Lista de pedido</a></li>
                        <li class="nav-item"><a class="nav-link"  data-toggle="modal" data-target="#exampleModal">
                                <svg width="2em" height="2em" viewBox="0 0 16 16" class="bi bi-box-arrow-in-right" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z"/>
                                <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z"/>
                                </svg> </a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-primary" id="exampleModalLabel">Login</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ...
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-success">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </body>