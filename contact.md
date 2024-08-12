---
title: Contact
layout: default
head: |
        <script type="text/javascript" src="//unpkg.com/maplibre-gl@4.0.2/dist/maplibre-gl.js"></script>
        <link href="//unpkg.com/maplibre-gl@4.0.2/dist/maplibre-gl.css" rel="stylesheet" />
---


<section class = "side-by-side">
<section class = "card" markdown=1>
## Contact


[Tour Booking](https://calendly.com/r-a-r-a/tour?month=2024-08)
[Instagram](https://www.instagram.com/rara_clapton/)

</section>

<section class ="card">
<div id="map"></div>
</section>

</section>

<script type="text/javascript">
        var map = new maplibregl.Map({
        container: 'map',
        style: 'https://tiles.stadiamaps.com/styles/stamen_watercolor.json',  // Style URL; see our documentation for more options
        center: [-0.05250799456648675, 51.56531964328481],  // Initial focus coordinate
        zoom: 14
        });

        // MapLibre GL JS does not handle RTL text by default,
        // so we recommend adding this dependency to fully support RTL rendering if your style includes RTL text
        maplibregl.setRTLTextPlugin('https://unpkg.com/@mapbox/mapbox-gl-rtl-text@0.2.3/mapbox-gl-rtl-text.min.js');

        // Add zoom and rotation controls to the map.
        map.addControl(new maplibregl.NavigationControl());

        map.on('load', async () => {
            image = await map.loadImage('/assets/images/map_marker.png');
            map.addImage('rara', image.data);
            map.addSource('point', {
                'type': 'geojson',
                'data': {
                    'type': 'FeatureCollection',
                    'features': [
                        {
                            'type': 'Feature',
                            'geometry': {
                                'type': 'Point',
                                'coordinates': [-0.05250799456648675, 51.56531964328481]
                            }
                        }
                    ]
                }
            });
            map.addLayer({
                'id': 'points',
                'type': 'symbol',
                'source': 'point',
                'layout': {
                    'icon-image': 'rara',
                    'icon-size': 0.25
                }
            });
        });
</script>