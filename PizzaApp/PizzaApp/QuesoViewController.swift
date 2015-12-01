//
//  QuesoViewController.swift
//  PizzaApp
//
//  Created by Israel Durán Martínez on 27/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class QuesoViewController: UIViewController {

    @IBOutlet weak var segmentoQueso: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentoQueso.selectedSegmentIndex = ValoresPizza.queso

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionSegmentoQueso(sender: AnyObject)
    {
        ValoresPizza.queso = segmentoQueso.selectedSegmentIndex
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
