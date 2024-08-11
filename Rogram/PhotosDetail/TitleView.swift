import SwiftUI

struct TitleView: View {
	let title: String

	var body: some View {
		HStack(alignment: .firstTextBaseline)
		{
			Text(title).textCase(.uppercase)
				.font(.subheadline)

			Spacer()
			Label(
				title: { Text("") },
				icon: {
					Image(systemName: "heart.fill")
						.resizable()
						.frame(width: 20, height: 20)
						.symbolRenderingMode(.multicolor)
						.fontWeight(.bold)
						.foregroundStyle(Color.red)
				}
			)
		}
		.padding(EdgeInsets(top: 8, leading: 20, bottom: 10, trailing: 12))
	}
}

#Preview {
	TitleView(title: "accusamus beatae ad facilis cum similique qui sunt")
}
