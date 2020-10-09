//
//  ContentViewModel.swift
//  DateUI
//
//  Created by Jinwoo Kim on 10/9/20.
//

import SwiftUI

final class ContentViewModel: ObservableObject {
    private var started: Date? = nil
    @Published var elapsed: Int? = nil
    
    func start() {
        started = Date()
        elapsed = nil
    }
    
    func getElapsed() {
        guard let initialDate = self.started else {
            elapsed = nil
            return
        }
        
        elapsed = Int(Date().timeIntervalSince(initialDate))
    }
}
