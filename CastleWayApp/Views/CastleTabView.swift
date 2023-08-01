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
        }.ignoresSafeArea()
    }
}

struct CastleTabView_Previews: PreviewProvider {
    static var previews: some View {
        CastleTabView()
    }
}
