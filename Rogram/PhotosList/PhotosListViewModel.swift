import Foundation

@MainActor
class PhotosListViewModel: ObservableObject {
	@Published var photosList: [Photo] = []
	private var networkManager: NetworkManagerInterface

	init(networkManager: NetworkManagerInterface = NetworkManager.shared) {
		self.networkManager = networkManager
	}

	func fetchPhotosList() async {
		do {
			photosList = try await networkManager.fetchPhotosList()
		} catch(let error) {
			print(error.localizedDescription)
		}
	}
}
