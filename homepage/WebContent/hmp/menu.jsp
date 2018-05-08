<!DOCTYPE html>
<html>
<title>MENU</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>

table, th, td {
	text-align: center;
	border: 1px solid black;
	width: 600px;
	height: 100px;
}

body, html {
    height: 100%;
    font-family: "Inconsolata", sans-serif;
}
.bgimg {
    background-position: center;
    background-size: cover;
    background-image: url("/image/coffeehouse.jpg");
    min-height: 75%;
}
.menu {
    display: none;
}
</style>


<title></title> 

</head> 

<body>
<jsp:include page="/menu/top.jsp" flush="false"/>

<div class="w3-container" id="menu">
  <div class="w3-content" style="max-width:700px">
 
    <h5 class="w3-center w3-padding-48"><span class="w3-tag w3-wide">THE MENU</span></h5>
  
    <div class="w3-row w3-center w3-card w3-padding">
      <a href="javascript:void(0)" onclick="openMenu(event, 'Eat');" id="myLink">
        <div class="w3-col s6 tablink">Eat</div>
      </a>
      <a href="javascript:void(0)" onclick="openMenu(event, 'Drinks');">
        <div class="w3-col s6 tablink">Drink</div>
      </a>
    </div>

    <div id="Eat" class="w3-container menu w3-padding-48 w3-card">
      <h5>Bread Basket</h5>
      <p class="w3-text-grey">Assortment of fresh baked fruit breads and muffins 5.50</p><br>
    
      <h5>Honey Almond Granola with Fruits</h5>
      <p class="w3-text-grey">Natural cereal of honey toasted oats, raisins, almonds and dates 7.00</p><br>
    
      <h5>Belgian Waffle</h5>
      <p class="w3-text-grey">Vanilla flavored batter with malted flour 7.50</p><br>
    
      <h5>Scrambled eggs</h5>
      <p class="w3-text-grey">Scrambled eggs, roasted red pepper and garlic, with green onions 7.50</p><br>
    
      <h5>Blueberry Pancakes</h5>
      <p class="w3-text-grey">With syrup, butter and lots of berries 8.50</p>
    </div>

    <div id="Drinks" class="w3-container menu w3-padding-48 w3-card">
      <h5>Coffee</h5>
      <p class="w3-text-grey">Regular coffee 2.50</p><br>
    
      <h5>Chocolato</h5>
      <p class="w3-text-grey">Chocolate espresso with milk 4.50</p><br>
    
      <h5>Corretto</h5>
      <p class="w3-text-grey">Whiskey and coffee 5.00</p><br>
    
      <h5>Iced tea</h5>
      <p class="w3-text-grey">Hot tea, except not hot 3.00</p><br>
    
      <h5>Soda</h5>
      <p class="w3-text-grey">Coke, Sprite, Fanta, etc. 2.50</p>
    </div>  
    <img src="/image/coffeehouse.jpg" style="width:100%;max-width:1000px;margin-top:32px;">
  </div>
</div>

<table>
	<thead>
		<tr>
			<th>#</th>
			<th>NAME</th>
			<th>TITLE</th>
			<th>DATE</th>
			<th>VIEWCNT</th>
		</tr>	
	</thead>
	
	<tbody>
                      <tr>
                        <td>1</td>
                        <td><a href="">김효임</a></td>
                        <td>디진다돈까스 파티원구함</td>
                        <td>2018-04-24</td>
                        <td>1</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td><a href="">홍예빈</a></td>
                        <td>졔빈언니sz</td>
                        <td>2018-04-24</td>
                        <td>0</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td><a href="">윤희영</a></td>
                        <td>희영언니sz</td>
                        <td>2018-04-24</td>
                        <td>6</td>
                      </tr>  
                      <tr>
                        <td>4</td>
                        <td><a href="">김상윤</a></td>
                        <td>갓상윤</td>
                        <td>2018-04-24</td>
                        <td>2</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td><a href="">정선아</a></td>
                        <td>미드나이트 모카 프라푸치노</td>
                        <td>2018-04-24</td>
                        <td>0</td>
                      </tr>
                      <tr>
                        <td>6</td>
                        <td><a href="">윤경수</a></td>
                        <td>Real Love..</td>
                        <td>2018-04-24</td>
                        <td>0</td>
                      </tr>
                    </tbody>	
</table>


<jsp:include page="/menu/bottom.jsp" flush="false"/>
</body>

</html> 