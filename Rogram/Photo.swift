import Foundation

struct Photo: Identifiable, Decodable {
	let id: Int
	let title: String
	let urlString: String
	let thumbnailUrlString: String

	var url: URL? {
		guard let url = URL(string: urlString) else { return nil }
		return url
	}

	var thumbnailUrl: URL? {
		guard let thumbnailUrl = URL(string: urlString) else { return nil }
		return thumbnailUrl
	}

	// TODO: Remove later

	static let mockData: [Photo] = [
		Photo(id: 1,
				title: "accusamus beatae ad facilis cum similique qui sunt",
				urlString: "https://via.placeholder.com/600/92c952",
				thumbnailUrlString: "https://via.placeholder.com/150/92c952"),
		Photo(id: 2,
				title: "reprehenderit est deserunt velit ipsam",
				urlString: "https://via.placeholder.com/600/771796",
				thumbnailUrlString: "https://via.placeholder.com/150/771796"),
		Photo(id: 3,
				title: "accusamus beatae ad facilis cum similique qui sunt",
				urlString: "https://via.placeholder.com/600/92c952",
				thumbnailUrlString: "https://via.placeholder.com/150/92c952"),
		Photo(id: 4,
				title: "reprehenderit est deserunt velit ipsam",
				urlString: "https://via.placeholder.com/600/771796",
				thumbnailUrlString: "https://via.placeholder.com/150/771796")
	]
}
