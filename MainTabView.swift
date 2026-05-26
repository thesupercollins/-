
import SwiftUI

struct MainTabView: View {

    var body: some View {

        TabView {

            CalendarView()
                .tabItem {
                    Label("Schedule", systemImage: "calendar")
                }

            StatisticsView()
                .tabItem {
                    Label("Stats", systemImage: "chart.bar")
                }

            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
        }
    }
}
