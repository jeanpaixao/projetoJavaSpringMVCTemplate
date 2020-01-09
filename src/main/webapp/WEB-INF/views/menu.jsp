<nav id="mainnav-container">
    <div id="mainnav">
        <!--Menu-->
        <!--================================-->
        <div id="mainnav-menu-wrap">
            <div class="nano">
                <div class="nano-content">
                    <ul id="mainnav-menu" class="list-group">
                        <!--Category name-->
                        <li class="list-header">MENU</li>                        <!--Menu list item-->
                        
                        <li>
                            <a href="${pageContext.request.contextPath}/index">
                                <i class="fa fa-bar-chart"></i>
                                <span class="menu-title">Análises</span>

                            </a>
                        </li> 
                      
                        <li>
                            <a href="javascript:void(0)">
                                <i class="fa fa-gears"></i>
                                <span class="menu-title">Tabelas de Apoio</span>
                                <i class="arrow"></i>
                            </a>
                            <!--Submenu-->
                            <ul class="collapse">
                                <!--<li><a href="${pageContext.request.contextPath}/condutor/cadastro"><i class="fa fa-user"></i>Condutor</a></li>-->
                                <li><a href="${pageContext.request.contextPath}/medico/lista"><i class="fa fa-user-md"></i>Médico</a></li>
                                
                            </ul>
                        </li>



                        <li>
                            <a href="javascript:void(0)">
                                <i class="fa fa-gears"></i>
                                <span class="menu-title">Gerencial</span>
                                <i class="arrow"></i>
                            </a>
                            <ul>
                                <li>
                                    <a href="${pageContext.request.contextPath}/usuario/lista">
                                        <i class="fa fa-users"></i>
                                        <span class="menu-title">Usuário</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="${pageContext.request.contextPath}/usuario-perfil/lista">
                                        <i class="fa fa-bookmark"></i>
                                        <span class="menu-title">Perfil do Usuário</span>
                                    </a>
                                </li>
                            </ul>
                        </li> 
                    </ul>
                </div>
            </div>
        </div>
    </div>
</nav>
