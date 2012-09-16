$(document).ready ->
  $("[data-latitude]").each ->
    $this = $(this)

    latlng = new google.maps.LatLng($this.data("latitude"), $this.data("longitude"))

    options =
      center: latlng
      zoom: $this.data("zoom")
      mapTypeId: google.maps.MapTypeId.ROADMAP

    map = new google.maps.Map($this.get(0), options)
    marker = new google.maps.Marker(position: latlng, map: map, title: $this.data("title"));
