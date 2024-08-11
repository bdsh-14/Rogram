import SwiftUI

struct PhotosRowCell: View {
	let photo: Photo

	var body: some View {
		VStack {
			RemoteImage(url: photo.thumbnailUrl,
						loadingView: PhotosRowLoadingCell())
				.frame(width: 300, height: 350)
			TitleView(title: photo.title)
		}
		.background(Color.white)
		.cornerRadius(10)
		.shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 3)
		.border(Color.gray, width: 1)
	}
}

#Preview {
	PhotosRowCell(photo: Photo(id: 1,
							   title: "accusamus beatae ad facilis cum similique qui sunt",
							   urlString: "https://via.placeholder.com/600/92c952",
							   thumbnailUrlString: "https://via.placeholder.com/150/92c952"))
}
