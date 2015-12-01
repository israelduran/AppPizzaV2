//
//  MasaViewController.swift
//  PizzaApp
//
//  Created by Israel Durán Martínez on 27/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class MasaViewController: UIViewController {

    
    @IBOutlet weak var segmentoMasa: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentoMasa.selectedSegmentIndex = ValoresPizza.masa

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func accionSegmentoMasa(sender: AnyObject)
    {
        ValoresPizza.masa = segmentoMasa.selectedSegmentIndex
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
