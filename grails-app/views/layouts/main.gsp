<!DOCTYPE HTML>

<html>
<head>
	<asset:stylesheet src="bootstrap.min.css"/>
	<asset:stylesheet src="bootstrap-theme.min.css"/>
	<g:layoutHead/>
	<!-- HTML 5 shim for IE backwards compatibility -->
    <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
		    <div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
		      	</button>
		      	<a class="navbar-brand" href="/blog">myBlog</a>
		    </div>
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<form class="navbar-form navbar-left" role="search" action="/blog/BlogPost/searchResults">
					<div class="input-group">
				        <input name="search" type="text" class="form-control" placeholder="Search for...">
				        <span class="input-group-btn">
	        				<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
	        			</span>
        			</div>
      			</form>
		      	<ul class="nav navbar-nav navbar-right">
					<g:if test="${session.user}">
		        	<li><a>Hello, ${session.user}!</a></li>
		        	<li><a href="/blog/blogPost/newPost">New Post</a></li>
		        	<li><a href="/blog/user/doLogout">Logout</a></li>
					</g:if>
					<g:else>
					<li><a href="/blog/user/doSignUp">SignUp</a></li>
		        	<li><a href="/blog/user/login">Login</a></li>
		        	</g:else>
		      	</ul>
   			</div>
  		</div>
	</nav>
<div class="container">
<g:layoutBody/>
</div>
<asset:javascript src="jquery.js"/>
<asset:javascript src="bootstrap.min.js"/>
</body>
</html>
 
