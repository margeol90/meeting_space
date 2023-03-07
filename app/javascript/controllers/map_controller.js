import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  connect() {
    mapboxgl.accessToken = 'pk.eyJ1IjoiamlkZS1tdXJpdGFsYSIsImEiOiJjbGV4eXV6YmwwaTg2M3hwNDBscnhwMWF6In0.6dCNpQr0FVCgmeW52OrNJQ';
    const map = new mapboxgl.Map({
    container: 'map', // container ID
    style: 'mapbox://styles/mapbox/streets-v12', // style URL
    center: [-74.5, 40], // starting position [lng, lat]
    zoom: 9, // starting zoom
    });
  }
}
