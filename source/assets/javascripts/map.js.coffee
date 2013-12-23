init = ->

  homeAdress = new google.maps.LatLng(50.81911, 4.344139)

  mapOptions =
    zoom: 15

    center: homeAdress

  mapElement = document.getElementById("map")
  map = new google.maps.Map(mapElement, mapOptions)

  marker = new google.maps.Marker(
    position: homeAdress,
    map: map,
    title: 'La chambre des anges'
  )

google.maps.event.addDomListener window, "load", init
