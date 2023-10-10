//
//  ContentView.swift
//  Touchdown
//
//  Created by Arjun Prabhune on 9/27/23.
//

import SwiftUI

// MARK: - PROPERTIES


// MARK: - BODY
struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5,  x: 0, y: 5)
                
                ScrollView (.vertical, showsIndicators: false, content: {
                    VStack (spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 25)
                            .frame(width: 400, height: 300)
                        
                        CategoryGridView()
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VSTACK
                }) //: SCROLLVIEW
                
            } //: VSTACK
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
