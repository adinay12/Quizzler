//
//  ResultViewController.swift
//  Quizzler
//
//  Created by Adinay on 27/6/22.
//

import UIKit

class ResultViewController: UIViewController {
    
   
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var repeatButton: UIButton!
    
    var result: (correctAnswer: String, tottalQuiestions: String) = ("",  "")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.backItem?.hidesBackButton = true
        
        navigationItem.backButtonTitle = "Quiz"
        navigationItem.title = "Result"
        navigationController?.navigationItem.leftBarButtonItem?.title = "Hello"
        navigationController?.navigationItem.title = "Result"
        
        navigationController?.navigationItem.largeTitleDisplayMode = .always

        setup()
        getData()
       
    }
    
    func setup() {
        adviceLabel.layer.cornerRadius = 20
        adviceLabel.layer.masksToBounds = true
        
        repeatButton.layer.cornerRadius = 15
        repeatButton.layer.masksToBounds = true
       
    }
    
    func getData() {
        resultLabel.text = "\(result.correctAnswer) / \(result.tottalQuiestions)"
        
        if let number = Int(result.correctAnswer), let questions = Int (result.tottalQuiestions) {
            if number == 0 {
                adviceLabel.text = "Go find a Library"
            } else if number > 0 && number < questions {
                adviceLabel.text = "Not Bad"
            } else if number == questions{
                adviceLabel.text = "Perfect"
                
            }
        }
        
    }
    
    @IBAction func repeatButtooTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true) // popViewController возращает на один шаг назад
    }
    
}
