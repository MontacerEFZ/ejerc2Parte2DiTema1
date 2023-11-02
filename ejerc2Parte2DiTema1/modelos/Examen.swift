//
//  Examen.swift
//  ejerc2Parte2DiTema1
//
//  Created by Montacer El Fazazi on 02/11/2023.
//

import Foundation

class Examen{
    var nombre: String
    var totalPreguntas: Int
    var totalAcertadas: Int
    var notaFinal: Float!
    
    init(nombre: String, totalPreguntas: Int, totalAcertadas: Int){
        self.nombre = nombre
        self.totalPreguntas = totalPreguntas
        self.totalAcertadas = totalAcertadas
        
        self.notaFinal = obtenerNotaFinal()
    }
    
    func obtenerNotaFinal() -> Float{ //para q devuelva float, sino pongo nada no devuelve nada
        return Float(totalAcertadas)/Float(totalPreguntas) * 10
    }
    
    func toString() -> String {
        return "Nombre: \(nombre) \n Total Preguntas: \(totalPreguntas) \n Total Acertadas: \(totalAcertadas) \n Nota Final: \(String(notaFinal))"
    }
}
