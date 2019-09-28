/***********************CamilaRizzi******************************
*   
*   Classe cria carro
*
*   Author: Teste                                   24/set/2019
*****************************************************************/
public class carrosHandler 
{
    public void criaCarro()
    {
        Carro__c carro = new Carro__c();
        carro.Name = 'Clio';
        carro.Marca__c = 'Renault';
        carro.Ano__c = 2014;
        carro.cor__c = 'Preto';
        carro.Placa__c = 'abc-1234';
        
        if (carro.marca__c == 'Peugeot'){
            Utils util = new Utils();
            util.incrementaNome(carro); 
        }
        executeCriarCarro(carro);
    }

    public void criaCarro(Proprietario__c prop)
    {
        System.debug('entra na classe criacarro with prop');
        Carro__c carro = new Carro__c();
        carro.Name = '206';
        carro.Marca__c = 'Peugeot';
        carro.Ano__c = 2014;
        carro.cor__c = 'Preto';
        carro.Placa__c = 'wec-4321';

        Carro__c carro_2 = new Carro__c();
        carro_2.Name = 'Clio';
        carro_2.Marca__c = 'Renault';
        carro_2.Ano__c = 2018;
        carro_2.cor__c = 'branco';
        carro_2.Placa__c = 'vvv-3211';
        // criando relacionamento atraves de insert em campos lookup
        carro_2.proprietario__c = prop.id; 
        
        /*
        Integer i = 0;
        for(Carro__c car : [Select id, cor__c from Carro__c]){
            car.add()
            System.debug(car);
        }
        */

        if (carro.marca__c == 'Peugeot'){
            Utils util = new Utils();
            util.incrementaNome(carro); 
        }
        executeCriarCarro(carro);
    }
    private void executeCriarCarro(Carro__c carro)
    {
        insert carro;
    }
}
