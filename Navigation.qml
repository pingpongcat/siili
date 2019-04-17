import QtQuick 2.9
import QtLocation 5.12
import QtPositioning 5.12


Item {
  id: navigationModule

  Map {
      anchors.fill: parent
      zoomLevel: 20
      tilt: 60
      bearing: 113
      center: QtPositioning.coordinate(51.110400842732133, 17.026111363150648)
      plugin: Plugin {
          name: "mapboxgl"

          PluginParameter {
              name: "mapboxgl.mapping.use_fbo"
              value: true
          }
          PluginParameter {
              name: "mapboxgl.access_token"
              value: "pk.eyJ1IjoibmV1cm90b2siLCJhIjoiY2o4b3FldXVuMDZjaDJxcDFudjd1aTFqMiJ9.NdmhOhxCfGAheb1adrglQQ"
          }
          PluginParameter {
              name: "mapboxgl.mapping.additional_style_urls"
              value: "mapbox://styles/neurotok/cjt6yjocc2ikk1fmlieywrivy"
          }


          PluginParameter {
              name: "mapboxgl.mapping.items.insert_before"
              value: "aerialway"
          }
      }

      MapParameter {
        id: source
        type: "source"
        property var name: "routeSource"
        property var sourceType: "geojson"
        property var data: ":road.geojson"
      }

      MapParameter {
              type: "layer"

              property var name: "route"
              property var layerType: "line"
              property var source: "routeSource"
              property var before: "road-label-small"
          }
      MapParameter {
          type: "paint"

          property var layer: "route"
          property var lineColor: "#00D8FF"
          property var lineWidth: 12.0
      }

      MapParameter {
          type: "layout"

          property var layer: "route"
          property var lineJoin: "round"
          property var lineCap: "round"
      }

      MapQuickItem {
          id: startMarker

          sourceItem: Image {
              id: mapMarker
              source: "assets/map-marker.png"
          }

          coordinate : QtPositioning.coordinate(51.11052071078612, 17.025671606016147)
          anchorPoint.x: mapMarker.width / 2
          anchorPoint.y: mapMarker.height

          MouseArea  {
              drag.target: parent
              anchors.fill: parent
          }


      }

  }

  Image {
    id: mapCover
    width: 240
    height: 720
    source: "assets/map-cover.png"
    anchors.right: parent.right
    anchors.top: parent.top
  }
}



