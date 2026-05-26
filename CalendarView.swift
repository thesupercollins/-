
import SwiftUI

struct CalendarView: View {

    @StateObject private var store = ShiftStore()

    @State private var title = ""
    @State private var selectedDate = Date()
    @State private var notes = ""

    var body: some View {

        NavigationView {

            VStack {

                Form {

                    Section("Add Shift") {

                        TextField("Shift Name", text: $title)

                        DatePicker(
                            "Date",
                            selection: $selectedDate,
                            displayedComponents: [.date]
                        )

                        TextField("Notes", text: $notes)

                        Button("Save Shift") {

                            store.addShift(
                                title: title,
                                date: selectedDate,
                                notes: notes
                            )

                            title = ""
                            notes = ""
                        }
                    }
                }

                List {

                    ForEach(store.shifts) { shift in

                        VStack(alignment: .leading) {

                            Text(shift.title)
                                .font(.headline)

                            Text(
                                shift.startDate.formatted(
                                    date: .abbreviated,
                                    time: .omitted
                                )
                            )

                            if !shift.notes.isEmpty {

                                Text(shift.notes)
                                    .font(.caption)
                            }
                        }
                    }
                    .onDelete(perform: store.deleteShift)
                }
            }
            .navigationTitle("Shift Scheduler")
        }
    }
}
