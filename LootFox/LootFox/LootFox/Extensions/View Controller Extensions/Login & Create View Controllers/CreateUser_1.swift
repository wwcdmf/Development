//////
//////  ImagePicker.swift
//  LootFox
//
//  Created by Landon Carr on 6/26/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//
//import UIKit
//
//
//
//extension CreateUserVC {
//
//@objc func handleSelectProfileImageView() {
//
//    let picker = UIImagePickerController()
//    picker.allowsEditing = true
//    picker.delegate = self
//
//    self.present(picker, animated: true, completion: nil)
//    print("picker selected")
//}
//
//
//// WORKS BELOW
//// func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
////
////{
////    print("image Picker Engaged")
////
////    let image  = info[.originalImage] as? UIImage
////    self.profileImage.image = image
////
////    dismiss(animated: true, completion: nil)
////
////    }
//
//    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
//
//    {
//
//        var selectedImageFromPicker: UIImage?
//
//        if let editedImage = info[.editedImage] as? UIImage {
//            //selectedImageFromPicker = editedImage
//
//            selectedImageFromPicker = editedImage.resizeImage(image: editedImage, targetSize: CGSize.init(width:480, height:600))
//
//
////            let selectedImageFromPicker = editedImage.convert(toSize:CGSize(width:1080.0, height:1350.0), scale: UIScreen.main.scale)
//
//        } else if let originalImage = info[.originalImage] as? UIImage {
//
//           // selectedImageFromPicker = originalImage
//
//
//            selectedImageFromPicker = originalImage.resizeImage(image: originalImage, targetSize: CGSize.init(width:480, height:600))
//
//        }
//
//        if let selectedImage = selectedImageFromPicker {
//            profileImage.contentMode = .scaleAspectFill
//            profileImage.image = selectedImage
//        }
//
//        dismiss(animated: true, completion: nil)
//
//    }
//
//func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//    print("canceled picker")
//    dismiss(animated: true, completion: nil)
//        }
//
//
//}
