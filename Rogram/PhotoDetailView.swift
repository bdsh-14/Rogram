import Kingfisher
import SwiftUI

struct PhotoDetailView: View {
	let photo: Photo

	var body: some View {
		VStack {
			KFImage(photo.detailImageUrl)
				.resizable()
				.placeholder({
					ProgressView(value: 0.5) { Text("Downloading image...")}
						.progressViewStyle(.circular)
						.tint(.pink)
						.frame(height: 150)
				})
				.frame(width: 400, height: 500)
			Text(photo.title).textCase(.uppercase)
				.font(.headline)
				.padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 12))
		}
	}
}

#Preview {
	PhotoDetailView(photo: mockPhotos[0])
}
