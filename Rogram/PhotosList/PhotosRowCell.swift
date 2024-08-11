import SwiftUI

struct PhotosRowCell: View {
	let photo: Photo

	var body: some View {
		VStack {
			RemoteImage(url: photo.thumbnailUrl,
						loadingView: PhotosRowLoadingCell())
				.frame(width: 300, height: 400)
			HStack(alignment: .firstTextBaseline)
			{
				Text(photo.title).textCase(.uppercase)
					.font(.subheadline)

				Spacer()
				Label(
					title: { Text("") },
					icon: {
						Image(systemName: "heart.fill")
							.resizable()
							.frame(width: 20, height: 20)
							.symbolRenderingMode(.multicolor)
							.fontWeight(.bold)
							.foregroundStyle(Color.red)
					}
				)
			}
			.padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 12))
		}
	}
}

#Preview {
	PhotosRowCell(photo: Photo(id: 1,
							   title: "accusamus beatae ad facilis cum similique qui sunt",
							   urlString: "https://via.placeholder.com/600/92c952",
							   thumbnailUrlString: "https://via.placeholder.com/150/92c952"))
}
