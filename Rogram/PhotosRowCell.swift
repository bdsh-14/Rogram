import SwiftUI

struct PhotosRowCell: View {
	let photo: Photo

    var body: some View {
		VStack {
			AsyncImage(url: photo.thumbnailUrl)
				.frame(width: 300, height: 400)
				.border(Color.secondary)
			HStack {
				Text(photo.title).textCase(.uppercase)
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
	PhotosRowCell(photo: mockPhotos[0])
}
