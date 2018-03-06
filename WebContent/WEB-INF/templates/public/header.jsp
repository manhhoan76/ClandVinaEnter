<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<title>CLand | VinaEnter Edu</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!--Oswald Font -->
		<link href='http://fonts.googleapis.com/css?family=Oswald:400,300,700' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/templates/public/css/tooltipster.css" />
		<!-- home slider-->
		<link href="<%=request.getContextPath() %>/templates/public/css/pgwslider.css" rel="stylesheet">
		<!-- Font Awesome -->
		<link rel="stylesheet" href="<%=request.getContextPath() %>/templates/public/css/font-awesome.min.css">
		<link href="<%=request.getContextPath() %>/templates/public/style.css" rel="stylesheet" media="screen">	
		<link href="<%=request.getContextPath() %>/templates/public/responsive.css" rel="stylesheet" media="screen">		
	</head>

	<body>
	
		<section id="header_area">
			<div class="wrapper header">
				<div class="clearfix header_top">
					<div class="clearfix logo floatleft">
						<a href="index.php"><h1><span>C</span>Land</h1></a>
					</div>
					<div class="clearfix search floatright">
						<form>
							<input type="text" placeholder="Search"/>
							<input type="submit" />
						</form>
					</div>
				</div>
				<div class="header_bottom">
					<nav>
						<ul id="nav">
							<li><a href="index.php">Trang chủ</a></li>
							<li id="dropdown"><a href="cat.php">Bất động sản</a>
								<ul>
									<li><a href="cat.php">Danh mục 1</a></li>
									<li><a href="cat.php">Danh mục 2</a></li>
									<li><a href="cat.php">Danh mục 3</a></li>
									<li><a href="cat.php">Danh mục 4</a></li>
								</ul>
							</li>
							<li><a href="single.php">Giới thiệu</a></li>
							<li><a href="contact.php">Liên hệ</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</section>