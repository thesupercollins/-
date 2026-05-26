
import Foundation
import SwiftUI

class ShiftStore: ObservableObject {

    @Published var shifts: [WorkShift] = []

    func addShift(title: String, date: Date, notes: String) {
        let shift = WorkShift(
            title: title,
            startDate: date,
            colorHex: "#007AFF",
            notes: notes
        )

        shifts.append(shift)
    }

    func deleteShift(at offsets: IndexSet) {
        shifts.remove(atOffsets: offsets)
    }
}
