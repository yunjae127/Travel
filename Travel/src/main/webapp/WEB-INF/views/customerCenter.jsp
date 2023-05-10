<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>관리자페이지-고객문의</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="./resources/css/styles2.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="./resources/css/style.css">
        <link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
        
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        <script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
       <script type="text/javascript" src="./resources/js/bootstrap.bundle.min.js"></script>
       <script type="text/javascript" src="./resources/js/event.js"></script>
    </head>
    <body class="sb-nav-fixed">
    <div id="navbar">
      <nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
                 <a class="navbar-brand" href="#" target="blank"><img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px"><span class="logoo"></span></a>
                 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                   <span class="navbar-toggler-icon"></span>
                 </button>

                 <div class="collapse navbar-collapse" id="navbarSupportedContent">
                   <ul class="navbar-nav ml-auto id="float">
                     <li class="nav-item active">
                             <a class="nav-link font" id="home" href="home.html">Home<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#fly">소개<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="#top">패키지<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#chose">관광지 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                       <a class="nav-link font" href="#work">숙소<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="#gallery">할인<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="#blog">리뷰<span class="sr-only">(current)</span></a>
                  </li>

                  <li class="nav-item active">
                       <a class="nav-link font" href="test1.jsp">QnA<span class="sr-only">(current)</span></a>
                  </li>
                   <li class="nav-item active"><a class="nav-link font"
                       href="mypage.jsp">마이페이지<span class="sr-only">(current)</span></a>
                       </li>
                  <div class="btn-group">
                  <button type="button" class="btn btn-outline-primary dropdown-toggle mr-1" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#search">Search
 
                  </button>
               </div>

               <div class="modal fade" id="search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <form>
                                    <input type="Search" name="" class="form-control" placeholder="Search">
                                    <button type="submit" data-dismiss="modal" class="btn btn-outline-primary mt-2 mb-2">Search</button>
                            </form>
                        </div>
                        
                      </div>
                    </div>
               </div>


            

             <div class="btn-group">
                 <button type="button" class="btn btn-outline-primary dropdown-toggle" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#login">
                login
                 </button>
              
            </div>

            <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                      <div class="modal-content">
                        <div class="modal-header">
                          <h5 class="modal-title text-dark" id="exampleModalLabel">login</h5>
                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>
                        <div class="modal-body">
                          <form>
                             <div class="form-group">
                               <label for="exampleInputEmail1" class="text-dark">Email address</label>
                               <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                               <small id="emailHelp" class="form-text text-muted">We'll never share your email wif anyone else.</small>
                             </div>
                             <div class="form-group">
                               <label for="exampleInputPassword1" class="text-dark">Password</label>
                               <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                             </div>
                             <div class="form-group form-check">
                               <input type="checkbox" class="form-check-input" id="exampleCheck1">
                               <label class="form-check-label" for="exampleCheck1">Check me out</label>
                             </div>
                             <button type="submit" class="btn btn-primary">Submit</button>
                        </form>

                        </div>
                        
                      </div>
                    </div>
               </div>


                     

                  
                 
                  <li class="nav-item dropdown">
                    <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                
                    </a>
              
                  </li>
            
             </ul>

         </div>
      </nav>
   </div>
                        <div class="card mb-4 abc">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                자주 묻는 질문 TOP 5
                            </div>
                            <div class="card-body">
                                <table  class="datatable-table">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                QnA
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>No.</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>No.</th>
                                            <th>제목</th>
                                            <th>작성자</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <tr>
                                            <td>Tiger Nixon</td>
                                            <td>System Architect</td>
                                            <td>Edinburgh</td>
                                        </tr>
                                        <tr>
                                            <td>Garrett Winters</td>
                                            <td>Accountant</td>
                                            <td>Tokyo</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                        
                  <div class="container-fluid pt-5 pb-5 backgroud">
                  <div class="container">
                     <div class="row">
                        <div class="col-md-12 col-sm-12">
                           <img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px">
                         <h4 class="text-white h4_text">&copy;Copyrights 2018. All rights reserved by: go travel</h4>
                           
                        </div>                        
                        
                     </div>
                     
                  </div>
                  
               </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="./resources/assets/demo/chart-area-demo.js"></script>
        <script src="./resources/assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="./resources/js/datatables-simple-demo2.js"></script>
    </body>
</html>