import SwiftUI

struct PhotoDetailLoadingView: View {
    var body: some View {
		ProgressView(value: 0.5) { Text("Downloading image...")}
			.progressViewStyle(.circular)
			.tint(.pink)
    }
}

#Preview {
    PhotoDetailLoadingView()
}
