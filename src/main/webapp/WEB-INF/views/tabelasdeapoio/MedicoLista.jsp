<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<html lang="pt-br">   
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>GFROTA - Médico - Lista</title>
        <link rel="shortcut icon" href="img/favicon.ico"/>
        <!--STYLESHEET-->
        <!--=================================================-->
        <!--Roboto Slab Font [ OPTIONAL ] -->
        <link href="http://fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700" rel="stylesheet"/>
        <link href="http://fonts.googleapis.com/css?family=Roboto:500,400italic,100,700italic,300,700,500italic,400" rel="stylesheet"/>
        <!--Bootstrap Stylesheet [ REQUIRED ]-->
        <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet"/>
        <!--Jasmine Stylesheet [ REQUIRED ]-->
        <link href="${pageContext.request.contextPath}/resources/css/style.css" rel="stylesheet"/>
        <!--Font Awesome [ OPTIONAL ]-->
        <link href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
        <!--Switchery [ OPTIONAL ]-->
        <link href="${pageContext.request.contextPath}/resources/plugins/switchery/switchery.min.css" rel="stylesheet"/>
        <!--Bootstrap Select [ OPTIONAL ]-->
        <link href="${pageContext.request.contextPath}/resources/plugins/bootstrap-select/bootstrap-select.min.css" rel="stylesheet"/>
        <!--Bootstrap Table [ OPTIONAL ]-->
        <link href="${pageContext.request.contextPath}/resources/plugins/datatables/media/css/dataTables.bootstrap.css" rel="stylesheet"/>
        <link href="${pageContext.request.contextPath}/resources/plugins/datatables/extensions/Responsive/css/dataTables.responsive.css" rel="stylesheet"/>
        <!--Demo [ DEMONSTRATION ]-->
        <link href="${pageContext.request.contextPath}/resources/css/demo/jasmine.css" rel="stylesheet"/>
        <!--SCRIPT-->
        <!--=================================================-->
        <!--Page Load Progress Bar [ OPTIONAL ]-->
        <link href="${pageContext.request.contextPath}/resources/plugins/pace/pace.min.css" rel="stylesheet"/>
        <script src="${pageContext.request.contextPath}/resources/plugins/pace/pace.min.js"></script>
    </head>
    <body>
        <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
            <jsp:include page="../navbar.jsp" />
            <div class="boxed">
                <div id="content-container">    
                    <div class="pageheader">
                        <h3>
                            <i class="fa fa-users"></i> ${telaDescricao}
                            <div class="pull-right">
                                <a href="${pageContext.request.contextPath}/medico/cadastro">
                                    <button type="button" class="btn btn-primary btn-icon fa fa-plus" ></button>
                                </a>  
                            </div>
                        </h3>        
                    </div> 
                    <div id="page-content">
                        <div class="panel" style="">                            
                            <div class="panel-body">
                                <table width="100%" id="demo-dt-selection" class="table table-striped table-bordered">
                                    <thead>			                
                                        <tr>
                                            <th></i>Id</th>
                                            <th><i class="fa fa-fw fa-user text-muted hidden-md hidden-sm hidden-xs"></i>Nome</th>
                                            <th></i>Crm</th>
                                            <th></i>Status</th>
                                            <th class="min-desktop">Ação</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach  items="${medicos}" var="medico" varStatus="stat">
                                            <tr>
                                                <td>${medico.id}</td>
                                                <td>${medico.descricao}</td>
                                                <td>${medico.crm}</td>

                                                <td><c:if test="${medico.status == 1}">
                                                        <c:out value="Ativo"/>   
                                                    </c:if>
                                                    <c:if test="${medico.status == 0}">
                                                        <c:out value="Inativo"/>   
                                                    </c:if>
                                                    <c:if test="${medico.status == 2}">
                                                        <c:out value="Bloqueado"/>   
                                                    </c:if>
                                                </td>
                                                <td align="center">

                                                    <a href="#" onclick="javascript:editaMedico('${medico.id}')">
                                                        <button class="btn btn-default" title="Editar"><i class="fa fa-edit"></i></button>
                                                    </a>

                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!--===================================================-->
                <!--END CONTENT CONTAINER-->
                <jsp:include page="../menu.jsp" />                
            </div>
            <jsp:include page="../footer.jsp" />
        </div>  

        <form id="frm-carrega-cadastro-medico" method="POST" action="${pageContext.request.contextPath}/medico/cadastro">
            <input type="hidden"  name="id"/>
        </form>


        <!--jQuery [ REQUIRED ]-->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-2.1.1.min.js"></script>
        <!--BootstrapJS [ RECOMMENDED ]-->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <!--Fast Click [ OPTIONAL ]-->
        <script src="${pageContext.request.contextPath}/resources/plugins/fast-click/fastclick.min.js"></script>
        <!--Jasmine Admin [ RECOMMENDED ]-->
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
        <!--Switchery [ OPTIONAL ]-->
        <script src="${pageContext.request.contextPath}/resources/plugins/switchery/switchery.min.js"></script>
        <!--Bootstrap Select [ OPTIONAL ]-->
        <script src="${pageContext.request.contextPath}/resources/plugins/bootstrap-select/bootstrap-select.min.js"></script>
        <!--DataTables [ OPTIONAL ]-->
        <script src="${pageContext.request.contextPath}/resources/plugins/datatables/media/js/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/resources/plugins/datatables/media/js/dataTables.bootstrap.js"></script>
        <script src="${pageContext.request.contextPath}/resources/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
        <!--Fullscreen jQuery [ OPTIONAL ]-->
        <script src="${pageContext.request.contextPath}/resources/plugins/screenfull/screenfull.js"></script>
        <!--Demo script [ DEMONSTRATION ]-->
        <script src="${pageContext.request.contextPath}/resources/js/demo/jasmine.js"></script>

        <script language="javascript">
                                                        function editaMedico(idMedico) {
                                                            document.querySelector("[name='id']").value = idMedico;
                                                            document.getElementById("frm-carrega-cadastro-medico").submit();
                                                        }

        </script>
    </body>
</html>
