//
//  ViewController.swift
//  Quizzler
//
//  Created by Adinay on 27/6/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!
    @IBOutlet weak var view8: UIView!
    @IBOutlet weak var view9: UIView!
    
    
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var mainImageView: UIImageView!
    
    
    var questions: [Questions] = [.one, .two, .three, .four, .five, .six, .seven, .eight, .nine]
    var userAnswers: [String] = []
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        initialQuestion()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated) //super ищет внутри родительского класса
        restart()  // запускаеи снова 
    }
    
    @IBAction func answerTapped(_ sender: UIButton) {
        switch sender.tag {
        case 1:
            userAnswers.insert("No", at: counter )
        case 2:
            userAnswers.insert("Yes", at: counter)
        default:
            print("Hello")
        }
        
        
        if questions.count - 1 == counter {
            print(userAnswers)
            navigationItem.title = "Quiz"
            let vc = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController
            vc.result = ("\(checkCorrectAnswers())", "\(counter + 1)")
            
            navigationController?.pushViewController(vc, animated: true)
            
            // MARK: How to push next VC via Storyboard
        } else {
            counter += 1
            initialQuestion()
            print(userAnswers)
        }
        
    }
    
    func setup(){
        makeCornerView(view: noButton, cornerRadius: 15)
        makeCornerView(view: yesButton, cornerRadius: 15)
        makeCornerView(view: view1, cornerRadius: 5)
        makeCornerView(view: view2, cornerRadius: 5)
        makeCornerView(view: view3, cornerRadius: 5)
        makeCornerView(view: view4, cornerRadius: 5)
        makeCornerView(view: view5, cornerRadius: 5)
        makeCornerView(view: view6, cornerRadius: 5)
        makeCornerView(view: view7, cornerRadius: 5)
        makeCornerView(view: view8, cornerRadius: 5)
        makeCornerView(view: view9, cornerRadius: 5)
        makeCornerView(view: mainView, cornerRadius: 30)
        navigationController?.navigationBar.backgroundColor = UIColor(red: 0.169, green: 0.169, blue: 0.169, alpha: 1)
        
    }
    
    func initialQuestion(){
        mainLabel.text = questions[counter].title
        navigationItem.title = "Question N \(counter + 1)"
        view1.backgroundColor = .green
        changeViewsBG()
    }
    
    
    func checkCorrectAnswers() -> String {
                var correctAnswers: Int = 0
                for i in 0..<questions.count  {
                    if userAnswers[i] == questions[i].answers {
                        correctAnswers += 1
                    }
                    
                }
                return "\(correctAnswers)"
    }
    
    
    func changeViewsBG(){
        switch counter {
        case 0:
            view1.backgroundColor = .green
        case 1:
            view2.backgroundColor = .green
        case 2:
            view3.backgroundColor = .green
        case 3:
            view4.backgroundColor = .green
        case 4:
            view5.backgroundColor = .green
        case 5:
            view6.backgroundColor = .green
        case 6:
            view7.backgroundColor = .green
        case 7:
            view8.backgroundColor = .green
        case 8:
            view9.backgroundColor = .green
        default:
            print("Privet")
            
            
        }
    }
    
    func makeCornerView(view: UIView, cornerRadius: CGFloat){
        view.layer.cornerRadius = cornerRadius
        view.layer.masksToBounds = true
    }
    
    func restart() {
    userAnswers  = []
        counter = 0
        
        view2.backgroundColor = .white
        view3.backgroundColor = .white
        view4.backgroundColor = .white
        view4.backgroundColor = .white
        view5.backgroundColor = .white
        view6.backgroundColor = .white
        view7.backgroundColor = .white
        view8.backgroundColor = .white
        view9.backgroundColor = .white
        mainLabel.text = questions[counter].title
    }

}
