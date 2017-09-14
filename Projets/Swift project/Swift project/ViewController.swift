//
//  ViewController.swift
//  Swift project
//
//  Created by Ludovic Ollagnier on 11/09/2017.
//  Copyright © 2017 Ludovic Ollagnier. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    //MARK: - Outlets

    @IBOutlet weak var imageView: UIImageView!
    //MARK: Public vars

    //MARK: Private vars
    private var test = 0

    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - Public methods

    @IBAction func async(_ sender: Any) {


    }

    @IBAction func authenticateUser(_ sender: Any) {
        let context = LAContext()
        var error: NSError?

        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {

            context.evaluatePolicy(.deviceOwnerAuthentication, localizedReason: "Pour savoir qui tu es", reply: { (authenticated, error) in

                if authenticated {
                    DispatchQueue.main.async {
                        self.view.backgroundColor = UIColor.green
                    }
                }
            })
        }

        print(error?.localizedDescription)
    }

    @IBAction func takePhoto(_ sender: Any) {

        let controller = UIImagePickerController()
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            controller.sourceType = .camera
            if let types = UIImagePickerController.availableMediaTypes(for: .camera) {
                controller.mediaTypes = types
            }
        } else if UIImagePickerController.isSourceTypeAvailable(.photoLibrary) {
            controller.sourceType = .photoLibrary
        }
        controller.delegate = self
        present(controller, animated: true, completion: nil)
    }
    //MARK: - Private methods
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return test
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }

    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {

        if let originalImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageView.image = originalImage
        }

        dismiss(animated: true, completion: nil)
    }
}

