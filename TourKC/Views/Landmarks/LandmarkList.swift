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
                    //
                    //Toggle(isOn: $showFavoritesOnly) {
                    //    Text("Favorites")
                    //}
                    //.toggleStyle(.button)
                    Menu("Category") {
                        ForEach(Landmark.Category.allCases, content: { cat in
                            Button(action: {
                                set_cat(cat)
                            }, label: {Label(cat.rawValue, systemImage: cat == filteredCategory ? "checkmark" : "none")})
                        })
                    }
                    Menu("Characteristic") {
                        ForEach(Landmark.Characteristic.allCases, content: { cat in
                            Button(action: {
                                set_char(cat)
                            }, label: {Label(cat.rawValue, systemImage: cat == filteredCharacteristic ? "checkmark" : "none")})
                        })
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
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
