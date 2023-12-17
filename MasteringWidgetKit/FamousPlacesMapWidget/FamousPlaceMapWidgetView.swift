//
//  FamousPlaceMapWidgetView.swift
//  WidgetKitExtensionExtension
//
//  Created by koala panda on 2023/10/03.
//

import SwiftUI
import CoreLocation
import WidgetKit

struct FamousPlaceMapWidgetView: View {
    var entry: FamousPlaceMapEntry
    
    var body: some View {
        ZStack() {
            
            entry.famousPlace.image
            
            Text(entry.famousPlace.name)
                .foregroundColor(.white)
                .font(.caption.bold())
                .frame(height: 20)
                .frame(maxWidth: .infinity)
                .background(Color.orange.gradient.opacity(0.6))
            
        }
    }
}

struct FamousPlaceMapWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        FamousPlaceMapWidgetView(entry: FamousPlaceMapEntry(date: Date(), famousPlace: FamousPlace(name: "港の見える丘公園", location: CLLocationCoordinate2D(latitude: 35.4408333, longitude: 139.6538888))))
                    .previewContext(WidgetPreviewContext(family: .systemSmall))
        }
        }
    
