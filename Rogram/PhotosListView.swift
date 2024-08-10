import SwiftUI

struct PhotosListView: View {
    var body: some View {
		List(Photo.mockData) { item in
			PhotosRowCell(picture: item)
				.alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
					dimension[.leading]
				})
				.listRowSeparatorTint(.red)

        }
    }
}

#Preview {
    PhotosListView()
}
