
import Foundation

struct WorkShift: Identifiable, Codable {
    var id = UUID()
    var title: String
    var startDate: Date
    var colorHex: String
    var notes: String
}
