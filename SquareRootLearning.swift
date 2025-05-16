import SwiftUI

struct SquareLearning: View {
    var body: some View {
        
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.purple]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack{
                

                Text("What Are Square Roots?")
                    .foregroundStyle(.cyan)
                    .font(.largeTitle)
                    .padding()
                Text("""
                       A square root of a number is a value that, when multiplied by itself, gives the original number. For example, the square root of 9 is 3 because 3 × 3 = 9. Square roots are denoted using the radical symbol (√), so the square root of x is written as √x. Every positive number has two square roots: one positive (called the principal square root) and one negative. For instance, the square roots of 16 are 4 and -4, as both satisfy 4 × 4 = 16 and (-4) × (-4) = 16. However, in most contexts, the term "square root" refers to the non-negative principal square root. Square roots are undefined for negative numbers in the set of real numbers, though they can be expressed as imaginary numbers in the complex number system. Square roots have practical applications in geometry, physics, and many fields involving mathematical computation.
                       """)
                .font(.footnote)
                .foregroundStyle(.cyan)
                
                Text("What Are Squares?")
                    .foregroundStyle(.cyan)
                    .font(.largeTitle)
                    .padding()
                Text("""
             A square of a number is the result of multiplying
             the number by itself. For example, the square of 3 is 9 because 3 × 3 = 9. Mathematically, the square of
             a number x is written as x². Squares are always non-negative because the product of two positive or t
             wo negative numbers is positive. For instance, both 3 × 3 = 9 and
             (-3) × (-3) = 9. Squaring a number is a fundamental operation in
             mathematics and has many applications, including in geometry,
             where it is used to calculate the area of a square, and in
             physics, where it appears in formulas like E = mc². It’s a simple
             yet powerful concept that plays a key role in various fields of
             science and everyday life.
             """)
                
                .foregroundStyle(.cyan)
                .font(.footnote)
                NavigationStack {
                    NavigationLink("Try It Out"){
                        SquaresAndRoots()
                    }
                    .foregroundStyle(.black)
                }
            }
        }
    }
}
#Preview {
    SquareLearning()
}

