import SwiftUI

struct PhotosRowLoadingCell: View {
	var body: some View {
		ProgressView()
			.progressViewStyle(.circular)
			.tint(Color.pink)
	}
}

#Preview {
    PhotosRowLoadingCell()
}
