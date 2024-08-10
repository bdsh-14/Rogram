import SwiftUI

struct PhotoDetailView: View {
	let photo: Photo

    var body: some View {
		VStack {
			AsyncImage(url: photo.detailImageUrl) { image in
				image.resizable()
			} placeholder: {
				Image(systemName: "photo")
					.resizable()
					.symbolRenderingMode(.monochrome)
					.foregroundStyle(Color.indigo.opacity(0.4))
			}
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
