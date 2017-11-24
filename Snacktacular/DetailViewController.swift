//
//  DetailViewController.swift
//  Snacktacular
//
//  Created by John Gallaugher on 11/24/17.
//  Copyright © 2017 John Gallaugher. All rights reserved.
//

import UIKit
import CoreLocation

class DetailViewController: UIViewController {

    @IBOutlet weak var placeNameField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    
    var placeData: PlaceData?
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let placeData = placeData {
            placeNameField.text = placeData.placeName
            addressField.text = placeData.address
        } else {
            placeData = PlaceData(placeName: "", address: "", coordinate: CLLocationCoordinate2D(), postingUserID: "")
        }
        
        placeNameField.becomeFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        placeData?.placeName = placeNameField.text!
        placeData?.address = addressField.text!
    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        let isPrestingInAddMode = presentingViewController is UINavigationController
        if isPrestingInAddMode {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
    @IBAction func lookupButtonPressed(_ sender: UIBarButtonItem) {
    }
}
