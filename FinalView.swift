//
//  SwiftUIView.swift
//  Coder Clicker
//
//  Created by Nils Potier on 21/09/2025.
//

import SwiftUI
import Network
struct FinalView: View {
    @StateObject var networkMonitor = NetworkMonitor()
    var body: some View {
        ContentView()
    }
}

class NetworkMonitor: ObservableObject{
    private var monitor: NWPathMonitor
    private var queue: DispatchQueue
    
    @Published var isConnected: Bool = false
    
    init() {
        self.monitor = NWPathMonitor()
        self.queue = DispatchQueue(label: "networkMonitor")
        
        self.monitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                self.isConnected = path.status == .satisfied
            }
        }
    }
    
    deinit {
        monitor.cancel()
    }
}
