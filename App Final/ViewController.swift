//
//  ViewController.swift
//  proyecto2A1
//
//  Created by Alejandro Barron Solis, Isaac Hernandez Loredo.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = [datos] ()
    var texto = String ()
    var pass = String ()


    @IBOutlet weak var user: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBAction func Ingresar(_ sender: UIButton) {
        
        
       // if  data.append(datos(nombre: texto, pw: pass)) == data.append(datos(nombre: "", pw: "" )){
            
            //print("No has puesto usuario ni contraseña")
       // }
        
        
        
        //Este for nos ayuda a recorrer el arreglo para ver si el usuario esta registrado.
        for i in 0...data.count - 1 {
        
            if data[i].nombre == user.text {
                
               if data[i].pw == password.text {
                    
                   print (" ")
                   
                    }
                  
                else {
                    print ("contraseña incorrecta")
                }
              
            } else {
                print ("Usuario no registrado")
            }
        
        }
     
    }
 

    //En este override esta el arreglo general para añadir a los usuarios con los datos registrados.
    override func viewDidLoad() {
    super.viewDidLoad()
        
         //Estos reciben los datos del registro
         user.text = texto
         password.text = pass
        
        data.append(datos(nombre: texto, pw: pass))
    }
}
   



