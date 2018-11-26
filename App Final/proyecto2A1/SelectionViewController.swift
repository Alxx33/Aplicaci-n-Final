//
//  SelectionViewController.swift
//  proyecto2A1
//
//  Created by Macbook on 11/12/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    var nuevaCita = [OpAgenda] ()
    var seleccionado : menu!
    
    @IBOutlet weak var tablita2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nuevaCita.append(OpAgenda(fecha: "", hora: "", disponible: 0))
        nuevaCita.append(OpAgenda(fecha:"lunes 10:",hora:"13:00",disponible:0))
        nuevaCita.append(OpAgenda(fecha:"martes 11:",hora:"13:00",disponible:0))
        nuevaCita.append(OpAgenda(fecha:"miércoles 12:",hora:"13:00",disponible:0))
        nuevaCita.append(OpAgenda(fecha:"jueves 13:",hora:"13:00",disponible:0))
        nuevaCita.append(OpAgenda(fecha:"viernes 14:,",hora:"13:00",disponible:0))
    //    nuevaCita.append(OpAgenda(fecha:"                 ,",hora:"          ",disponible:0 ))


    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return nuevaCita.count
    
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for:indexPath)
    cell.textLabel?.text = "\(nuevaCita[indexPath.row].fecha) - \(nuevaCita[indexPath.row].hora)"
   
    return cell
    
    }
    


}
