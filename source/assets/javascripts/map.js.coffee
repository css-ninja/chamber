init = ->
  mapOptions =
    zoom: 11

    center: new google.maps.LatLng(50.81920853040926, 4.344214408003952)

    # This is where you would paste any style found on Snazzy Maps.
    styles: [
      featureType: "administrative"
      stylers: [visibility: "off"]
    ,
      featureType: "poi"
      stylers: [visibility: "simplified"]
    ,
      featureType: "road"
      stylers: [visibility: "simplified"]
    ,
      featureType: "water"
      stylers: [visibility: "simplified"]
    ,
      featureType: "transit"
      stylers: [visibility: "simplified"]
    ,
      featureType: "landscape"
      stylers: [visibility: "simplified"]
    ,
      featureType: "road.highway"
      stylers: [visibility: "off"]
    ,
      featureType: "road.local"
      stylers: [visibility: "on"]
    ,
      featureType: "road.highway"
      elementType: "geometry"
      stylers: [visibility: "on"]
    ,
      featureType: "road.arterial"
      stylers: [visibility: "off"]
    ,
      featureType: "water"
      stylers: [
        color: "#5f94ff"
      ,
        lightness: 26
      ,
        gamma: 5.86
      ]
    , {},
      featureType: "road.highway"
      stylers: [
        weight: 0.6
      ,
        saturation: -85
      ,
        lightness: 61
      ]
    ,
      featureType: "road"
    , {},
      featureType: "landscape"
      stylers: [
        hue: "#0066ff"
      ,
        saturation: 74
      ,
        lightness: 100
      ]
    ]

  mapElement = document.getElementById("map")
  map = new google.maps.Map(mapElement, mapOptions)

google.maps.event.addDomListener window, "load", init
