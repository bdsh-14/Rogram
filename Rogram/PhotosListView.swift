import SwiftUI

struct PhotosListView: View {
	@StateObject var viewModel = PhotosListViewModel()
	@State private var isShowingDetailView: Bool = false
	@State private var selectedPhotoId: Int?

	var body: some View {
		NavigationStack {
			List(viewModel.photosList, selection: $selectedPhotoId) { item in
				PhotosRowCell(photo: item)
					.onTapGesture {
						selectedPhotoId = item.id
						isShowingDetailView = true
					}
					.alignmentGuide(.listRowSeparatorLeading, computeValue: { dimension in
						dimension[.leading]
					})
					.listStyle(.plain)
					.listRowBackground(Color.clear)
			}
			.task {
				await viewModel.fetchAllPhotos()
			}
			.navigationTitle("Ro")
			.background(Color.clear)
			.sheet(isPresented: $isShowingDetailView) {
				if let selectedPhoto = viewModel.photosList.first(where: { $0.id == selectedPhotoId }) {
					PhotoDetailView(photo: selectedPhoto)
				}
			}
		}
	}
}

#Preview {
    PhotosListView()
}
