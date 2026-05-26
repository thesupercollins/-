
import SwiftUI

struct SettingsView: View {

    @AppStorage("notificationsEnabled")
    private var notificationsEnabled = true

    var body: some View {

        NavigationView {

            Form {

                Toggle(
                    "Enable Notifications",
                    isOn: $notificationsEnabled
                )

                Section("About") {

                    Text("No Ads")
                    Text("Offline Mode")
                }
            }
            .navigationTitle("Settings")
        }
    }
}
