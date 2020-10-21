<%@page import="java.util.List"%>
<%@page import="model.Produto"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html lang="pt-br">

    <head>
 <%@include file ="header.jsp" %>
 
 
    </head>

    <body id="fora">
        

        
        <div  class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div style="background-color: black " class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Pedido</h5>
                        <p align="center" id="test"></p>
                        <button id="fechar" type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                     <form action="PedidoController?acao=confirmaOperacao&operacao=Incluir" method="POST" class="appointment-form">
                    <div class="modal-body">
                       
                            <div class="form-group">
                               <!-- <label  for="recipient-name" class="col-form-label">PEDIDO </label> -->
                                <input  hidden name="txtNome" id="valor" type="text" class="form-control" id="recipient-name">
                            </div>
                            
                            <div class="form-group">
                               <!-- <label  for="recipient-name" class="col-form-label">PEDIDO </label> -->
                                <input hidden name="txtPreco" id="hora" type="text" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label for="message-text" class="col-form-label">FALE SEU NOME</label>
                               <input name="txtDescricao" class="form-control" id="textofalado"> 
                               
                            </div>
                            
                            
                      
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                      <input id="confirmarpedido" type="submit" value="Confirmar" class="btn btn-success">
                        
                    </div>
                     </form>
                </div>
            </div>
        </div>


        <!-- END nav -->



        <section class="home-slider owl-carousel">

            <div class="slider-item" style="background-image: url(images/bg_3.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Bem-Vindo </h1>

                            <h2 class="breadcrumbs">Sistema por comando de voz 
                            </h2>
                        </div>

                    </div>

                </div>
            </div>
            <div class="slider-item" style="background-image: url(images/bg_.jpg);" data-stellar-background-ratio="0.5">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row slider-text justify-content-center align-items-center">

                        <div class="col-md-7 col-sm-12 text-center ftco-animate">
                            <h1 class="mb-3 mt-5 bread">Tutorial </h1>

                            <p class="breadcrumbs">MENU <span> AJUDA</span>
                            </p>
                            <p class="breadcrumbs">CONFIRMAR <span>CANCELAR</span>
                            </p>
                        </div>

                    </div>

                </div>
            </div>
        </section>

        <section class="ftco-intro">
            <div class="container-wrap">

                <div class="wrap d-md-flex align-items-xl-end">
                    <div class="info">
                        <div class="row no-gutters">
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-phone"></span></div>
                                <div class="text">
                                    <h3>000 (123) 456 7890</h3>
                                    <p>A small river named Duden flows by their place and supplies.</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-my_location"></span></div>
                                <div class="text">
                                    <h3>198 West 21th Street</h3>
                                    <p> 203 Fake St. Mountain View, San Francisco, California, USA</p>
                                </div>
                            </div>
                            <div class="col-md-4 d-flex ftco-animate">
                                <div class="icon"><span class="icon-clock-o"></span></div>
                                <div class="text">
                                    <h3>Open Monday-Friday</h3>
                                    <p>8:00am - 9:00pm</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="menu" class="book p-4">
                        <h3>Cadastrar prato</h3>
                        <form action="ProdutoController?acao=confirmaOperacao&operacao=Incluir" method="POST" class="appointment-form">

                            <input input type="HIDDEN" name="id"
                                   required value="${produto.id}"
                                   <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                   <div class="d-md-flex">
                                       <div class="form-group">
                                           <input name="txtNome" type="text" class="form-control" placeholder="Nome da refeição"
                                                  required value="${produto.nome}"
                                           <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                       </div>
                                       <div class="form-group ml-md-4">
                                           <input name="txtDescricao" type="text" class="form-control" placeholder="Descrição"
                                                  required value="${produto.descricao}"
                                           <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                       </div>

                                       <div class="form-group ml-md-4">
                                           <input name="txtPreco" type="text" class="form-control" placeholder="Preço"
                                                  required value="${produto.preco}"
                                           <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                       </div>
                                   </div>
                                   <div class="d-md-flex">


                                       <div class="form-group ml-md-4">
                                           <input name="txtFoto" type="text" class="form-control" placeholder="Link da foto"
                                                  required value="${produto.foto}"
                                           <c:if test="${operacao == 'Excluir'}"> readonly</c:if>>
                                       </div>
                                   </div>
                                   <div class="d-md-flex">

                                       <div class="form-group ml-md-4">
                                           <input type="submit" value="Cadastrar" class="btn btn-white py-3 px-4">
                                       </div>
                                   </div>
                            </form>
                        </div>
                    </div>
                </div>
            </section>
           
           <button hidden type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Falar com @mdo</button>
            <section class="ftco-section">
                <div class="container">
                    
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Discover</span>
                    <h2 class="mb-4">Nossos produtos</h2>

                </div>
            </div>

                    <div class="row">

                    <c:forEach items="${produtos}" var="produto">
                        <div class="col-md-6 mb-2 ">


                            <a style="color: #00F5FF " href="ProdutoController?acao=confirmaOperacao&operacao=Excluir&id=<c:out
                                   value="${produto.id}" />" >Excluir</a>
                            <a id="${produto.nome}" href="#" onclick="funcao(this.id)"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">
                                <div class="pricing-entry d-flex ftco-animate">
                                    <div class="img" style="background-image: url(${produto.foto});"></div>
                                    <div class="desc pl-3">
                                        <div class="d-flex text align-items-center">
                                            <h3 id="nome"><span>${produto.nome}</span></h3>
                                            <span id="preco" class="price">R$${produto.preco}</span>
                                        </div>
                                        <div class="d-block">
                                            <p id="descricao">${produto.descricao}</p>
                                        </div>
                                    </div>

                                </div>
                            </a>



                        </div>
                    </c:forEach>
                    <!--
               <div class="col-md-6 mb-5 pb-3">
                    <h3 class="mb-5 heading-pricing ftco-animate">Main Dish</h3>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dish-5.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Sea Trout</span></h3>
                                <span class="price">$49.91</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dish-6.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Roasted Beef</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dish-7.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Butter Fried Chicken</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dish-8.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Chiken Filet</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <h3 class="mb-5 heading-pricing ftco-animate">Desserts</h3>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dessert-1.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Cornish - Mackerel</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dessert-2.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Roasted Steak</span></h3>
                                <span class="price">$29.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dessert-3.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Seasonal Soup</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/dessert-4.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Chicken Curry</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <h3 class="mb-5 heading-pricing ftco-animate">Drinks</h3>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/drink-5.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Sea Trout</span></h3>
                                <span class="price">$49.91</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/drink-6.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Roasted Beef</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/drink-7.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Butter Fried Chicken</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                    <div class="pricing-entry d-flex ftco-animate">
                        <div class="img" style="background-image: url(images/drink-8.jpg);"></div>
                        <div class="desc pl-3">
                            <div class="d-flex text align-items-center">
                                <h3><span>Chiken Filet</span></h3>
                                <span class="price">$20.00</span>
                            </div>
                            <div class="d-block">
                                <p>A small river named Duden flows by their place and supplies</p>
                            </div>
                        </div>
                    </div>
                </div>
                    
                    --!>
            </div>
        </div>
    </section>

    <section class="ftco-menu mb-5 pb-5">
        <div class="container">
            <div class="row justify-content-center mb-5">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Discover</span>
                    <h2 class="mb-4">Our Products</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there
                        live the blind texts.</p>
                </div>
            </div>
            <div class="row d-md-flex">
                <div class="col-lg-12 ftco-animate p-md-5">
                    <div class="row">
                        <div class="col-md-12 nav-link-wrap mb-5">
                            <div class="nav ftco-animate nav-pills justify-content-center" id="v-pills-tab"
                                 role="tablist" aria-orientation="vertical">
                                <a class="nav-link active" id="v-pills-1-tab" data-toggle="pill" href="#v-pills-1"
                                   role="tab" aria-controls="v-pills-1" aria-selected="true">Main Dish</a>

                                <a class="nav-link" id="v-pills-2-tab" data-toggle="pill" href="#v-pills-2" role="tab"
                                   aria-controls="v-pills-2" aria-selected="false">Drinks</a>

                                <a class="nav-link" id="v-pills-3-tab" data-toggle="pill" href="#v-pills-3" role="tab"
                                   aria-controls="v-pills-3" aria-selected="false">Desserts</a>
                            </div>
                        </div>
                        <div class="col-md-12 d-flex align-items-center">

                            <div class="tab-content ftco-animate" id="v-pills-tabContent">

                                <div class="tab-pane fade show active" id="v-pills-1" role="tabpanel"
                                     aria-labelledby="v-pills-1-tab">
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-1.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-2.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-3.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-4.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-5.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dish-6.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Grilled Beef</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="v-pills-2" role="tabpanel"
                                     aria-labelledby="v-pills-2-tab">
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-1.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Lemonade Juice</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-2.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Pineapple Juice</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-3.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Soda Drinks</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-4.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Lemonade Juice</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-5.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Pineapple Juice</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/drink-6.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Soda Drinks</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="tab-pane fade" id="v-pills-3" role="tabpanel"
                                     aria-labelledby="v-pills-3-tab">
                                    <div class="row">
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-1.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-2.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-3.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-4.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-5.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 text-center">
                                            <div class="menu-wrap">
                                                <a href="#" class="menu-img img mb-4"
                                                   style="background-image: url(images/dessert-6.jpg);"></a>
                                                <div class="text">
                                                    <h3><a href="#">Hot Cake Honey</a></h3>
                                                    <p>Far far away, behind the word mountains, far from the countries
                                                        Vokalia and Consonantia.</p>
                                                    <p class="price"><span>$2.90</span></p>
                                                    <p><a href="#" class="btn btn-primary btn-outline-primary">Add to
                                                            cart</a></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="ftco-footer ftco-section img">
        <div class="overlay"></div>
        <div class="container">
            <div class="row mb-5">
                <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">About Us</h2>
                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,
                            there live the blind texts.</p>
                        <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Recent Blog</h2>
                        <div class="block-21 mb-4 d-flex">
                            <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a>
                                </h3>
                                <div class="meta">
                                    <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                </div>
                            </div>
                        </div>
                        <div class="block-21 mb-4 d-flex">
                            <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
                            <div class="text">
                                <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control about</a>
                                </h3>
                                <div class="meta">
                                    <div><a href="#"><span class="icon-calendar"></span> Sept 15, 2018</a></div>
                                    <div><a href="#"><span class="icon-person"></span> Admin</a></div>
                                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4 ml-md-4">
                        <h2 class="ftco-heading-2">Services</h2>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">Cooked</a></li>
                            <li><a href="#" class="py-2 d-block">Deliver</a></li>
                            <li><a href="#" class="py-2 d-block">Quality Foods</a></li>
                            <li><a href="#" class="py-2 d-block">Mixed</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 mb-5 mb-md-5">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Have a Questions?</h2>
                        <div class="block-23 mb-3">
                            <ul>
                                <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain
                                        View, San Francisco, California, USA</span></li>
                                <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929
                                            210</span></a></li>
                                <li><a href="#"><span class="icon icon-envelope"></span><span
                                            class="text">info@yourdomain.com</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 text-center">

                    <p>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                    is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com"
                                                                                     target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
                </div>
            </div>
        </div>
    </footer>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
        <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
        <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00" /></svg></div>


    <script src="js/jquery.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/bootstrap-datepicker.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/scrollax.min.js"></script>
    <script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>

</body>

</html>