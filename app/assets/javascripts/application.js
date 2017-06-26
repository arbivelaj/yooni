//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
// app/assets/javascripts/application.js

//= require underscore
//= require gmaps/google
//= require_tree .

var items = ["management", "politics", "economics", "master", "bachelor", "bocconi", "science", "engineering"]

setInterval(function(){
  var item = items[Math.floor(Math.random()*items.length)];
  $("#search-field").attr("placeholder", item);
}, 2000);
