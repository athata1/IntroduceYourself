//
//  ViewController.swift
//  IntroductionProject
//
//  Created by Akhil Thata on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var School: UITextField!
    @IBOutlet weak var AcademicYear: UISegmentedControl!
    @IBOutlet weak var numberOfPetsStepper: UIStepper!
    @IBOutlet weak var wantMorePets: UISwitch!
    @IBOutlet weak var introduceSelf: UIButton!
    @IBOutlet weak var numberOfPets: UILabel!

    
    @IBAction func introduceYourself(_ sender: UIButton) {
        
        let year = AcademicYear.titleForSegment(at: AcademicYear.selectedSegmentIndex);
        
        let introduction = "My name is \(FirstName.text!) \(LastName.text!) and I attend \(School.text!). I am currently in my \(year!) year and I own \(numberOfPets.text!) dogs. It is \(wantMorePets.isOn) that I want more pets";
        
        print(introduction)
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
        
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPets.text = "\(Int(sender.value))"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.init(red: 206.0 / 255.0 ,green: 184.0 / 255.0, blue: 136.0 / 255.0, alpha: 1);
        // Do any additional setup after loading the view.
    }
    
    
}

