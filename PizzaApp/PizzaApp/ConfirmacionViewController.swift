//
//  Tama2ViewController.swift
//  PizzaApp
//
//  Created by Israel Durán Martínez on 27/11/15.
//  Copyright © 2015 Israel Durán Martínez. All rights reserved.
//

import UIKit

class ConfirmacionViewController: UIViewController {

    @IBOutlet weak var tamaño: UILabel!
    @IBOutlet weak var masa: UILabel!
    @IBOutlet weak var queso: UILabel!
    @IBOutlet weak var ingredientes: UILabel!
    @IBOutlet weak var cocina: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //Inhabilitar boton
        cocina.enabled = false
        
        //Tamaño
        //var tamañoCadena : String = tamaño.text!
        let tamañoCadena : String = ValoresPizza.valoresTamaño[ValoresPizza.tamaño]!
        tamaño.text = tamañoCadena
        
        //Masa
        //var masaCadena : String = masa.text!
        let masaCadena : String = ValoresPizza.valoresMasa[ValoresPizza.masa]!
        masa.text = masaCadena
        
        //Queso
        //var quesoCadena : String = queso.text!
        let quesoCadena : String = ValoresPizza.valoresQueso[ValoresPizza.queso]!
        queso.text = quesoCadena
        
        //Ingredientes
        ingredientes.text = ingredientesResultado().0
        ingredientes.textColor = ingredientesResultado().2
        
        if(ingredientesResultado().1 == 1)
        {
            //Habilitar boton
            cocina.enabled = true
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mandarCocina(sender: AnyObject)
    {
        print("Enviado a cocina!!!!!!")
        
        //Alerta
        let alerta = UIAlertController(title: "Confirmación", message: "Estas seguro que quieres mandar a concinar tu pizza", preferredStyle: .ActionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancelar", style: .Cancel){
            (action:UIAlertAction!) in
            
            print("pulsaste cancelar")
        }
        
        let OkAction = UIAlertAction(title: "OK", style: .Default)
            {
                (action:UIAlertAction!) in
                
                //este hace referencia al Storyboard
                let miStoryBoard: UIStoryboard =  UIStoryboard(name: "Main", bundle: nil)
                //este
                let vistaFinal = miStoryBoard.instantiateViewControllerWithIdentifier("ViewFinal") as! FinalViewController
                
                self.presentViewController(vistaFinal, animated: true, completion: nil)
                
                //self.navigationController!.pushViewController(VistaFinal, animated: false)
                
                print("pulsaste Ok")
        }
        
        alerta.addAction(cancelAction)
        alerta.addAction(OkAction)
        
        self.presentViewController(alerta, animated: true, completion: nil)
        
    }
    
    func ingredientesResultado() -> (String, Int, UIColor)
    {
        var ingredientes : String = ""
        var bandera = 0
        var suma = 0
        
        for i in 0...9
        {
            suma += ValoresPizza.ingredientesOnOff[i]
        }
        
        if(suma > 5)
        {
            return ("Los ingredientes no pueden ser más de 5",0, UIColor(colorLiteralRed: 255, green: 0, blue: 0, alpha: 1))
        }
        
        if (suma == 0)
        {
            return ("Selecciona por lo menos un ingrediente",0, UIColor(colorLiteralRed: 255, green: 0, blue: 0, alpha: 1))
        }
        
        for i in 0...9
        {
            let valor = ValoresPizza.ingredientesOnOff[i]
            
            if(valor == 1)
            {
                if bandera == 0
                {
                    ingredientes += ValoresPizza.ingredientes[i]
                    bandera=1
                }
                else
                {
                    ingredientes += ", " + ValoresPizza.ingredientes[i]
                }
                
                print(ValoresPizza.ingredientes[i])
            }
        }
        
        return (ingredientes, 1, UIColor(colorLiteralRed: 0, green: 0, blue: 0, alpha: 1));
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
