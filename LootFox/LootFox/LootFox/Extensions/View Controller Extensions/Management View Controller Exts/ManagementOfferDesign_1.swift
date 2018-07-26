//
//  OfferCreation.swift
//  LootFox
//
//  Created by Landon Carr on 7/23/18.
//  Copyright © 2018 Landon Carr. All rights reserved.
//


import UIKit
import Foundation


extension ManagementOfferDesignVC {
 
    
    @objc func handleOffer() {
        
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        
        imagePicked = 1
        print("handleOffer Function engaged")
        present(imagePicker, animated: true)
        }
    
    @objc func handleBarcode() {
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        
        imagePicked = 2
        print("handleBarcode Function engaged")
        present(imagePicker, animated: true)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let editedImage = info[.editedImage] as? UIImage {
            
            if imagePicked == 1 {
                offerImage.image = editedImage
                offerImage.contentMode = .scaleAspectFill
                print("Offer Image was Edited")
            } else if imagePicked == 2 {
                offerBarcode.image = editedImage
                offerBarcode.contentMode = .scaleAspectFill
                print("Barcode Image was Edited")
            }
            
        } else
            
            
        if let originalImage = info[.originalImage] as? UIImage {
            
            if imagePicked == 1 {
                offerImage.image = originalImage
                offerImage.contentMode = .scaleAspectFill
                print("Offer Image was the Original")
            } else if imagePicked == 2 {
                offerBarcode.image = originalImage
                offerBarcode.contentMode = .scaleAspectFill
                print("Barcode Image was the Original")
            }
  
        }
        dismiss(animated: true)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        print("Image Picker has did cancel")
        dismiss(animated: true)
    }
}




//           selectedImageFromPicker = editedImage.resizeImage(image: editedImage, targetSize: CGSize.init(width:480, height:600))
//           let selectedImageFromPicker = editedImage.convert(toSize:CGSize(width:1080.0, height:1350.0), scale: UIScreen.main.scale)
