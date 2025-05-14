import SwiftUI

struct trigView: View {
   
    var body: some View {
        NavigationStack{
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color.black, Color.purple]),
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                .ignoresSafeArea()
                
                
                VStack{
                    Text("What Is Trigonometry?")
                        .font(.largeTitle)
                        .padding()
                    Text("Trigonometry is used to find the sides or angles of a right triangle. With 1 side and 1 angle you are able to find the other not right angle and the other side. Or with 2 side lengths you are able to find the angles. The functions used for this are Sin (Sine), Cos (Cosine), and Tan (Tangent). Or for finding angles you use Sin^-1, Cos^-1, and Tan^-1. An easy way to remember which operation is opposite side or angle is remembering the acronym SOH-CAH-TOA. This stands for Sin-Opposite over Hypotnuse, Cosine-Adjacent over Hypotnuse, Tangent-Opposite over Adjacent.")
                        .font(.footnote)
                    Text("Sine (Sin)")
                        .font(.largeTitle)
                    Text("used in the form Sin(Angle°) = Opposite Side / Hypotnuse. or Sin(Opposite / hypotnuse)^-1 to find the angle")
                    Text("Cosine (Cos)")
                        .font(.largeTitle)
                    Text("used in the form Cos(Angle°) = Adjacent Side / Hypotnuse. or Cos(adjacent / hypotnuse)^-1 to find the angle")
                    Text("Tangent (Tan)")
                        .font(.largeTitle)
                    Text("used in the form Tan(Angle°) = Adjacent Side / Hypotnuse. or Tan(adjacent / hypotnuse)^-1 to find the angle")
                    NavigationLink("Try it Out") {
                        TrigonometryView()
                    }
                    .foregroundStyle(.cyan)
                }
                .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    trigView()
}
