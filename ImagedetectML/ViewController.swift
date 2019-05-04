//
//  ViewController.swift
//  ImagedetectML
//
//  Created by user on 23/02/2019.
//  Copyright © 2019 user. All rights reserved.
//

import UIKit

class ViewController : UIViewController ,UINavigationControllerDelegate
,UIImagePickerControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var Lidescrition: UITextView!
  
    var ImagePicker:UIImagePickerController!
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagePicker.delegate = self
        ImagePicker.sourceType = .camera

        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clic(_ sender: UIButton) {

        present(ImagePicker,animated:true ,completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info:
        [UIImagePickerController.InfoKey : Any]) {
imageView.image=info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        ImagePicker.dismiss(animated: true,completion: nil)
      //  ImagePicker.image:info[UIImagePickerController]
        
    }
}

