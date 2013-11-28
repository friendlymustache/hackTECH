    <script>
    var map_options = {
      center: new google.maps.LatLng(-34.397, 150.644),
      zoom: 8,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    
    var map = new google.maps.Map(document.getElementById('map'), map_options);
    var request = {
      // location: new google.maps.LatLng(-33.937, 150.44),
      query: query
      // radius: 50000
    }
;
    function callback(results, status){
      for(var i = 0, result; result = results[i]; i++){
          console.log(result.name);
      }
    }

    var service = new google.maps.places.PlacesService(map);
    service.textSearch(request, callback);
 
    </script>