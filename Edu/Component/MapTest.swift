//
//  MapTest.swift
//  Edu
//
//  Created by Mirna Helmy on 5/17/22.
//

import SwiftUI
import MapKit

struct MapTest: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.850550, longitude: -79.078910),
        span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
    
    private let places: [Location] = [
    Location(coordinate: CLLocationCoordinate2D(latitude: 35.850550, longitude: -79.078910))
    ]
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems: places,
            annotationContent: { place in
            MapPin(coordinate: place.coordinate,
                   tint: .green)
            
        })
}
}


struct Location: Identifiable {
    let id = UUID()
    var coordinate: CLLocationCoordinate2D
}
struct MapTest_Previews: PreviewProvider {
    static var previews: some View {
        MapTest()
    }
}
