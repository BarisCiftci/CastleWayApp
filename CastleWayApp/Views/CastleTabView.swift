//
//  CastleTabView.swift
//  CastleWayApp
//
//  Created by Baris Ciftci on 01/08/2023.
//

import SwiftUI

struct CastleTabView: View {
    let castle: [Castle] = []
    var body: some View {
        TabView {
            CastleGridView()
                .tabItem{
                    Image(systemName: "building.columns")
                    Text("Castles")
                }
            
            CastleMapView()
                .tabItem{
                    Image(systemName: "map")
                    Text("Map")
                }
            
            CastleMapView()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            
            CastleMapView()
                .tabItem{
                    Image(systemName: "checkmark.seal.fill")
                    Text("Visited")
                }
        }.ignoresSafeArea()
    }
}

struct CastleTabView_Previews: PreviewProvider {
    static var previews: some View {
        CastleTabView()
    }
}
