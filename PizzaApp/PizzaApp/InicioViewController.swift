//
//  ViewController.swift
//  PizzaApp
//
//  Created by Israel Durán Martínez on 27/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func abreVistaTamaño(sender: UIButton)
    {
        //Este hace referencia al Storyboard
        let miStoryBoard: UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
        //Asociación de la vista al Story Board
        let vistaTama = miStoryBoard.instantiateViewControllerWithIdentifier("ViewTama") as! TamaViewController
        //Se envía el control a la vista
        self.navigationController!.pushViewController(vistaTama, animated: true)
    }

}

