// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

 $(function(){
    height = $(self).height();
    width = $(self).width();
    $(".fullWidth").css({  width: width })
    $(".fullHeigth").css({ height: height })
  }())

$(document).ready(function(){

  $("#business").on('click', function(){

  });
})







// $(window).resize(function(){
//   height = $(self).height();
//   width = $(self).width();
//   $(".fullpage").css({ height: height, width: width })
//   console.log($(window).height())
// })

// $(window).resize(function(){
//   height = $(self).height();
//   width = $(self).width();
//   $(".page").css({ height: height, width: width })
//   console.log($(window).height())
// })

// $(window).resize(function(){
//   height = $(self).height();
//   width = $(self).width();
//   $(".fullpage").css({ height: height, width: width })
//   console.log($(window).height())
// })

