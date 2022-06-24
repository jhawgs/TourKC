/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing featured landmarks above a list of landmarks grouped by category.
*/

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false

    var body: some View {
        NavigationView {
            Text("")
            List {
                Spacer()
                    .listRowSeparator(.hidden)
                Text("Featured")
                    .font(.system(size: 36, weight: .semibold))
                    .listRowSeparator(.hidden)
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                    .listRowSeparator(.hidden)
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationViewStyle(.columns)
            .navigationBarItems(leading: Text("text"), trailing: Text("text"))
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
            //.background(Color.white)
            .navigationTitle("Featured")
            //LandmarkDetail(landmark: modelData.names2landmark(names: ["World War I Museum"])[0])
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
