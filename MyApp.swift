import SwiftUI

@main
struct MyApp: App {
    @AppStorage("hasSeenTutorial") private var hasSeenTutorial: Bool = false
    var body: some Scene {
        WindowGroup {
            if !hasSeenTutorial {
                ContentView()
            }else {
                
                TutorialView()
            }
        }
    }
}
