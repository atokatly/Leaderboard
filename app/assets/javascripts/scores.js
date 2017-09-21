// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(window).load(function() {
  console.log("I'm running");
  // scrollDown();
  // $("html, body").animate({ scrollTop: $(document).height() }, 35000);
  setTimeout(function(){
    $("html, body").animate({ scrollTop: $(document).height() }, 45000);
  }, 5000);


setTimeout(function() {
   window.onbeforeunload = function() {window.scrollTo(0,0);}
   location.reload()
 },50000);


// setInterval(function(){
//      // 4000 - it will take 4 secound in total from the top of the page to the bottom
// $("html, body").animate({ scrollTop: $(document).height() }, 35000);
// setTimeout(function() {
//    $('html, body').animate({scrollTop:0}, 35000);
// },35000);
//
// },70000);


$('html, body').mouseover(function(e) {
$(this).stop(true);

    }).mouseout(function() {
         $(this).stop(false);
    });
});

// var scrollDown =  function(){
//   $("html, body").animate({ scrollTop: $(document).height() }, 35000);
// }
// var scrollUp = function(){
//
// }
