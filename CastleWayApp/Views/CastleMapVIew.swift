//
//  CastleMapVIew.swift
//  CastleWayApp
//
//  Created by Baris Ciftci on 31/07/2023.
//

import SwiftUI
import MapKit

struct CastleMapVIew: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 52.0, longitude: 19.0),
        span: MKCoordinateSpan(latitudeDelta: 12.0, longitudeDelta: 12.0)
    )

    let castles: [Castle] = []

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: castles) { castle in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: castle.latitude, longitude: castle.longitude)) {
                CastleAnnotationView(castle: castle)
            }
        }
    }
}

struct CastleAnnotationView: View {
    let castle: Castle

    var body: some View {
        VStack {
            Image(castle.imageName)
                .resizable()
                .frame(width: 30, height: 30)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))

            Text(castle.name)
                .font(.caption)
                .foregroundColor(.primary)
        }
    }
}



struct CastleMapVIew_Previews: PreviewProvider {
    static var previews: some View {
        CastleMapVIew()
    }
}
