import SwiftUI

struct ContentView: View {
    var body: some View {

        NavigationStack {
            
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                VStack{
                    
                    Text("The Calculator")
                        .foregroundStyle(.white)
                        .padding()
                    NavigationLink("Go to Calculator"){
                        CalculatorView()
                    }
                    
                    .padding(50)
                    NavigationLink("Go to Graphing Calculator") {
                        graphingEquationsView()
                        
                    }
                    
                    
                    NavigationLink("Go to Explanations") {
                        ExplanationView()
                    }
                    .padding(50)
                    
                }
            }
        }
            .font(.system(size: 32, weight: .semibold))
    }
}
