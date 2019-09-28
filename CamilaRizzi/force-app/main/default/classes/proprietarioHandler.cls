/***********************CamilaRizzi******************************
*   
*   Classe cria proprietário
*
*   Author: Teste                                   24/set/2019
*****************************************************************/
public class proprietarioHandler {
    public Proprietario__c criaProprietario() {
        Proprietario__c proprietario = new Proprietario__c();
        proprietario.Name = 'Paulo Moska';
        proprietario.cpf__c = '31242453882';
        insert proprietario;
        return proprietario;
    }
    
    public Proprietario__c criaProprietarioeCarro() {
        Proprietario__c proprietario = new Proprietario__c();
        proprietario.Name = 'Alvaro Reis';
        proprietario.cpf__c = '31242453882';
        insert proprietario;
        System.debug('classe proprietario e chama criaCarro');
        criaCarroHandler(proprietario);
        
        return proprietario;
    }

    private void criaCarroHandler(Proprietario__c nomeProp)
    {
        carrosHandler cHandler = new carrosHandler();
        cHandler.criaCarro(nomeProp);
    }
}