/***********************CamilaRizzi******************************
*   
*   Classe genérica para criação
*
*   Author: Teste                                   24/set/2019
*****************************************************************/
public with sharing class Utils {
    public SObject incrementaNome(SObject objeto) {
        Object nome = objeto.get('Name');
        System.debug(nome);
        nome = nome + ' Rizzi';
        objeto.put('Name', nome);
        System.debug('Objeto >> ' + objeto);
        return objeto;
    }
}
