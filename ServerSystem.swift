import SwiftUI

struct Server{
    var levelPrice: Double
    var level: Int
    var Memory: Double
    var id: Int
    var Price: Double
}
struct ServerStorage{
    var level: Int
}
var servers: [Server] = []

let columns = [
    GridItem(.flexible(), spacing: 12),
    GridItem(.flexible(), spacing: 12)
]
struct ServersView: View {
    @State private var IsOn: Bool = false
    var body: some View {
        Text("serverView")
    }
    
    private func sellServer(at id: Int) {
        print("Vendre le serveur \(id + 1)")
    }
    
    private func upgradeServer(at id: Int) {
        if let index = servers.firstIndex(where: { $0.id == id }) {
            servers[index].level += 1 
        }
    }
    
    private func buyServer() {
        if servers.count >= CodeClickerSession.numberOfServers {
            print("Limite de serveurs atteinte")
            return
        }
        let newId = (servers.map { $0.id }.max() ?? -1) + 1
        let newServer = Server(levelPrice: 100, level: 1, Memory: 1000, id: newId, Price: 1000)
        servers.append(newServer)
    }
}







