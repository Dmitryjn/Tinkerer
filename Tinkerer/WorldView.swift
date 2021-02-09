//
//  WorldView.swift
//  Tinkerer
//
//  Created by Agustin Navas on 09/02/2021.
//

import MapKit
import SwiftUI

struct WorldView: View {
    
    @EnvironmentObject var locations : Locations
    @State var region = MKCoordinateRegion (
        center:
            CLLocationCoordinate2D(latitude: 52.507222,
                                   longitude: -0.1275) ,
        span: MKCoordinateSpan (latitudeDelta: 40, longitudeDelta: 40)
    
    )
    
    var body: some View {
        Map(coordinateRegion: $region , annotationItems: locations.places)
        {
            location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)){
            Image(location.country)
                .resizable()
                .cornerRadius(10)
                .frame(width:80, height:40)
                .shadow(radius: 3)
            }
        }
            .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
