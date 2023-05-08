<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"

    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  >

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="./resources/css/reservationStyle.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"

    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"

    ></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet" />
    <style>
      * {
        font-family: "Jua", sans-serif;
      }
      .product-img {
        width: 500px;
        height: 300px;
        background-image: 
        background-position: center;
        background-size: cover;
      }
      .product-desc {
        width: 500px;
        margin-top: 20px;
        margin-bottom: 20px;
      }

      .price {
        font-size: 20px;
        font-style: italic;
      }

      .item-order {
        width: 500px;
      }

      .btn-order {
        margin: auto;
        width: 100px;

        display: block;
      }
      .wrap {
        width: 500px;
        padding-top: 50px;
        margin-left : 100px;
        float:left;
      }
    </style>

    <script>
      function order() {
        alert("주문이 완료되었습니다!")
      }
    </script>
    <title>예약하기</title>
  </head>

  <body>
    <div class="wrap">
      <div class="product-img"></div>
      <div class="product-desc">
        <h2>
          상품정보
          <span class="price"> 가격:3,600,000</span>
        </h2>
        <p>상품설명</p>
      </div>
      <div class="item-order">
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="">주문자이름</span>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
          />
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label class="" for="inputGroupSelect01">수량</label>
          </div>
          <select class="custom-select" id="inputGroupSelect01">
            <option selected>-- 수량을 선택하세요 --</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
          </select>
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="">주소</span>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
          />
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="">전화번호</span>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
          />
        </div>
        <button type="button" onclick="order()" class="btn btn-primary btn-order">
          주문하기
        </button>
      </div>
    </div>
    <div class="demo">
 <div class="demo form-bg">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-12">
                    <h1 class="heading-title"> 예약하기 </h1>
                </div>
            </div>

            <div class="row">
                <div class="col-md-offset-3 col-md-6">
                    <form class="form-horizontal">
                        <div class="header">예약자 정보</div>
                        <div class="form-content">
                            <h4 class="heading"></h4>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label>사용자 이름</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="한글로 최대 5글자" type="text">
                                </div>
                                <div class="col-sm-6">
                                
                                    <label>이메일</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="이메일 타입 형식" type="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label>전화번호</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="-포함 최대 14자리" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label>생년월일</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="숫자 8글자(ex:20000412)" type="text">
                                </div>

                                <div class="col-sm-6">
                                    <label>사용자 이름</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="Children" type="number">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label>사용자 이름</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="Check-in date (dd/mm/yy)" type="text">
                                </div>

                                <div class="col-sm-6">
                                    <label>사용자 이름</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="Check-out date (dd/mm/yy)" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label>사용자 이름</label>
                                    <textarea class="form-control" placeholder="요청사항"></textarea>
                                </div>
                            </div>
                            <div class="clearfix">
                                <button type="submit" class="btn btn-default"> Register</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	</div> 
    
  </body>
</html>