import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
        VStack{
            
            Text("The Calculator")
                .font(.largeTitle)
                .padding()
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
                    ExplanationView()
                }
                .font(.largeTitle)
                .padding(50)
                
            }
        }
    }
}
