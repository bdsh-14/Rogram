import SwiftUI

struct PhotosListView: View {
	@StateObject private var viewModel = PhotosListViewModel()
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
					.listStyle(.plain)
					.listRowSeparator(.hidden)
					.listRowBackground(Color.clear)
			}
			.task {
				await viewModel.fetchPhotosList()
			}
			.navigationTitle("Ro")
			.fullScreenCover(isPresented: $isShowingDetailView) {
				if let selectedPhoto = viewModel.photosList.first(where: { $0.id == selectedPhotoId }) {
					PhotoDetailView(photo: selectedPhoto)
						.presentationDragIndicator(.visible)
				}
			}
		}
	}
}

#Preview {
	PhotosListView()
}
