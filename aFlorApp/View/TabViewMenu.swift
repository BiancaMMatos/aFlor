import SwiftUI

struct TabViewMenu: View {
    
    @State var tab = 1
    @State var showModal = false
    
    var body: some View {
            
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            Text("Hello, world!")
                .padding()
            Spacer()
            HStack {
                TabView(selection: $tab) {
                    OrchidList()
                        .tabItem {
                            Image(systemName: "book.fill")
                            Text("Catálogo")
                        }.tag(0)
                    CameraView()
                        .tabItem {
                            Image(systemName: "camera.fill")
                            Text("Câmera")
                        }.tag(1).sheet(isPresented: $showModal) {
                            //TutorialView(onBoardingStateFetcher: )
                        }
                    RecentsView()
                        .tabItem {
                            Image(systemName: "clock.fill")
                            Text("Recentes")
                        }.tag(2)
                }
            }
        }
        
    }
}


struct TabViewMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabViewMenu()
    }
}
