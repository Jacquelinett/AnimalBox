//
//  GameViewController.swift
//  ArrayBox
//
//  Created by Jacqueline on 2/12/18.
//  Copyright © 2018 Jacqueline. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var currentGame: GameScene!
    
    var currentSelectedBox : Int!
    
    var inBox0 : Int!
    var inBox1 : Int!
    var inBox2 : Int!
    var inBox3 : Int!
    
    @IBOutlet weak var lblExplain: UILabel!
    
    @IBOutlet weak var imgInBox: UIImageView!
    
    @IBOutlet weak var btnBox0: UIButton!
    @IBOutlet weak var btnBox1: UIButton!
    @IBOutlet weak var btnBox2: UIButton!
    @IBOutlet weak var btnBox3: UIButton!
    
    @IBOutlet weak var btnCat: UIButton!
    @IBOutlet weak var btnDog: UIButton!
    @IBOutlet weak var btnRabbit: UIButton!
    @IBOutlet weak var btnMouse: UIButton!
    @IBOutlet weak var btnHedgehog: UIButton!
    @IBOutlet weak var btnBear: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentSelectedBox = -1
        
        inBox0 = 0
        inBox1 = 1
        inBox2 = 2
        inBox3 = 3
        
        currentGame = GameScene(fileNamed: "GameScene")
        currentGame.viewController = self
        
        currentGame.scaleMode = .aspectFill
        
        print(currentGame);
        
        resetBoxBtn()
        
        if let view = self.view as! SKView? {
            view.presentScene(currentGame)
            
            view.ignoresSiblingOrder = false
            
            view.showsFPS = false
            view.showsNodeCount = false
            
        }
    }
    
    func resetBoxBtn() {
        btnBox0.backgroundColor = UIColor(red: 0.698, green: 0.4431, blue: 0, alpha: 1.0)
        btnBox1.backgroundColor = UIColor(red: 0.698, green: 0.4431, blue: 0, alpha: 1.0)
        btnBox2.backgroundColor = UIColor(red: 0.698, green: 0.4431, blue: 0, alpha: 1.0)
        btnBox3.backgroundColor = UIColor(red: 0.698, green: 0.4431, blue: 0, alpha: 1.0)
    }
    
    func updateDisplayImage(num: Int) {
        switch (num) {
        case 0:
            imgInBox.image = UIImage(named: "catLarge")
        case 1:
            imgInBox.image = UIImage(named: "dogLarge")
        case 2:
            imgInBox.image = UIImage(named: "bunnyLarge")
        case 3:
            imgInBox.image = UIImage(named: "hamsterLarge")
        case 4:
            imgInBox.image = UIImage(named: "hedgehogLarge")
        case 5:
            imgInBox.image = UIImage(named: "bearLarge")
        default:
            imgInBox.image = UIImage(named: "noBox")
            
        }
    }
    
    @IBAction func btnReset_TouchUp(_ sender: Any) {
        currentSelectedBox = -1
        
        inBox0 = 0
        inBox1 = 1
        inBox2 = 2
        inBox3 = 3
        
        resetBoxBtn();
        
        lblExplain.text = "Nothing yet, please pick a box!"
        
        updateDisplayImage(num: -1)
    }
    
    @IBAction func btnBox0_TouchUp(_ sender: Any) {
        currentSelectedBox = 0
        resetBoxBtn()
        btnBox0.backgroundColor = UIColor(red: 0.9294, green: 0.8824, blue: 0, alpha: 1.0)
        updateDisplayImage(num: inBox0)
        lblExplain.text = "Display(Box[0])"
    }
    
    @IBAction func btnBox1_TouchUp(_ sender: Any) {
        currentSelectedBox = 1
        resetBoxBtn()
        btnBox1.backgroundColor = UIColor(red: 0.9294, green: 0.8824, blue: 0, alpha: 1.0)
        updateDisplayImage(num: inBox1)
        lblExplain.text = "Display(Box[1])"
    }
    
    @IBAction func btnBox2_TouchUp(_ sender: Any) {
        currentSelectedBox = 2
        resetBoxBtn()
        btnBox2.backgroundColor = UIColor(red: 0.9294, green: 0.8824, blue: 0, alpha: 1.0)
        updateDisplayImage(num: inBox2)
        lblExplain.text = "Display(Box[2])"
    }
    
    @IBAction func btnBox3_TouchUp(_ sender: Any) {
        currentSelectedBox = 3
        resetBoxBtn()
        btnBox3.backgroundColor = UIColor(red: 0.9294, green: 0.8824, blue: 0, alpha: 1.0)
        updateDisplayImage(num: inBox3)
        lblExplain.text = "Display(Box[3])"
    }
    
    @IBAction func btnCat_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 0
            updateDisplayImage(num: 0)
            lblExplain.text = "Box[0] = Cat"
        case 1:
            inBox1 = 0
            updateDisplayImage(num: 0)
            lblExplain.text = "Box[1] = Cat"
        case 2:
            inBox2 = 0
            updateDisplayImage(num: 0)
            lblExplain.text = "Box[2] = Cat"
        case 3:
            inBox3 = 0
            updateDisplayImage(num: 0)
            lblExplain.text = "Box[3] = Cat"
        default:
            currentSelectedBox = 0
        }
    }
    
    @IBAction func btnDog_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 1
            updateDisplayImage(num: 1)
            lblExplain.text = "Box[0] = Dog"
        case 1:
            inBox1 = 1
            updateDisplayImage(num: 1)
            lblExplain.text = "Box[1] = Dog"
        case 2:
            inBox2 = 1
            updateDisplayImage(num: 1)
            lblExplain.text = "Box[2] = Dog"
        case 3:
            inBox3 = 1
            updateDisplayImage(num: 1)
            lblExplain.text = "Box[3] = Dog"
        default:
            currentSelectedBox = 0
        }
    }
    
    @IBAction func btnMouse_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 3
            updateDisplayImage(num: 3)
            lblExplain.text = "Box[0] = Mouse"
        case 1:
            inBox1 = 3
            updateDisplayImage(num: 3)
            lblExplain.text = "Box[1] = Mouse"
        case 2:
            inBox2 = 3
            updateDisplayImage(num: 3)
            lblExplain.text = "Box[2] = Mouse"
        case 3:
            inBox3 = 3
            updateDisplayImage(num: 3)
            lblExplain.text = "Box[3] = Mouse"
        default:
            currentSelectedBox = -1
        }
    }
    
    @IBAction func btnRabbit_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 2
            updateDisplayImage(num: 2)
            lblExplain.text = "Box[0] = Rabbit"
        case 1:
            inBox1 = 2
            updateDisplayImage(num: 2)
            lblExplain.text = "Box[1] = Rabbit"
        case 2:
            inBox2 = 2
            updateDisplayImage(num: 2)
            lblExplain.text = "Box[2] = Rabbit"
        case 3:
            inBox3 = 2
            updateDisplayImage(num: 2)
            lblExplain.text = "Box[3] = Rabbit"
        default:
            currentSelectedBox = -1
        }
    }
    
    @IBAction func btnHedgehog_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 4
            updateDisplayImage(num: 4)
            lblExplain.text = "Box[0] = Hedgehog"
        case 1:
            inBox1 = 4
            updateDisplayImage(num: 4)
            lblExplain.text = "Box[1] = Hedgehog"
        case 2:
            inBox2 = 4
            updateDisplayImage(num: 4)
            lblExplain.text = "Box[2] = Hedgehog"
        case 3:
            inBox3 = 4
            updateDisplayImage(num: 4)
            lblExplain.text = "Box[3] = Hedgehog"
        default:
            currentSelectedBox = -1
        }
    }
    
    @IBAction func btnBear_TouchUp(_ sender: Any) {
        switch (currentSelectedBox) {
        case 0:
            inBox0 = 5
            updateDisplayImage(num: 5)
            lblExplain.text = "Box[0] = Bear"
        case 1:
            inBox1 = 5
            updateDisplayImage(num: 5)
            lblExplain.text = "Box[1] = Bear"
        case 2:
            inBox2 = 5
            updateDisplayImage(num: 5)
            lblExplain.text = "Box[2] = Bear"
        case 3:
            inBox3 = 5
            updateDisplayImage(num: 5)
            lblExplain.text = "Box[3] = Bear"
        default:
            currentSelectedBox = -1
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
