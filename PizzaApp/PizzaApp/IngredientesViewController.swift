//
//  IngredientesViewController.swift
//  PizzaApp
//
//  Created by Israel Durán Martínez on 27/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class IngredientesViewController: UIViewController {

    @IBOutlet weak var jamon: UISwitch!
    @IBOutlet weak var pepperoni: UISwitch!
    @IBOutlet weak var pavo: UISwitch!
    @IBOutlet weak var salchicha: UISwitch!
    @IBOutlet weak var aceituna: UISwitch!
    @IBOutlet weak var cebolla: UISwitch!
    @IBOutlet weak var pimiento: UISwitch!
    @IBOutlet weak var piña: UISwitch!
    @IBOutlet weak var anchoa: UISwitch!
    @IBOutlet weak var chorizo: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Jamon
        if ValoresPizza.ingredientesOnOff[0] == 1
        {jamon.on = true}
        else
        {jamon.on = false}
        
        //Peperoni
        if ValoresPizza.ingredientesOnOff[1] == 1
        {pepperoni.on = true}
        else
        {pepperoni.on = false}
        
        //Pavo
        if ValoresPizza.ingredientesOnOff[2] == 1
        {pavo.on = true}
        else
        {pavo.on = false}
        
        //Salchicha
        if ValoresPizza.ingredientesOnOff[3] == 1
        {salchicha.on = true}
        else
        {salchicha.on = false}
        
        //Aceituna
        if ValoresPizza.ingredientesOnOff[4] == 1
        {aceituna.on = true}
        else
        {aceituna.on = false}
        
        //Cebolla
        if ValoresPizza.ingredientesOnOff[5] == 1
        {cebolla.on = true}
        else
        {cebolla.on = false}
        
        //Pimiento
        if ValoresPizza.ingredientesOnOff[6] == 1
        {pimiento.on = true}
        else
        {pimiento.on = false}
        
        //Piña
        if ValoresPizza.ingredientesOnOff[7] == 1
        {piña.on = true}
        else
        {piña.on = false}
        
        //Anchoa
        if ValoresPizza.ingredientesOnOff[8] == 1
        {anchoa.on = true}
        else
        {anchoa.on = false}
        
        //Chorizo
        if ValoresPizza.ingredientesOnOff[9] == 1
        {chorizo.on = true}
        else
        {chorizo.on = false}

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Método ingrediente Jamón
    @IBAction func accionJamon(sender: AnyObject){
        if jamon.on
        {ValoresPizza.ingredientesOnOff[0] = 1}
        else
        {ValoresPizza.ingredientesOnOff[0] = 0}
    }
    
    @IBAction func accionPeperoni(sender: AnyObject)
    {
        if pepperoni.on
        {ValoresPizza.ingredientesOnOff[1] = 1}
        else
        {ValoresPizza.ingredientesOnOff[1] = 0}
    }
    
    @IBAction func accionPavo(sender: AnyObject) {
        if pavo.on
        {ValoresPizza.ingredientesOnOff[2] = 1}
        else
        {ValoresPizza.ingredientesOnOff[2] = 0}
    }
    
    @IBAction func accionSalchicha(sender: AnyObject) {
        if salchicha.on
        {ValoresPizza.ingredientesOnOff[3] = 1}
        else
        {ValoresPizza.ingredientesOnOff[3] = 0}
    }
    
    @IBAction func accionAceituna(sender: AnyObject) {
        if aceituna.on
        {ValoresPizza.ingredientesOnOff[4] = 1}
        else
        {ValoresPizza.ingredientesOnOff[4] = 0}
    }
    
    @IBAction func accionCebolla(sender: AnyObject) {
        if cebolla.on
        {ValoresPizza.ingredientesOnOff[5] = 1}
        else
        {ValoresPizza.ingredientesOnOff[5] = 0}
    }
    
    @IBAction func accionPimiento(sender: AnyObject) {
        if pimiento.on
        {ValoresPizza.ingredientesOnOff[6] = 1}
        else
        {ValoresPizza.ingredientesOnOff[6] = 0}
    }
    
    @IBAction func accionPiña(sender: AnyObject) {
        if piña.on
        {ValoresPizza.ingredientesOnOff[7] = 1}
        else
        {ValoresPizza.ingredientesOnOff[7] = 0}
    }
    
    @IBAction func accionAnchoa(sender: AnyObject) {
        if anchoa.on
        {ValoresPizza.ingredientesOnOff[8] = 1}
        else
        {ValoresPizza.ingredientesOnOff[8] = 0}
    }
    
    @IBAction func accionChorizo(sender: AnyObject) {
        if chorizo.on
        {ValoresPizza.ingredientesOnOff[9] = 1}
        else
        {ValoresPizza.ingredientesOnOff[9] = 0}
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
