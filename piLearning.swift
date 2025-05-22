import SwiftUI

struct piLearn: View {
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            VStack{
                Text("What is pi?")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text("Pi (π) is a mathematical constant that represents the ratio of a circle’s circumference to its diameter. No matter the size of the circle, this ratio is always the same—approximately:π≈3.14159...Pi is an irrational number, meaning it cannot be expressed exactly as a fraction and its decimal expansion goes on forever without repeating. It is also a transcendental number, which means it's not a root of any non-zero polynomial equation with rational coefficients.")
                    .font(.footnote)
                    .foregroundStyle(.white)
                Text("When is pi used?")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                Text("Pi is used in many areas of mathematics and science, particularly whenever circles, curves, or periodic motion are involved. In geometry, it helps calculate the area and circumference of circles, which is essential in fields like architecture, engineering, and construction. In physics, pi appears in equations describing waves, sound, light, and circular motion. Trigonometry relies on pi because it defines angle measures in radians, which are based on the properties of a circle. Calculus uses pi in integrals involving circular or sinusoidal functions, and statistics uses it in the formula for the normal distribution, which is key in probability and data analysis. Because of these broad applications, pi plays a critical role in solving real-world problems involving space, motion, and patterns.")
                    .font(.footnote)
                    .foregroundStyle(.white)
                NavigationStack {
                    NavigationLink("try out pi"){
                        CalculatorView()
                    }
                }
            }
        }
    }
}

#Preview {
    piLearn()
}
