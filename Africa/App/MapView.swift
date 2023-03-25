//
//  MapView.swift
//  Africa
//
//  Created by Macbook Pro on 12/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinate = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinate, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    var body: some View {
        
        // basic map
        // Map(coordinateRegion: $region)
        
        // advanced map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            // pin
//            MapPin(coordinate: item.location, tint: .accentColor)
            
            // marker
//            MapMarker(coordinate: item.location, tint: .accentColor)
            
            // annotation
            MapAnnotation(coordinate: item.location) {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                
            }
        })
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
