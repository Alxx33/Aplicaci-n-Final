//
//  ThirdViewController.swift
//  proyecto2A1
//
//  Created by Alejandro Barron Solis, Isaac Hernandez Loredo.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tablita: UITableView!
    
    
    var x = [menu] ()
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        x.append(menu(nombre: "Agenda",imagen:"", fecha: 0))
        x.append(menu(nombre: "Calendario",imagen:"", fecha: 0))
        x.append(menu(nombre: "Avisos",imagen:"", fecha: 0))
        x.append(menu(nombre: "Ubicacion",imagen:"", fecha: 0))
     

}
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return x.count
}
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel?.text = x[indexPath.row].nombre
        
       return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selection"{
         let indexPath = tablita.indexPathForSelectedRow
         let destino = segue.destination as! SelectionViewController
            destino.seleccionado = x[(indexPath?.row)!]

      }

    }
}
