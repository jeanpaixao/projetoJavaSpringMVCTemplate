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
        <title>GFROTA - Médico - Cadatsro</title>
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
                        <h3><i class="fa fa-user-md"></i> Médico - Cadastro </h3>
                        <div class="breadcrumb-wrapper">
                            <a href="${pageContext.request.contextPath}/medico/lista"><button class="btn btn-primary" >Voltar</button></a>
                        </div>
                    </div> 
                    <div id="page-content">
                        <div class="col-lg-12">
                            <div class="panel">
                                <form id="perfilForm" method="POST" action="${pageContext.request.contextPath}/medico/inserir">

                                    <input name="id" type="hidden" value="${medico.id}"/>

                                    <div class="panel-body" style="display: block;">
                                        <div class="row">
                                            <div class="col-sm-8">
                                                <div class="form-group">
                                                    <label class="control-label">Nome</label>
                                                    <input name="descricao" value="${medico.descricao}" type="text" class="form-control" required/>
                                                </div>
                                            </div> 
                                            <div class="col-sm-1">
                                                <div class="form-group">
                                                    <label class="control-label">CRM</label>
                                                    <input name="crm" value="${medico.crm}" type="text" class="form-control" required/>
                                                </div>
                                            </div>
                                            <div class="col-sm-3">
                                                <label class="control-label">Status</label>
                                                <select name="status" class="form-control selectpicker" required>
                                                    <c:forEach items="${statusAll}" var="status" varStatus="stat" >  
                                                        <option  value="${status.id}" ${status.id == medico.status ?  'selected="selected"' : ''} >
                                                            ${status.descricao}
                                                        </option>
                                                    </c:forEach>
                                                </select>
                                            </div>

                                        </div>    
                                    </div>
                                    <div class="panel-footer text-right">                                              
                                                <button class="btn btn-success"  type="submit">Salvar</button>
                                    </div>

                                </form>

                                <!--===================================================-->
                                <!--End Block Styled Form -->
                            </div>                               
                        </div>
                    </div>
                </div>
            </div>
            <!--===================================================-->
            <!--END CONTENT CONTAINER-->
            <jsp:include page="../menu.jsp" />      
            <jsp:include page="../footer.jsp" />
        </div>


        <jsp:include page="../scripts.jsp" />



    </body>
</html>
