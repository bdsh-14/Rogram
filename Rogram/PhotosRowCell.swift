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
				Button {
					print("Button pressed")
				} label: {
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
			}
			.padding(EdgeInsets(top: 8, leading: 20, bottom: 0, trailing: 12))
		}
    }
}

#Preview {
	PhotosRowCell(photo: mockPhotos[0])
}
