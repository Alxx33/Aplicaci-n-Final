//
//  SeconddViewController.swift
//  proyecto2A1
//
//  Created by Macbook on 16/10/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SeconddViewController: UIViewController {
    
    var lista : [String] = []

    @IBOutlet weak var etiqueta: UILabel!
    
    @IBOutlet weak var etiqueta2: UILabel!
    @IBOutlet weak var use: UITextField!
    @IBOutlet weak var pass1: UITextField!
    @IBOutlet weak var pass2: UITextField!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    
    
 
    
    
    

    @IBAction func registrar(_ sender: UIButton) {
        lista.append(use.text!)
        print (lista)
        if pass1.text == pass2.text {
        lista.append(pass2.text!)
        print(lista)
            etiqueta2.text = "Ya estas registrado compa"
            }
            
        else{
            etiqueta.text = "Las contraseñas no coinciden"
        }
        
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
      let DestViewController : ViewController = segue.destination as! ViewController
        
        DestViewController.texto = use.text!
        DestViewController.pass = pass2.text!
    }
}
    

