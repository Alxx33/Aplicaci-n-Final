//
//  SelectionViewController.swift
//  proyecto2A1
//
//  Created by Macbook on 11/12/18.
//  Copyright © 2018 unam fca. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UICollectionViewDataSource {
    
 
    var nuevaCita = [OpAgenda] ()
    var seleccionado : menu!
    
    @IBOutlet weak var tablita2: UITableView!
    
    @IBOutlet weak var mes: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        nuevaCita.append(OpAgenda(fecha: "", hora: "", disponible: 0))
        nuevaCita.append(OpAgenda(fecha:"lunes 10:",hora:"13:00",disponible:true))
        nuevaCita.append(OpAgenda(fecha:"martes 11:",hora:"13:00",disponible:true))
        nuevaCita.append(OpAgenda(fecha:"miércoles 12:",hora:"13:00",disponible:true))
        nuevaCita.append(OpAgenda(fecha:"jueves 13:",hora:"13:00",disponible:true))
        nuevaCita.append(OpAgenda(fecha:"viernes 14:,",hora:"13:00",disponible:true))
    //    nuevaCita.append(OpAgenda(fecha:"                 ,",hora:"          ",disponible:0 ))
        
        let date = Date ()
        
        print(date)
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .medium
       // dateFormatter.timeStyle = .medium
        
        print(dateFormatter.string(from: date))
        
        mes.text = dateFormatter.string(from: date)
        


    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if seleccionado.nombre == "Agenda" {
         
              return nuevaCita.count
            
        } else {
            return 0
        }
 
    
    }
    
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: "celda2", for:indexPath)
    cell.textLabel?.text = "\(nuevaCita[indexPath.row].fecha) - \(nuevaCita[indexPath.row].hora)"
   
    return cell
    
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 31
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! ItemCollectionViewCell
        
        cell.dias.text = "\(indexPath.item + 1)"
        cell.backgroundColor = UIColor.blue
        
        return cell
        
    
    }
    
func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
    
    
    let marcarCita = UIContextualAction (style: .normal, title: "Confirmar") { (action, sourceview, completion) in
        
  //      OpAgenda.init(fecha:"lunes 10:" , hora: "13:00", disponible: false)
        
   
  //      self.nuevaCita (at: indexPath.row)
        
    }
    
    
    
    
    let cancelarCita = UIContextualAction (style: .destructive, title: "Cancelar") { (action, sourceview, completion) in
        
    }
    
    let swipeCongiration = UISwipeActionsConfiguration (actions: [marcarCita, cancelarCita])
    
    return swipeCongiration
    
    }
   /*  let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceview, completion) in
     
     self.alumnos.remove(at: indexPath.row)
     
     self.tablita.deleteRows(at: [indexPath], with: .fade )
     
     
     completion(true)
     
     }
     
     let shareAction = UIContextualAction(style: .normal, title: "Share") { (action, sourceview, completion) in
     
     
     }
     
     let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction, shareAction])
     
     return swipeConfiguration
     
     }
 
     
     
     
     
 */
    
    
    
    
    
    
    


}
