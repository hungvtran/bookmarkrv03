// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){

        $("<span><i class='fa fa-folder-o'></i>").insertBefore("H3");
        $("</span>").insertAfter("H3");
        $("<span><i class='fa fa-file-o'></i>").insertBefore("dt a");
        $("</span>").insertAfter("dt a");

        $('h3').each(function() {
        $(this).next().hide(1000);
        });     
        $('h3').click(function() {
        $(this).next().toggle(1000);
        });

});