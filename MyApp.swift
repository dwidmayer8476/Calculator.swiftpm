import SwiftUI

@main
struct MyApp: App {
    
    @AppStorage("hasSeenTutorial") private var hasSeenTutorial: Bool = false
   
    @State private var showApp = false
    var body: some Scene {
        WindowGroup {
            
//            if showApp {
//                ContentView()
//                    .transition(.opacity)
//            }else{
//                Text("Loading...")
//                    .font(.largeTitle)
//                    .onAppear() {
//                        DispatchQueue.main.asyncAfter(deadline: .now() + 1,) {
//                            withAnimation {
//                                self.showApp = true
//                            }
//                        }
//                    }
//            }
            //Can only do one of them or the other does not work
            if hasSeenTutorial {
                ContentView()
            }else {
                
                TutorialView()
            }
        }
    }
}
