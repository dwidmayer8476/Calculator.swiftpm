import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("Calculator")
                .font(.largeTitle)
            NavigationStack {
                NavigationLink("Go to Calculator"){
                    CalculatorView()
                }
                .font(.largeTitle)
                .padding(50)
                NavigationLink("Go to Graphing Calculator") {
                    graphingEquationsView()
                    
                }
                .font(.largeTitle)
                
                NavigationLink("Go to Explanations") {
                    explanationsView()
                }
                .font(.largeTitle)
                .padding(50)
            }
        }
    }
}
