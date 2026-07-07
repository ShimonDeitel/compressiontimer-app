import SwiftUI

/// Unique visual identity for Compression Timer: clinical blue with progress orange.
enum Theme {
    static let accent = Color(hex: "#3B6E91")
    static let accentSecondary = Color(hex: "#E8955A")
    static let background = Color(hex: "#EEF5F8")
    static let ink = Color(hex: "#0E1B22")

    static var titleFont: Font {
        Font.system(.largeTitle, design: .default).weight(.bold)
    }

    static var bodyFont: Font {
        Font.system(.body, design: .default)
    }

    static var cardCornerRadius: CGFloat { 18 }
}

extension Color {
    init(hex: String) {
        let s = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var v: UInt64 = 0
        Scanner(string: s).scanHexInt64(&v)
        let r = Double((v >> 16) & 0xFF) / 255.0
        let g = Double((v >> 8) & 0xFF) / 255.0
        let b = Double(v & 0xFF) / 255.0
        self.init(red: r, green: g, blue: b)
    }
}
