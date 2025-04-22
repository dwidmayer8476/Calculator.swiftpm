
import SwiftUI
struct graphingEquationsView: View {
    @State var graph = ""
    @State var equation = "y = "
    var body: some View {
            VStack{
                Text("Graphing Calculator")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                
                TextField("y =", text: $equation)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                            GraphView(equation: equation)
                                .frame(height: 300)
                
                Spacer()
               
                NavigationStack{
                    NavigationLink("Go to Graph") {
                        GraphView()
                    
                           
                    }
                }
                
            }
            .font(.largeTitle)
            
        
    }
}
