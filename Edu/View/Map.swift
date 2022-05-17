//
//  Map.swift
//  Edu
//
//  Created by Mirna Helmy on 5/17/22.
//

import SwiftUI
import MapKit

struct MapTest: View {
    @State private var region: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.850550, longitude: -79.078910),
        span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        Map(coordinateRegion: $region)
}
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        MapTest()
    }
}
