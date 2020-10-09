//
//  ContentView.swift
//  DateUI
//
//  Created by Jinwoo Kim on 10/9/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ContentViewModel = .init()
    
    var body: some View {
        VStack {
            Text("\(viewModel.elapsed ?? 0)")
                .font(.title)
                .padding()
            
            Button("Start") {
                viewModel.start()
            }
            .padding()
            
            Button("Get Elapsed") {
                viewModel.getElapsed()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
