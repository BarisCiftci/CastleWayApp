//
//  CastleDetailView.swift
//  CastleWayApp
//
//  Created by Baris Ciftci on 30/07/2023.
//

import SwiftUI

struct CastleDetailView: View {
    var castleDetilItem: Castle
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 6){
                Rectangle()
                    .frame(height: 250)
                    .overlay(
                        ZStack {
                            Image(systemName: "photo.fill")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .foregroundColor(Color.white)
                                .padding()
                            Image(castleDetilItem.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                        }
                        
                    ).cornerRadius(8)
                    .clipped()
                    .padding(8)
                
                    .foregroundColor(Color.gray)
                VStack(alignment: .leading, spacing: 6){
                    Text(castleDetilItem.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .lineLimit(1)
                    
                    
                    Text(castleDetilItem.description)
                        .font(.body)
                }.padding()
            }.background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 4, x: 1, y: 1)
                .padding(8)
            
            
        }
        
        
    }
}

struct CastleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let example = Castle(id: 0, name: "CastleName", imageName: "besiekiery", latitude: 50.92176, longitude: 16.0978687, address: "String", description: "jksjdks")
        CastleDetailView(castleDetilItem: example)
    }
}
