//
//  ViewController.swift
//  iKid
//
//  Created by Jasper Wang on 4/28/24.
//

import UIKit

class ViewController: UIViewController {

    let DadJoke = [("What did the bufflo say to his boy as he dropped him off at school?", "Bison!"),("When does a joke become a dad joke?", "When it becomes apparent.")]
    var dadVar = (0,0)
    let PunJoke = [("I have a horse named Mayo...", "Sometimes Mayo neighs!"), ("Patient: Doc I broke my arm in three places.", "Doctor: Well, don't go to those places.")]
    var punVar = (0,0)
    let GoodJoke = [("What do you call a group of men waiting in line for a haircut?", "A barbeque."), ("When you Excel they spreadsheet about you...", "You made a power point!"), ("Why didn't the vampire bite Taylor Swift?", "Cause she had bad blood.")]
    var goodVar = (0,0)
    

    @IBOutlet weak var DadQ: UILabel!
    @IBOutlet weak var PunQ: UILabel!
    @IBOutlet weak var GoodQ: UILabel!
    
    @IBAction func DadNext(_ sender: UIButton) {
        if dadVar.1 == 0 {
            dadVar.1 = 1
            DadQ.text = DadJoke[dadVar.0].1
        } else {
            if dadVar.0 == DadJoke.count - 1 {
                dadVar.0 = 0
                dadVar.1 = 0
            } else {
                dadVar.0 += 1
            }
            DadQ.text = DadJoke[dadVar.0].0
            dadVar.1 = 0
        }

    }
    @IBAction func PunNext(_ sender: UIButton) {
        if punVar.1 == 0 {
            punVar.1 = 1
            PunQ.text = PunJoke[punVar.0].1
        } else {
            if punVar.0 == PunJoke.count - 1 {
                punVar.0 = 0
                punVar.1 = 0
            } else {
                punVar.0 += 1
            }
            PunQ.text = PunJoke[punVar.0].0
            punVar.1 = 0
        }

    }
    @IBAction func GoodNext(_ sender: UIButton) {
        if goodVar.1 == 0 {
            goodVar.1 = 1
            GoodQ.text = GoodJoke[goodVar.0].1
        } else {
            if goodVar.0 == GoodJoke.count - 1 {
                goodVar.0 = 0
                goodVar.1 = 0
            } else {
                goodVar.0 += 1
            }
            GoodQ.text = GoodJoke[goodVar.0].0
            goodVar.1 = 0
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if DadQ != nil {
            DadQ.lineBreakMode = .byWordWrapping
            DadQ.numberOfLines = 0
        }
        if PunQ != nil {
            PunQ.lineBreakMode = .byWordWrapping
            PunQ.numberOfLines = 0
        }
        if GoodQ != nil {
            GoodQ.lineBreakMode = .byWordWrapping
            GoodQ.numberOfLines = 0
        }
        
        
        // Do any additional setup after loading the view.
    }


}

