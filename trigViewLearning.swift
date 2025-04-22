import SwiftUI

struct trigView: View {
   
    var body: some View {
        VStack{
            Text("What Is Trigonometry?")
                .font(.largeTitle)
                .padding()
            Text("Trigonometry is used to find the sides or angles of a right triangle. With 1 side and 1 angle you are able to find the other not right angle and the other side. Or with 2 side lenthes you are able to find the angles. The functions used for this are Sin (Sine), Cos (Cosine), and Tan (Tangent). Or for finding angles you use Sin^-1, Cos^-1, and Tan^-1.")
                .font(.footnote)
            Text("Cosine (cos)")
                .font(.largeTitle)
            
        }
    }
}

#Preview {
    trigView()
}
