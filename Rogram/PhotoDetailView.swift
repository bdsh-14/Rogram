import SwiftUI

struct PhotoDetailView: View {
	let photo: Photo

    var body: some View {
		AsyncImage(url: photo.detailImageUrl)
			.frame(width: 600, height: 600)
		Text(photo.title).textCase(.uppercase)
			.font(.headline)
    }
}

#Preview {
	PhotoDetailView(photo: mockPhotos[0])
}
