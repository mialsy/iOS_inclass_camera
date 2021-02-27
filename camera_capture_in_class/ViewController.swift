//
//  ViewController.swift
//  camera_capture_in_class
//
//  Created by Mialsy on 2/27/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let pickerController = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.sourceType = UIImagePickerController.SourceType.camera
        pickerController.delegate = self
        
    }
    
    @IBAction func takePicture(_ sender: Any) {
        present(pickerController, animated: true, completion: nil)
    }
}

extension ViewController : UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        print("The camera has been closed")
    }
}

extension ViewController : UINavigationControllerDelegate {
    
}

