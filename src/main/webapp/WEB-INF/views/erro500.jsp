<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@page contentType="text/html;charset=iso-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta charset="utf-8"/> 

<html>  
    <jsp:include page="head.jsp"/>

    <body>
        <!-- START OF CONTAINER -->
        <!--===================================================-->
        <div id="container" class="cls-container">
            <!-- CONTENT -->
            <!--===================================================-->
            <div class="cls-content">
                <div class="error-full-page">
                    <!-- start: 404 -->
                    <div class="col-sm-12 page-error pad-30">
                        <div class="error-number text-primary"> 500 </div>
                        <div class="error-details col-sm-6 col-sm-offset-3">
                            <h3> Ops!</ h3>
                                <p> Algo está errado!
                                    <br/> Parece que quebramos alguma coisa no nosso sistema.
                                    </> Não entre em pânico, estamos consertando! Por favor, volte daqui a pouco.
                                    <br/>
                                    <br/>
                                    <br/>
                                    <br/>
                                    </>
                                    Detalhes técnicos: <br/>
                                    ${erro}

                                </p>
                        </div>
                    </div>
                    <!-- end: 404 -->
                </div>
            </div>
            <!--===================================================-->
            <!-- CONTENT -->
        </div>
        <!--===================================================-->
        <!-- END OF CONTAINER -->
        <!--JAVASCRIPT-->
        <!--=================================================-->
        <jsp:include page="scripts.jsp"/>
    </body>
</html>
