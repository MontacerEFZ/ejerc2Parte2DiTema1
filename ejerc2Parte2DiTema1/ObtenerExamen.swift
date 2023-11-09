//
//  ObtenerExamen.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 02/11/2023.
//

import Foundation

protocol ObtenerExamen {
    func obtener(dato: Examen)
    func eliminar(posicion: Int)
    func modificar(posicion: Int, nuevoExamen: Examen)
    
    
}
