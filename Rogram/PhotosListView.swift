import SwiftUI

struct PhotosListView: View {
	@StateObject var viewModel = PhotosListViewModel()
	
	var body: some View {
		List(viewModel.photosList) { item in
			PhotosRowCell(picture: item)
				.alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
					dimension[.leading]
				})
				.listRowSeparatorTint(.secondary)
				.listStyle(.plain)
		}
		.task {
			await viewModel.fetchAllPhotos()
		}
	}
}

#Preview {
    PhotosListView()
}
