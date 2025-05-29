import SwiftUI

struct Formulas: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                Image("AreaTSAVolumeForms")
                    .resizable()
                    .frame(width: 250, height: 250)
                Image("Area")
                    .resizable()
                    .frame(width: 250, height: 250)
                Image("TSA")
                    .resizable()
                    .frame(width: 250, height: 250)
            }
        }
    }
}

#Preview {
    Formulas()
}
