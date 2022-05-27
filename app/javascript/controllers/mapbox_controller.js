import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/auroreqoi/cl3n36k1w000x15qq7f85rhiy"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    this.map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }))
    // this.#growMarkerOnHover()
  }

  hovering(event) {
    const hiveId = event.currentTarget.dataset.id
    const markerId = `marker-${hiveId}`

    const marker = document.getElementById(markerId)
    marker.style.width = "75px"
    marker.style.height = "75px"
  }

  leaving(event) {
    const hiveId = event.currentTarget.dataset.id
    const markerId = `marker-${hiveId}`

    const marker = document.getElementById(markerId)
    marker.style.width = "50px"
    marker.style.height = "50px"
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.id = `marker-${marker.hive_id}`
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.style.backgroundSize = "contain"
      customMarker.style.width = "50px"
      customMarker.style.height = "50px"

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    });
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  // #growMarkerOnHover() {
  //   this.markersValue.forEach((marker) => {

  //     const grow = New mapboxgl.???().

  //     const customMarker = document.createElement("div")
  //     customMarker.className = "marker"
  //     customMarker.id = `marker-${marker.hive_id}`
  //     customMarker.style.backgroundImage = `url('${marker.image_url}')`
  //     customMarker.style.backgroundSize = "contain"
  //     customMarker.style.width = "75px"
  //     customMarker.style.height = "75px"
  //   })
  // }
}
