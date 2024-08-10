import SwiftUI

struct PhotosRowCell: View {
	let picture: Photo

    var body: some View {
		VStack {
			AsyncImage(url: URL(string: picture.thumbnailUrlString)!)
				.frame(width: 300, height: 400)
				.background(Color.pink.opacity(0.5))
			HStack {
				Text(picture.title).textCase(.uppercase)
					.font(.subheadline)
				Spacer()
				Button("", systemImage: "heart") {
					print("Button pressed")
				}
			}
		}
    }
}

#Preview {
	PhotosRowCell(picture: Photo.mockData[0])
}
