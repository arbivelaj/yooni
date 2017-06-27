$(function(){
    $('#view_map').click(function(e){
      e.preventDefault();
      $('#map').toggleClass('display_map');
      if ($('#map').hasClass('display_map')) {
        $('#view_map').text("Hide Map")
      } else {
        $('#view_map').text("View Map")
      }
    });

});
