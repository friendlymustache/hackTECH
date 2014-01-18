$(window).resize(function(){

var width = $(window).width();

  if(width < 1183){
    $('.col-lg-8').css("position", "relative");
    $('.header').css("height", "105px");    

    if(width < 640){
      $('.header').css({"padding" : "0px", "height" : "60px"});
    }
    else{
      $('.header').css({"padding" : "15px 0px 15px 0px"});
    }


    if(width < 544 ){
      $('.col-lg-8').css({"left" : 0, "margin-left" : 540, "float" : "left"});
      $('#register-big-button').css({"width" : "auto"});
      $('#logo').attr("src", "img/torch.png");  
      $('.col-lg-8').css({"left" : 0, "margin-left" : 40}); 
    }
    else{
      $('#register-big-button').css({"width" : "229px"});   
      $('#logo').attr("src", "img/navbar.png");     
      $('.col-lg-8').css({"margin-left" : 0, "float" : "right"});   
    }

    if(width < 420){
      $('.subblurb').css("width", 230);     
    }
    else{
      $('.subblurb').css("width", "auto");
    }
  
  }

  else{
      $('.col-lg-8').css({"position" : "static", "float" : "right", "left" : "auto", "margin-left" : "0"});
      $('.header').css({"padding" : "15px 0px 15px 0px", "height" : "auto"});
      $('#logo').attr("src", "img/navbar.png");     
      $('.subblurb').css("width", "auto");
  }


});

$(window).resize();