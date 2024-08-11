import Foundation

struct Photo: Identifiable, Decodable {
	let id: Int
	let title: String
	let urlString: String
	let thumbnailUrlString: String

	enum CodingKeys: String, CodingKey {
		case id
		case title
		case urlString = "url"
		case thumbnailUrlString = "thumbnailUrl"
	}

	var detailImageUrl: URL? {
		guard let url = URL(string: urlString) else { return nil }
		return url
	}

	var thumbnailUrl: URL? {
		guard let thumbnailUrl = URL(string: thumbnailUrlString) else { return nil }
		return thumbnailUrl
	}
}
