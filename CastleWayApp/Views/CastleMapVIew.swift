//
//  CastleMapVIew.swift
//  CastleWayApp
//
//  Created by Baris Ciftci on 31/07/2023.
//

import SwiftUI
import MapKit

struct CastleMapView: View {
    @State private var castleMapData = CastleData()
    
    
    let castles: [Castle] = []
    
    var body: some View {
        Map(coordinateRegion: .constant(getCoordinateRegion()), annotationItems: castleMapData.castles) { castle in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: castle.latitude, longitude: castle.longitude)) {
                VStack(spacing: 0) {
                    Image(castle.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding(2)
                        .background(Color.white)
                        .clipShape(Circle())
                        
                        
                        
                    
                    Text(castle.name)
                        .font(.footnote)
                        .padding(2)
                        .padding(.horizontal, 6)
                        .background(Color.white)
                        .cornerRadius(12)
                        
                    
                }.shadow(color: .black.opacity(0.4), radius: 2)
            }
        }
    }
        private func getCoordinateRegion() -> MKCoordinateRegion {
            guard let firstPlace = castleMapData.castles.first else {
                return MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 0, longitude: 0), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
            }
            let span = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5)
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: firstPlace.latitude, longitude: firstPlace.longitude), span: span)
            return region
        }
    }
    
    
    struct CastleMapView_Previews: PreviewProvider {
        static var previews: some View {
            CastleMapView()
        }
    }
