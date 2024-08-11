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
					.alignmentGuide(.listRowSeparatorLeading) { dimension in
						dimension[.leading]
					}
					.listRowSeparatorTint(.secondary)
					.listStyle(.plain)
					.listRowBackground(Color.clear)
			}
			.task {
				await viewModel.fetchPhotosList()
			}
			.navigationTitle("Ro")
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
