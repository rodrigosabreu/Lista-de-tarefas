//
//  TarefaUserDefaults.swift
//  Lista de tarefas
//
//  Created by Rodrigo Abreu on 06/11/17.
//  Copyright © 2017 Rodrigo Abreu. All rights reserved.
//

import UIKit

class TarefaUserDefaults{
    
    let chave = "lsitaTarefas"
    var tarefas: [String] = []
    
    func remover(indice: Int){
        
        /*Recuperar tarefas já salvas*/
        tarefas = listar()
        
        //remover do array
        tarefas.remove(at: indice )
        
        //salvar o array com o item removido
        UserDefaults.standard.set(tarefas, forKey: chave)
        
    }
    
    
    func salvar(tarefa: String){

        /*Recuperar tarefas já salvas*/
        tarefas = listar()
        
        /*Salvar tarefa*/
        tarefas.append( tarefa )
        UserDefaults.standard.set(tarefas, forKey: chave)
    }
    
    func listar() -> Array<String>{
        
        let dados = UserDefaults.standard.object(forKey: chave)
            
        if dados != nil{
            return dados as! Array<String>
        }else{
         return [] //array vazio
        }
        
    }
    
    
}
