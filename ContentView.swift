import SwiftUI

struct ContentView: View {
    @State var rotationAngle = 0.0
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
                        .font(.system(size: 36, weight: .bold, design: .rounded))
                            .foregroundColor(.white)
                            .kerning(1.5)
                            
                    
                    NavigationLink("Go to Calculator"){
                        CalculatorView()
                    }
                    .font(.system(size: 28, weight: .bold))
                    .padding(20)
                    .frame(width: 300, height: 70)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.gray]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                    .padding(50)
                    NavigationLink("Go to Graphing Calculator") {
                        graphingEquationsView()
                    }
                    .font(.system(size: 28, weight: .bold))
                    .padding(20)
                    .frame(width: 380, height: 70)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.gray]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                    .padding(50)
                    
                    
                    NavigationLink("Go to Explanations") {
                        ExplanationView()
                    }
                    .font(.system(size: 28, weight: .bold))
                    .padding(20)
                    .frame(width: 300, height: 70)
                    .background(
                        LinearGradient(
                            gradient: Gradient(colors: [Color.purple, Color.gray]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .foregroundColor(.white)
                    .cornerRadius(40)
                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 5)
                    .padding(50)
                    
                }
            }
        }
            .font(.system(size: 32, weight: .semibold))
    }
}
