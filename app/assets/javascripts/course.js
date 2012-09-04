$(function() {
  $("#courses_search input").keyup(function() {
    $.get(
    	$("#courses_search").attr("action"), 
    	$("#courses_search").serialize(), null, "script");
    return false;
  });
});