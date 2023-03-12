//
//  MainView.swift
//  Africa
//
//  Created by Macbook Pro on 12/03/2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Browse")
                }
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Browse")
                }
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Location")
                }
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Gallery")
                }
        } // Tabview
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
