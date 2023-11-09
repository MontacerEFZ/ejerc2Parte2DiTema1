//
//  ViewController.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 02/11/2023.
//

import UIKit

class ViewController: UIViewController, ObtenerExamen, UITableViewDelegate, UITableViewDataSource {
    //ObtenerExamen a mano q es protocolo q hemos creado
    
    @IBOutlet weak var tablaExamen: UITableView!
    var listaExamenes: [Examen]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaExamenes = []
        tablaExamen.delegate = self
        tablaExamen.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //devuelve int
        listaExamenes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CELDA", for: indexPath) as! CeldaTableViewCell
        
        let examen = listaExamenes[indexPath.row]
        celda.lbNombre.text = examen.nombre
        celda.lbNota.text = String(examen.notaFinal)
        
        return celda
    }
    
    func obtener(dato: Examen) {
        listaExamenes.append(dato)
        tablaExamen.reloadData()
    }
    
    func eliminar(posicion: Int) {
        listaExamenes.remove(at: posicion)
        tablaExamen.reloadData()
    }
    
    func modificar(posicion: Int, nuevoExamen: Examen) {
        listaExamenes[posicion] = nuevoExamen
        tablaExamen.reloadData()
    }
    
    //prepare + elegir la opcion del segue + tabulador
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EXAMEN" {
            let destino = segue.destination as!
                InsertarExamenViewController
            destino.delegate = self
        }
        if segue.identifier == "EDITAR" {
            let destino = segue.destination as!
                EditarViewController
            destino.delegate = self
            destino.posicion = tablaExamen.indexPathForSelectedRow!.row
            destino.examen = listaExamenes[tablaExamen.indexPathForSelectedRow!.row]
        }
        
    }
}

