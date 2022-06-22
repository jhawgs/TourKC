/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A view showing a list of landmarks.
*/

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly: Bool = false
    @State private var search: String = ""
    @State private var filteredCategory: Landmark.Category? = nil
    @State private var filteredCharacteristic: Landmark.Characteristic? = nil
    
    func set_cat(_ cat: Landmark.Category) {
        if filteredCategory == cat {
            filteredCategory = nil
        } else {
            filteredCategory = cat
        }
    }
    
    func set_char(_ cat: Landmark.Characteristic) {
        if filteredCharacteristic == cat {
            filteredCharacteristic = nil
        } else {
            filteredCharacteristic = cat
        }
    }

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
        .filter { landmark in
            (search == "" || landmark.name.contains(search))
        }
        .filter { landmark in
            (filteredCategory == nil || landmark.category == filteredCategory)
        }
        .filter { landmark in
            (filteredCharacteristic == nil || landmark.characteristic == filteredCharacteristic)
        }
    }

    var body: some View {
        NavigationView {
            List {
                TextField("Search", text: $search)
                HStack {
                    //Text("Filter:")
                    Menu {
                        ForEach(Landmark.Category.allCases, content: { cat in
                            Button(action: {
                                set_cat(cat)
                            }, label: {Label(cat.readable_string, systemImage: cat == filteredCategory ? "checkmark" : "none")})
                        })
                    } label: {
                        Label("Category", systemImage: "chevron.down")
                            .lineLimit(1)
                            .font(.subheadline)
                            .background(UIDevice.current.userInterfaceIdiom == .phone ? .white: Color(.init(gray: 0.1, alpha: 0.0)))
                            .cornerRadius(4)
                    }
                    Menu {
                        ForEach(Landmark.Characteristic.allCases, content: { cat in
                            Button(action: {
                                set_char(cat)
                            }, label: {Label(cat.readable_string, systemImage: cat == filteredCharacteristic ? "checkmark" : "none")})
                        })
                    } label: {
                        Label("Characteristic", systemImage: "chevron.down")
                            .lineLimit(1)
                            .font(.subheadline)
                            .background(UIDevice.current.userInterfaceIdiom == .phone ? .white: Color(.init(gray: 0.1, alpha: 0.0)))
                            .cornerRadius(4)
                    }
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Things to Do")
            .navigationViewStyle(.columns)
            LandmarkDetail(landmark: modelData.names2landmark(names: ["World War I Museum"])[0])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
