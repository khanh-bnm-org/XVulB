<%@ page language="java" contentType="text/html" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
	<main role="main" class="container">
      <div class="row">
        <div class="col-md-8 blog-main">
          <h3 class="pb-3 mb-4 font-italic border-bottom">
            Welcome to XVulB
          </h3>
          
          
		<c:choose>
		    <c:when test="${post == null}">
		        <p> Post's not found </p>
		    </c:when>    
		    <c:otherwise>
		       <div class="blog-post">
		    		 <h2 class="blog-post-title"><c:out value="${post.title}"/></h2>
		    		 <p class="blog-post-meta"><c:out value="${post.createdDay}"/> by <a href="#"><c:out value="${post.createdBy}"/></a></p>
		    	   <div>
		         <c:out value="${post.content}"/>
		       </div>
		  </div>
		    </c:otherwise>
		</c:choose>

          <nav class="blog-pagination">
            <a class="btn btn-outline-primary" href="#">Older</a>
            <a class="btn btn-outline-secondary disabled" href="#">Newer</a>
          </nav>
        </div><!-- /.blog-main -->

        <aside class="col-md-4 blog-sidebar">
          <div class="p-3 mb-3 bg-light rounded">
            <h4 class="font-italic">About</h4>
            <p class="mb-0">Etiam porta <em>sem malesuada magna</em> mollis euismod. Cras mattis consectetur purus sit amet fermentum. Aenean lacinia bibendum nulla sed consectetur.</p>
          </div>

          <div class="p-3">
            <h4 class="font-italic">Archives</h4>
            <ol class="list-unstyled mb-0">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
            </ol>
          </div>
        </aside><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </main><!-- /.container -->
	
</t:wrapper>