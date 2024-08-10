import Foundation

@MainActor
class PhotosListViewModel: ObservableObject {
	@Published var photosList: [Photo] = []
	private var networkManager: NetworkManagerInterface

	init(networkManager: NetworkManagerInterface = NetworkManager.shared) {
		self.networkManager = networkManager
	}

	func fetchAllPhotos() async {
		do {
			photosList = try await networkManager.fetchPhotos()
		} catch(let error) {
			print(error)
		}
	}
}
