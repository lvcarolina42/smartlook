//
//  ContentView.swift
//  SmartLook
//
//  Created by Livia Lima on 25/04/23.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        VStack {
            CurveAppBar()
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
