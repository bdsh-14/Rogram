import XCTest
@testable import Rogram

final class PhotosListViewModelTests: XCTestCase {

	var mockViewModel: PhotosListViewModel!
	var mockNetworkManager: MockNetworkManager!

	@MainActor override func setUp() {
		super.setUp()
		mockNetworkManager = MockNetworkManager()
		mockViewModel = PhotosListViewModel(networkManager: mockNetworkManager)
	}

	override func tearDown() {
		mockViewModel = nil
		mockNetworkManager = nil
		super.tearDown()
	}

	@MainActor
	func testFetchPhotosListSuccess() async {
		// Given
		mockNetworkManager.shouldReturnError = false

		// When
		await mockViewModel.fetchPhotosList()

		// Then
		XCTAssertEqual(mockViewModel.photosList.count, 2)
		XCTAssertEqual(mockViewModel.photosList[0].id, 1)
		XCTAssertEqual(mockViewModel.photosList[0].title, "Test Photo 1")
	}

	@MainActor
	func testFetchPhotosListFailure() async {
		// Given
		mockNetworkManager.shouldReturnError = true

		// When
		await mockViewModel.fetchPhotosList()

		// Then
		XCTAssertTrue(mockViewModel.photosList.isEmpty)
	}
}
