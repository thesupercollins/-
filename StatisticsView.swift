
import SwiftUI

struct StatisticsView: View {

    var body: some View {

        NavigationView {

            VStack(spacing: 20) {

                Image(systemName: "chart.bar.fill")
                    .font(.system(size: 60))

                Text("Statistics")
                    .font(.largeTitle)

                Text("Work statistics screen")
            }
            .navigationTitle("Statistics")
        }
    }
}
