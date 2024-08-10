import Foundation

protocol NetworkManagerInterface {
	func fetchPhotos() async throws -> [Photo]
}

class NetworkManager: NetworkManagerInterface {
	static let shared = NetworkManager()
	private let session: URLSession
	private init(session: URLSession = URLSession.shared) {
		self.session = session
	}
	
	func fetchPhotos() async throws -> [Photo] {
		guard let url = URL(string: "https://jsonplaceholder.typicode.com/album/1/photos") else {
			preconditionFailure("Invalid URL !!")
		}
		let (data, response) = try await session.data(from: url)
		guard let response = response as? HTTPURLResponse, (200...299).contains(response.statusCode) else {
			throw URLError(.badServerResponse)
		}
		let photos = try JSONDecoder().decode([Photo].self, from: data)
		return photos
	}
}
