<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<html lang="pt-br">   
    <head>
        <jsp:include page="head.jsp" />
    </head>
    <body>
        <div id="container" class="effect mainnav-lg navbar-fixed mainnav-fixed">
            <jsp:include page="navbar.jsp" />
            <div class="boxed">
                <div id="content-container">

                    <div id="page-content">
                        <div class="cls-content">
                            <div class="error-full-page">
                                <!-- start: 404 -->
                                <div class="col-sm-12 page-error pad-30">
                                    <div class="error-number text-primary"> Página não Permitida. </div>
                                    <div class="error-details col-sm-6 col-sm-offset-3">

                                        <p> Você não tem autorização de acessar essa página. Entre em contado com o administrador do sistema.</p>
                                    </div>
                                </div>
                                <!-- end: 404 -->
                            </div>
                        </div>
                    </div>
                    <!--===================================================-->
                    <!--END CONTENT CONTAINER-->
                    <jsp:include page="menu.jsp" />                
                </div>
                <jsp:include page="footer.jsp" />
            </div>  
            <jsp:include page="scripts.jsp" />
    </body>
</html>
