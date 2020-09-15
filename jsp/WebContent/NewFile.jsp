<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
 
</head>
<body>
<br>

<div class="container">
  <h2>단기 렌트</h2>
  <br>
  <form action="#">
  <table class="table talbe-hover">
  <tr><td>차량선택</td></tr>
  <tr><td>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li class="nav-item">
      <a class="nav-link active" data-toggle="tab" href="#home">전체</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu1">소형</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu2">중형</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu3">대형</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu4">승합</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu5">SUV/5인승</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" data-toggle="tab" href="#menu6">수입/전기차</a>
    </li>
  </ul>
  
  <div class="tab-content">
      <h3>HOME</h3>
    <div id="home" class="container tab-pane active"><br>
    <div class="overflow-auto" style="max-height: 100px">
   <p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p>
   <p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p>
   <p>111</p><p>111</p><p>111</p><p>111</p></div>
    </div>
    <div id="menu1" class="container tab-pane fade"><br>
      <h3>Menu 1</h3>
       <div id="home" class="container tab-pane active"><br>
    <div class="overflow-auto" style="max-height: 100px">
    	<table>
    		<tr>
    			<td style="border-right: 1px solid #000;">
    				<p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p>
    			</td>
    			<td>
					<p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p><p>111</p>
    			</td>
    		</tr>
    	</table>
    </div>
    </div>
    </div>
    <div id="menu2" class="container tab-pane fade"><br>
      <h3>Menu 2</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
  </div></td></tr>
  <tr><td>차량 손해 면책 제도</td></tr>
  <tr>
  <td><button type="button"  class="btn btn-outline-warning">Warning</button>
  <button type="button"  class="btn btn-outline-warning">Warning</button>
  <button type="button"  class="btn btn-outline-warning">Warning</button></td>
  </tr>
 <tr><td>계약자 정보 입력(제 1운전자)</td></tr>
  <tr><td>이용약관</td></tr>
  </table>
  </form>
  
  
  
</div>
<div class="container" align="center">
<button type="button" class="btn btn-outline-dark">Dark</button>
<button type="button" class="btn btn-outline-warning">Warning</button>
</div>
</body>
</html>