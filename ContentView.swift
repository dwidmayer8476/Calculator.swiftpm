import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("Calulator")
                .font(.largeTitle)
            NavigationStack {
                NavigationLink("Go to Calculator"){
                    CalculatorView()
                }
            }
            
        }
    }
}
