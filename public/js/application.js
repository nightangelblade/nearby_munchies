$(document).ready(function() {
  newSearch();
});

var newSearch = function() {
  $("#search").on("click", function(event){
    event.preventDefault();
    console.log("Hello!");
    var searchForm = "<div id='search-form'></div>"
    $(".page-content").append($(searchForm));
    $(".page-content").find("#search-form").load("/locations/new .search-content");

  })
}
