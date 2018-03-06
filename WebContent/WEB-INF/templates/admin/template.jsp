<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp" %>
<!-- header -->
<tiles:insertAttribute name="header"></tiles:insertAttribute>
<!-- /.header -->
    <div class="page-content">
    	<div class="row">
		  <div class="col-md-2">
		  	<div class="sidebar content-box" style="display: block;">
                <!-- Nav-bar -->
				<tiles:insertAttribute name="left-bar"></tiles:insertAttribute>
				<!-- /.nav-bar -->
             </div>
		  </div>
		  <div class="col-md-10">
				<tiles:insertAttribute name="body"></tiles:insertAttribute>
		  </div><!-- /.col-md-10 -->
		</div><!-- /.row -->
    </div><!-- /.page-content -->

    <!-- Footer -->
   <tiles:insertAttribute name="footer"></tiles:insertAttribute>
    <!-- /.footer -->