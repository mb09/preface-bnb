import mapboxgl from 'mapbox-gl';
const initMapbox = () => {
    const mapElement = document.querySelector('#map');
    if (mapElement) { // only build a map if there's a div#map to inject into 
    	mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    	let map_center = JSON.parse(mapElement.dataset.center);
    	
        const map = new mapboxgl.Map({
            container: 'map',
            style: 'mapbox://styles/mapbox/streets-v10',
            zoom: 12,
            center: map_center,
        });

        const markers = JSON.parse(mapElement.dataset.markers); 

        markers.forEach((marker) => {
    		new mapboxgl.Marker().setLngLat([ marker.longitude, marker.latitude ]).addTo(map);
    	});
    }
};
export { initMapbox };
