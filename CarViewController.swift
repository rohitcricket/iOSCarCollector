//
//  CarViewController.swift
//  CarCollector
//
//  Created by ROHIT GUPTA on 9/27/16.
//  Copyright © 2016 ROHIT GUPTA. All rights reserved.
//

import UIKit

class CarViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var carImageView: UIImageView!
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    var imagePicker = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imagePicker.delegate = self
    }

    @IBAction func photosTapped(_ sender: AnyObject) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        carImageView.image = image
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func cameraTapped(_ sender: AnyObject) {
        
        imagePicker.sourceType = .camera
    }
    
   
    
    
    @IBAction func addTapped(_ sender: AnyObject) {
        
       let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let car = Car(context: context)
    
}
