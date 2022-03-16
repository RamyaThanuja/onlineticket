<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style>
*{ 
margin:0; 
padding:0; 
} 
nav
{ 
width:100%;
height:17%; 
display: flex; 
margin-bottom:-4%;
position:fixed;
} 
.Logo
{ 
width:50%; 
height:50%; 
background-color:#FFFACD; 
background-image: linear-gradient(to right, #FFFACD , #B0E0E6);
} 
img 
{ 
width:100%; 
height:50%; 
} 
.button{
width:33%;
padding:5px 5px;
margin:4px 2px;
background-image: linear-gradient(to right, #FFFACD , #B0E0E6);;
border-style: double;
border-color:#B0E0E6;
}
.Upcomingmoviebutton{
width:33%;
padding:5px 5px;
margin:4px 2px;
background-image: linear-gradient(to right, #FFFACD , #B0E0E6);
border-style: double;
border-color:#B0E0E6;
}
.Logo img
{ 
margin-top:3px;
width:87px;
 height:70px;
 margin-left:20px; 
} 
.login
{ 
width:50%; 
height:50%; 
background-color:#B0E0E6; 
text-align:right;
background-image: linear-gradient(to right, #B0E0E6,#FFFACD);
}
ul{ 
list-style: none; 
padding:40px;
} 
li{  
padding:25px; 
display:inline; 
}
#slider {
  position: relative;
  width: 100%;
  height: 350px;
  overflow: hidden;
  box-shadow: 0 0 20px rgba(0, 0, 0, 0.3);
}
#slider ul {
  position: relative;
  list-style: none;
  width:1000%;
  padding: 10px;
  margin-left: 30px;
  margin-right: 30px;
  transition: all 950ms ease;
}
#slider ul li {
  position: relative;
  float:left;
}
#slider ul li img{
  width: 700px;
  height: 260px;
  margin-top:50px;
}
 
#slider #prev, #slider #next {
  width: 50px;
  line-height: 50px;
  border-radius: 50%;
  font-size: 2rem;
  text-shadow: 0 0 20px rgba(0, 0, 0, 0.6);
  text-align: center;
  color: black;
  text-decoration: none;
  position: absolute;
  top: 50%;
  transform: translateY(-70%);
  transition: all 150ms ease;
}
#slider #prev:hover, #slider #next:hover {
  background-color: rgba(0, 0, 0, 0.5);
  text-shadow: 0;
}
#slider #prev {
  left: 10px;
}
#slider #next {
  right: 10px;
}
.login a{
color:black;
font-family:verdana;
font-size:17px;
}
.Movieslist{
color:#000080;
font-family:verdana;
}
.wholebodycolor{
animation:move 3s infinite;
}
@keyframes move {
  from {background-color:#B0E0E6;}
  to {background-color: #FFFACD;}
}
.UpcomingMovieslist{
color:#000080;
font-family:verdana;
}
</style>
<nav>
<div class="Logo">
<img src="C:\Users\rkodakandla\git\repository\onlineticket\src\main\webapp\resource\img\Bomma.jpg"class="img-rounded">
</div> 
<div class="login"> 
<ul> 
<li><b><a href="rr.html">LOGIN</a></b></li> 
<li><b><a href="manju.html">ADMIN LOGIN</a></b></li> 
</ul> 
</div>
</nav>
<div class="wholebodycolor">
<div id="slider">
    <ul id="slideWrap"> 
      <li><img src="https://miro.medium.com/max/1123/1*c7lIp9cZfSW_UiZ6iWIUiQ.jpeg" alt="Img1"></li>
      <li><img src="https://i.ytimg.com/vi/yVeWHaNGSa0/maxresdefault.jpg" alt="Img2"></li>
      <li><img src="https://www.orlandosentinel.com/resizer/KO6u_u3J4Zs-ChiFJQHD1cjf0Us=/415x233/top/arc-anglerfish-arc2-prod-tronc.s3.amazonaws.com/public/G6JDKVK64RGRFHDADLDNPLJ4HE.jpg" alt="Img6"></li>
      <li><img src="https://i2.wp.com/www.ticketonlinebooking.com/wp-content/uploads/2018/11/Paytm-Movie-Offers-Buy-1-Get-1-Tickets-Free-Dealsbees.jpg?fit=500%2C302&ssl=1&resize=1280%2C720" alt="Img3"></li>
      <li><img src="https://in.bmscdn.com/offers/tncbanner/hdfc-25percent-off-on-timescard-htc0314.jpg?28092021121410" alt="Img4"></li>
    </ul>
  <a id="prev" href="#">&#8810;</a>
    <a id="next" href="#">&#8811;</a>
  </div>
<script>
    var responsiveSlider = function() {
var slider = document.getElementById("slider");
var sliderWidth = slider.offsetWidth;
var slideList = document.getElementById("slideWrap");
var count = 1;
var items = slideList.querySelectorAll("li").length-3;
var prev = document.getElementById("prev");
var next = document.getElementById("next");
window.addEventListener('resize', function() {
  sliderWidth = slider.offsetWidth;
});
var prevSlide = function() {
  if(count > 0) {
    count = count - 1;
    slideList.style.left = "-" + count * sliderWidth + "px";
    count++;
  }
  else if(count == 1) {
    count = items - 1;
 slideList.style.left = "-" + count * sliderWidth + "px";
    count++;
  }
};
var nextSlide = function() {
  if(count < items) {
    slideList.style.left = "-" + count * sliderWidth + "px";
    count++;
  }
  else if(count == items) {
    slideList.style.left = "0px";
    count = 0;
  }
};
next.addEventListener("click", function() {
  nextSlide();
});
prev.addEventListener("click", function() {
  prevSlide();
});
setInterval(function() {
  nextSlide()
}, 2500);
};
window.onload = function() {
responsiveSlider();  
}
function Moviedescription(id){
window.open("moviedetails?id= "+id,'window','width=700,height=500');
}
function UpcomingMovieDescription(id){
	window.open("upcomingmoviedetails?id= "+id,'window','width=700,height=500');
}
</script>
<br>
<div class="Movieslist">
<h3><b><i>Currently Streaming:</i></b></h3><br>
<table id="movieTable" class="center">
<c:forEach var="Movie" items="${movieslist}">
<button class="button" onclick="Moviedescription(${Movie.id})">
<img src="data:image/jpg;base64,${Movie.base64Image}"class="img-rounded"/>&nbsp;&nbsp;&nbsp;
</button>
</c:forEach>
</table>
<h3><b><i>Upcoming Movies:</i></b></h3><br>
<table id="upcomingmovieTable" class="center">
<c:forEach var="Movie" items="${upcomingmovieslist}">
<button class="Upcomingmoviebutton" onclick="UpcomingMovieDescription(${Movie.id})">
<img src="data:image/jpg;base64,${Movie.base64Image}" class="img-rounded"/>&nbsp;&nbsp;&nbsp;
</button>
</c:forEach>
</table>
</div>
</div>