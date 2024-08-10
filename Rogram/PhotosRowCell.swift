import SwiftUI

struct PhotosRowCell: View {
	let picture: Photo

    var body: some View {
		VStack {
			AsyncImage(url: picture.thumbnailUrl)
				.frame(width: 300, height: 400)
				.border(Color.secondary)
			HStack {
				Text(picture.title).textCase(.uppercase)
					.font(.subheadline)

				Spacer()
				Button("", systemImage: "heart") {
					print("Button pressed")
				}
			}
			.padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 12))
		}
    }
}

#Preview {
	PhotosRowCell(picture: mockPhotos[0])
}
