import SwiftUI

struct DismissButton: View {
	@Environment(\.dismiss) var dismiss

	var body: some View {
		HStack {
			Spacer()
			Button {
				dismiss()
			} label: {
				Text("Dismiss")
					.padding()
					.font(.body)
			}
		}
	}
}
