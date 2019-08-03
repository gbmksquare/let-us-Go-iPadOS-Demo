//
//  NoteDetailViewController.swift
//  iPadOS Step by Step
//
//  Created by BumMo Koo on 03/08/2019.
//  Copyright © 2019 BumMo Koo. All rights reserved.
//

import UIKit
import MobileCoreServices

class NoteDetailViewController: UIViewController {
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet private weak var imageView: UIImageView!
    
    var note: Note?
    
    // MARK: - View
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        loadCanvas()
    }
    
    private func setup() {
        
    }
    
    // MARK: - Action
    @IBAction
    private func tapped(clearCanvas button: UIBarButtonItem) {
        clearCanvas()
    }
    
    @IBAction
    private func tapped(document button: UIBarButtonItem) {
        presentDocumentPicker()
    }
    
    @IBAction
    private func tapped(scanner button: UIBarButtonItem) {
        presentDocumentScanner()
    }
    
    @IBAction
    private func tapped(photoLibrary button: UIBarButtonItem) {
        presentImagePicker()
    }
    
    @IBAction
    private func tapped(share button: UIBarButtonItem) {
        presentSharesheet(button)
    }
    
    // MARK: -
    private func presentDocumentPicker() {
        
    }
    
    private func presentDocumentScanner() {
        
    }
    
    private func presentImagePicker() {
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = false
        picker.mediaTypes = [kUTTypeImage as String]
        present(picker, animated: true)
    }
    
    private func presentSharesheet(_ sourceView: UIBarButtonItem? = nil) {
        guard let outputImage = generateImage() else { return }
        let share = UIActivityViewController(activityItems: [outputImage], applicationActivities: nil)
        share.popoverPresentationController?.barButtonItem = sourceView
        present(share, animated: true)
    }
    
    // MARK: - Canvas
    private func loadCanvas() {
        
    }
    
    private func saveCanvas() {
        
    }
    
    private func generateImage() -> UIImage? {
        return nil
    }
    
    private func clearCanvas() {
        
    }
}

// MARK: - Canvas
extension NoteDetailViewController {
    
}

// MARK: - Drag & Drop
extension NoteDetailViewController {
    
}

// MARK: - Documenet picker
extension NoteDetailViewController {
    
}

// MARK: - Document scanner
extension NoteDetailViewController {
    
}

// MARK: - Image picker
extension NoteDetailViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        defer {
            dismiss(animated: true)
        }
        
        if let image = info[.editedImage] as? UIImage {
            
        } else if let image = info[.originalImage] as? UIImage {
            
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true)
    }
}
