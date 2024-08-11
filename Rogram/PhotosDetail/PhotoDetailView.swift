import SwiftUI

struct PhotoDetailView: View {
	let photo: Photo

	var body: some View {
		VStack {
			DismissButton()
			RemoteImage(url: photo.detailImageUrl, loadingView: PhotoDetailLoadingView())
				.frame(width: 400, height: 500)
			Text(photo.title).textCase(.uppercase)
				.font(.headline)
				.padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 12))
		}
	}
}

#Preview {
	PhotoDetailView(photo: Photo(id: 1,
								 title: "accusamus beatae ad facilis cum similique qui sunt",
								 urlString: "https://via.placeholder.com/600/92c952",
								 thumbnailUrlString: "https://via.placeholder.com/150/92c952"))
}
