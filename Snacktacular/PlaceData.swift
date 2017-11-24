//
//  PlaceData.swift
//  Snacktacular
//
//  Created by John Gallaugher on 11/24/17.
//  Copyright © 2017 John Gallaugher. All rights reserved.
//

import Foundation
import CoreLocation

class PlaceData {
    var placeName: String
    var address: String
    var postingUserID: String
    var coordinate: CLLocationCoordinate2D
    
    init(placeName: String, address: String, coordinate: CLLocationCoordinate2D, postingUserID: String) {
        self.placeName = placeName
        self.address = address
        self.coordinate = coordinate
        self.postingUserID = postingUserID
    }
}
