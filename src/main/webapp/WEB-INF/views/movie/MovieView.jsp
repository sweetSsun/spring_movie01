<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://kit.fontawesome.com/9125416ae4.js" crossorigin="anonymous"></script>

    <title>${movieInfo.mvname } 상세정보</title>

  	<%@ include file="/WEB-INF/views/includes/commonCss.jsp" %>
  	
  	    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath }/resources/css/sb-admin-2.min.css" rel="stylesheet">
  	<!-- Custom styles for this page -->
    <link href="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    
    <style>
	    .active {
	    	color: #fff;
		    background-color: #4e73df;
	    	border-color: #4e73df;
	    }
    </style>
    
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
		<%@ include file="/WEB-INF/views/includes/SideBar.jsp" %>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
				<%@ include file="/WEB-INF/views/includes/TopBar.jsp" %>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">영화 상세정보 페이지 - MovieView.jsp</h1>
                    </div>
					
					<!--  Content Row -->
					<div class="row">
                        <div class="col-lg-6">
                            <!-- Default Card Example -->
                            <div class="card mb-4">
                                <div class="card-body">
                                 	 <img class="img-fluid" alt="${movieInfo.mvname }" src="${movieInfo.mvposter }">
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <!-- Dropdown Card Example -->
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 text-gray-800 font-weight-bold">${movieInfo.mvname }</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body text-gray-800 text-sm">
                                	<div>
	                                    감독 : ${movieInfo.mvpd }
                                	</div>
	                                    <br>
                                	<div>
	                                    배우 : ${movieInfo.mvactor }
                                	</div>
	                                    <br>
                                	<div>
	                                    장르 : ${movieInfo.mvgenre } / 기본 : ${movieInfo.mvage }, ${movieInfo.mvtime }
                                	</div>
	                                    <br>
                                	<div>
	                                    개봉일 : ${movieInfo.mvopen }
                                	</div>
	                                    <br>
                                	<div>
                                		예매율 :  ${movieInfo.rerate }% |
                                		<i class='fa-regular fa-thumbs-up text-primary'></i> ${movieInfo.recommend1 }
                                		<i class='fa-regular fa-thumbs-down text-danger'></i> ${movieInfo.recommend0 }
                                	</div>
	                                    <br>
                                	<div class="mt-1" style="text-align: right;">
	                                	<a class="btn btn-sm btn-danger" href="#">예매하기</a>
                                	</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
				<!--  Content Row -->
                <div class="container-fluid">
					<div class="card shadow mb-4">
                        <!-- Card Header - Dropdown -->
                        <div class="card-header d-flex flex-row align-items-center justify-content-between">
                            <h6 class="m-0 text-gray-800 font-weight-bold"><i class="fas fa-comments fa-2x text-gray-300"></i>관람평 </h6>
                        </div>
                        <!-- Card Body -->
                        <div class="card-body text-gray-800 text-sm">
               				<div class="row">
                			<div class="col-12">
                	
                				<div class="row" id="reviewDiv">
		                        <!-- Pending Requests Card Example -->
                    	
                   				</div>
              				</div>
	           				</div>
              				<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
              				
              				</div>
       					</div>
   					</div>
       			 </div>
	    	</div>
            <!-- End of Main Content -->
	    </div>
        </div>
					

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

 
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath }/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath }/resources/js/sb-admin-2.min.js"></script>
    
     <!-- Page level plugins -->
    <script src="${pageContext.request.contextPath }/resources/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <!-- Page level custom scripts -->
    <script src="${pageContext.request.contextPath }/resources/js/demo/datatables-demo.js"></script>
    
    
    <script type="text/javascript">
    	var checkMsg = "${msg}"
    	console.log(checkMsg.length);
    	if(checkMsg.length > 0){
    		alert(checkMsg);
    	}
    	
    	function pageLink(pageObj){
    		console.log("관람평 페이지 이동 요청");
    		if(pageObj == null) {
    			page = 1;
    		} else {
	    		var page = $(pageObj).text();
	    		if (page == "<"){
	    			page = $("#previous").val();
	    		} else if (page == ">") {
	    			page = $("#next").val();
	    		}
    		}
    		console.log("요청페이지 : " + page);
    		$.ajax({
    			type: "get",
    			data: {"page":page, "mvcode":"${movieInfo.mvcode }" },
    			url: "pagingReview",
    			dataType: "json",
    			success: function(result){
    				console.log("연결 성공");
    				console.log(result);
    				$("#reviewDiv").text("");
    				output = "";
    				for (var i = 0; i < result.length; i++){
    					output += "<div class='col-6 mb-4' style='min-height:110px; max-height:110px;'>";
    					output += "<div class='card border-left-warning h-100 py-2'>";
						output += "<div class='card-body py-1'>";    					
						output += "<div class='row no-gutters'>";    	
						output += "<div class='mr-2'>";
						if(result[i].mprofile != null){
							if(result[i].mstate == 0){
								output += "<img class='img-profile rounded-circle img-fluid' style='width:50px; height:50px;' src='${pageContext.request.contextPath }/resources/mprofileUpload/"+result[i].mprofile+"'>";
							} else if(result[i].mstate == 2) {
								output += "<img class='img-profile rounded-circle img-fluid' style='width:50px; height:50px;' src='"+result[i].mprofile+"'>";
							}
						} else {
							output += "<img class='img-profile rounded-circle img-fluid' style='width:50px; height:50px;' src='${pageContext.request.contextPath }/resources/img/undraw_profile.svg'>";
						}
						output += "</div>";
						output += "<div class='col mr-2'>";
						output += "<div class='text-xs font-weight-bold text-warning text-uppercase mb-1'>"+ result[i].rvmid +"</div>";
						output += "<div class='h6 mb-3 font-weight-bold text-gray-800'>"+result[i].rvcomment+"</div>";
						output += "<div class='text-xs font-weight-bold text-uppercase mb-1'>"+result[i].rvdate+"</div>";
						output += "</div>";
						output += " <div class='col-auto'>";
						if(result[i].rvrecommend == 1){
							output += "<i class='fa-regular fa-thumbs-up fa-2x text-primary'></i>";
						} else {
							output += "<i class='fa-regular fa-thumbs-down fa-2x text-danger'></i>";
						}
						output += "</div>";
						output += "</div>";
						output += "</div>";
						output += "</div>";
						output += "</div>";
    				}
    				$("#reviewDiv").html(output);
    			}
    		});
    		
    		$.ajax({
    			type: "get",
    			data: {"page":page, "mvcode":"${movieInfo.mvcode }" },
    			url: "pagingNumber",
    			dataType: "json",
    			success: function(result){
    				console.log("페이지넘버링 : " + result.page);
    				$("#dataTable_paginate").text("");
    				output = "<ul class='pagination mr-auto ml-auto' style='justify-content:center;'>";
    				if (result.page == 1) {
	    				output += "<li class='paginate_button page-item previous disabled' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='0' tabindex='0' class='page-link'><<input type='hidden' id='previous' value='1'></a></li>";
    				} else {
	    				output += "<li class='paginate_button page-item previous disabled' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='"+(result.page - 1)+"' tabindex='0' class='page-link'><<input type='hidden' id='previous' value='"+(result.page - 1)+"'></a></li>";
    				}
    				for (var i = result.startPage; i <= result.endPage; i++){
    					if (page == i){
		    				output += "<li class='paginate_button page-item active' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='"+result.page+"' tabindex='0' class='page-link'>"
		    							+ result.page + "</a></li>";
    					} else {
		    				output += "<li class='paginate_button page-item' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='"+i+"' tabindex='0' class='page-link'>"
    							+ i + "</a></li>";
    					}
    				}
    				if (result.page == result.maxPage){
	    				output += "<li class='paginate_button page-item next disabled' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='"+(result.endPage)+"' tabindex='0' class='page-link'>><input type='hidden' id='next' value='"+(result.endPage)+"'></a></li>";
    				} else {
	    				output += "<li class='paginate_button page-item next disabled' onclick='pageLink(this)'><a href='#' aria-controls='dataTable' data-dt-idx='"+(result.page + 1)+"' tabindex='0' class='page-link'>><input type='hidden' id='next' value='"+(result.page + 1)+"'></a></li>";
    				}
    				output += "</ul>";
    				$("#dataTable_paginate").html(output);
					    				
    				
    				
   				/* 	<li class="paginate_button page-item previous disabled" id="dataTable_previous"><a href="#" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a></li>
   					<li class='paginate_button page-item active'><a href='#' aria-controls='dataTable' data-dt-idx='1' tabindex='0' class='page-link'>1</a></li>
   					<li class="paginate_button page-item "><a href="#" onclick="pageLink(this)" class="page-link">2</a></li>
   					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="3" tabindex="0" class="page-link">3</a></li>
   					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="4" tabindex="0" class="page-link">4</a></li>
   					<li class="paginate_button page-item "><a href="#" aria-controls="dataTable" data-dt-idx="5" tabindex="0" class="page-link">5</a></li>
   					<li class="paginate_button page-item next" id="dataTable_next"><a href="#" aria-controls="dataTable" data-dt-idx="7" tabindex="0" class="page-link">Next</a></li> */
    			}
    		});
    	}
    </script>

</body>
<script type="text/javascript">
	$(document).ready(function(){
		pageLink();
	});
</script>
</html>