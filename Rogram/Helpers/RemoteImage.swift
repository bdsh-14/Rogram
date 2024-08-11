import Kingfisher
import SwiftUI

struct RemoteImage: View {
	let url: URL?
	let loadingView: any View

	init(url: URL?, loadingView: any View) {
		self.url = url
		self.loadingView = loadingView
	}
	var body: some View {
		KFImage(url)
			.resizable()
			.placeholder {
				AnyView(loadingView)
			}
			.onFailureImage(KFCrossPlatformImage.imageUnavailable)
	}
}
