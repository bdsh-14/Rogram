import Foundation
@testable import Rogram

class MockNetworkManager: NetworkManagerInterface {
	var shouldReturnError = false

	func fetchPhotosList() async throws -> [Photo] {
		if shouldReturnError {
			throw URLError(.badServerResponse)
		} else {
			return [
				Photo(id: 1, title: "Test Photo 1", urlString: "https://example.com/photo1.jpg", thumbnailUrlString: "https://example.com/photo1_thumb.jpg"),
				Photo(id: 2, title: "Test Photo 2", urlString: "https://example.com/photo2.jpg", thumbnailUrlString: "https://example.com/photo2_thumb.jpg")
			]
		}
	}
}
