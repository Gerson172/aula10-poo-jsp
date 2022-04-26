/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package demo;

import java.util.ArrayList;

/**
 *
 * @author Fatec
 */
public class Database {
    public static ArrayList<Contato> getContato(){
        ArrayList<Contato> lista = new ArrayList<>();
        
        lista.add(new Contato("Fulano", "99100-0000", new Data(1,1,2000)));
        lista.add(new Contato("Ciclano", "99111-0001", new Data(1,1,2000)));
        lista.add(new Contato("Beltrano", "9922-0002", new Data(1,1,2000)));
        
        return lista;
    }
    
}
