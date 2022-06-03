<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Reservation</title>
      <link rel = "stylesheet"
   type = "text/css"
   href = "css/reservation.css" />
    
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, label { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      font-size: 50px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      legend {
      padding: 10px;      
      font-family: Roboto, Arial, sans-serif;
      font-size: 18px;
      color: #fff;
      background-color: #006622;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: right;
      height: inherit;
      }
      form {
      width: 60%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px #006622; 
      }
      .banner {
      position: relative;
      height: 250px;
      background-image: LightSeaGreen;  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.4); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color:  #006622;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0  #006622;
      color: #006622;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #00b33c;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      .week {
      display:flex;
      justify-content:space-between;
      }
      .columns {
      display:flex;
      justify-content:space-between;
      flex-direction:row;
      flex-wrap:wrap;
      }
      .columns div {
      width:48%;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid  #006622;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid  #006622;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .flax {
      display:flex;
      justify-content:space-around;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background:  #006622;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background:  #00b33c;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
    </style>
  </head>
  <body>
  
   <!--......................................Header Part.......................................................................... -->
	<div class="productData">
 	<svg width="100%" height="100%">
    <defs>
      <pattern id="polka-dots" x="0" y="0"                    width="100" height="50"
               patternUnits="userSpaceOnUse">
        <circle fill="#be9ddf" cx="25" cy="25" r="3"></circle>
      </pattern>  
        <style>
     @import url("https://fonts.googleapis.com/css?  family=Lora:400,400i,700,700i");
   		</style>
      
    </defs>
              
    <rect x="0" y="0" width="100%" height="100%" fill="url(#polka-dots)"> </rect>
     
    <text x="50%" y="65%"  text-anchor="middle"  >
   RESERVATION 
	</text>
 </svg>
 <h2 align="center" style="color:#a769d1;">&nbsp; &nbsp;.... collect moments, not things ....</h2><hr >
</div>
<br><br>


<!--  .................................. Navigation........................................ -->



   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
  
  
  <form class="example" action="view" style="margin:left;max-width:300px" method="post">
  <input type="text" placeholder="Search by Phone Number to view your booking" name="pno">
  <button type="submit"><i class="fa fa-search"></i></button>
</form><br>





    <div class="testbox">
    <form action="insert" method="post">
      <div class="banner">
        <h1>YOUR RESERVATION</h1>
      </div>
      <br/>
      
  
      
      
      
      <fieldset>
      <legend>DATES</legend>
      <div class="columns">
      <div class="item">
      <label for="checkindate">Check-in Date <span>*</span></label>
      <input id="checkindate" type="date" name="arrive" required/>
      <i class="fas fa-calendar-alt"></i>
      </div>
      <div class="item">
      <label for="checkoutdate">Check-out Date <span>*</span></label>
      <input id="checkoutdate" type="date" name="depature" required/>
      <i class="fas fa-calendar-alt"></i>
      </div>
  
      <div class="item">
      <p>How many adults are coming?</p>
      <select name="adults">
      <option value="0" disabled selected>Number of adults</option>
      <option value="1" >1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
       <option value="6">6</option>
      </select>
      </div>    
      <div class="item">
      <p>How many children are coming?</p>
      <select name="children">
      <option value="0" disabled selected>Number of children</option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
       <option value="6">6</option>
      </select>
      </div> 
      
      
      <a class="glow-on" href="RoomDetails.jsp" >View Rooms</a>
  
        
      <div class="item" style=width:100%>
      <label for="room">Number of rooms</label>
      <input id="room" type="number" name="trooms" />
      </div>
       <div class="item">
      <p>Luxury Rooms</p>
      <select name="lroom">
      <option value="0" selected></option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      </select>
      </div>
        <div class="item">
      <p>Couple Rooms</p>
      <select name="croom">
      <option value="0" selected></option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      </select>
      </div>
        <div class="item">
      <p>Standard Rooms</p>
      <select name="sroom">
      <option value="0" selected></option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      </select>
      </div>
      <div class="item">
      <p>Family Rooms</p>
      <select name="froom">
      <option value="0" selected></option>
      <option value="1">1</option>
      <option value="2">2</option>
      <option value="3">3</option>
      <option value="4">4</option>
      <option value="5">5</option>
      <option value="6">6</option>
      </select>
      </div>       
      </div>
      <div class="item">
      <label for="instruction">Special Notes (Optional)</label>
      <textarea id="instruction" rows="3" name="notes"></textarea>
      </div>
      </fieldset>
      
      
      
      
      
      <fieldset>
        <legend>Reservation Details</legend>
        <div class="columns">
          <div class="item">
            <label for="fname">First Name<span>*</span></label>
            <input id="fname" type="text" name="fname" required/>
          </div>
          <div class="item">
            <label for="lname"> Last Name<span>*</span></label>
            <input id="lname" type="text" name="lname" required/>
          </div>
          </div>
          <div class="item">
            <label for="lname"> Company Name</label>
            <input id="lname" type="text" name="cname" />
          </div>
          <div class="item">
            <label for="address">Address<span>*</span></label>
            <input id="address" type="text"   name="add" placeholder="Street Address" required/>
            <input id="address" type="text"   name="add" placeholder="Apartment, suite, unit etc. (Optional)"/>
          </div>
          <div class="columns">
          <div class="item">
            <label for="zip">Town/City<span>*</span></label>
            <input id="zip" type="text"   name="city" required/>
          </div>
          <div class="item">
            <label for="city">Country<span>*</span></label>
            <input id="city" type="text"   name="country" required/>
          </div>
          </div>
          <div class="item">
            <label for="eaddress">Email Address<span>*</span></label>
            <input id="eaddress" type="email"   name="email"  placeholder ="example@example.com" required/>
          </div>
          <div class="item">
            <label for="phone">Phone Number<span>*</span></label>
            <input id="phone" type="tel"  name="pno" required/>
          </div>
      </fieldset>
      <br/>
      <div class="btn-block">
      <button type="submit" name="submit">Submit</button>
      </div>
    </form>
    </div>
    <br><br>
  </body>
</html>