import SwiftUI

struct GraphView: View {
    let rows = 10
    let cols = 10
    var body: some View {
        GeometryReader{ geo in
            Path{ path in
                let w = geo.size.width
                let h = geo.size.height
                let dx = w / CGFloat(cols)
                let dy = h / CGFloat(rows)
                for i in 0...cols {
                    let x = dx * CGFloat(i)
                    path.move(to: CGPoint(x: x, y: 0))
                    path.addLine(to: CGPoint(x: x, y: h))
                    }
                for j in 0...rows {
                let y = dy * CGFloat(j)
                path.move(to: CGPoint(x: 0, y: y))
                path.addLine(to: CGPoint(x: w, y: y))
                    }
                }
            .stroke(Color.gray.opacity(0.5), lineWidth: 0.5)
            }
        }
    }

