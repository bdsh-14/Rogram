import SwiftUI

struct PhotosRowCell: View {
	let photo: Photo

	var body: some View {
		VStack {
			RemoteImage(url: photo.thumbnailUrl,
						loadingView: PhotosRowLoadingCell())
				.frame(width: 300, height: 400)
			TitleView(title: photo.title)
		}
	}
}

#Preview {
	PhotosRowCell(photo: Photo(id: 1,
							   title: "accusamus beatae ad facilis cum similique qui sunt",
							   urlString: "https://via.placeholder.com/600/92c952",
							   thumbnailUrlString: "https://via.placeholder.com/150/92c952"))
}
