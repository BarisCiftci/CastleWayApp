//
//  CastleListView.swift
//  SwiftUIContinuedLearning
//
//  Created by Baris Ciftci on 25/07/2023.
//

import SwiftUI

struct CastleListView: View {
    
    @ObservedObject var castleData = CastleData()
    
    var body: some View {
        List {
            ForEach(castleData.castles) {castle in
                
                VStack {
                    VStack(alignment: .leading) {
                        Image(castle.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 200)
                            .cornerRadius(12)
                        
                       Text(castle.name)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Text(castle.address)
                             .font(.callout)
                    }
                }
            }
        }.listStyle(.plain)
    }
}


struct CastleListView_Previews: PreviewProvider {
    static var previews: some View {
        CastleListView()
    }
}
