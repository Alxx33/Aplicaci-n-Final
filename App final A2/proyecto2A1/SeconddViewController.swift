//
//  SeconddViewController.swift
//  proyecto2A1
//
//  Created by Alejandro Barron Solis, Isaac Hernandez Loredo.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SeconddViewController: UIViewController {
    
    var lista : [String] = []
  
    
    @IBOutlet weak var etiqueta: UILabel!
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
            etiqueta.text = "¡Ya tienes cuenta!"
        }
        else{
            
            etiqueta.text = "¡Checa tu contraseña por favor!"
        }
    }
    
    override func prepare (for segue: UIStoryboardSegue, sender: Any?) {
      
        let DestViewController : ViewController = segue.destination as! ViewController
        
        DestViewController.texto = use.text!
        
        if pass1.text == pass2.text {
       
            DestViewController.pass = pass2.text!
        
        }
      }
    }
    

