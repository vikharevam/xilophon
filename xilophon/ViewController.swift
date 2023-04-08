//
//  ViewController.swift
//  xilophon
//
//  Created by Александр Вихарев on 04.04.2023.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer!
    
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonC.layer.cornerRadius = 20
        buttonD.layer.cornerRadius = 20
        buttonE.layer.cornerRadius = 20
        buttonF.layer.cornerRadius = 20
        buttonG.layer.cornerRadius = 20
        buttonA.layer.cornerRadius = 20
        buttonB.layer.cornerRadius = 20
        
       
        
    }
    
    
    
    @IBAction func pressKey(_ sender: UIButton) {
        playSound(soundName: sender.currentTitle!)
        
        sender.alpha = 0.5
        sender.layer.cornerRadius = 19
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
            // DispatchQueue помогающий вызвать задержку выполнения кода.
            sender.alpha = 1.0//вернуть прозрачность на начальный уровень
            
        }
    }
    
    
    
    func playSound(soundName: String){
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }
}


