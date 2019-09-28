/***********************CamilaRizzi******************************
*   
*   Classe cria carro
*
*   Author: Teste                                   25/set/2019
*****************************************************************/
public with sharing class test_soql {
    public void test_soql() {
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
        insert new Carro__c [] { 
            new Carro__c(   Name = '206',
                            Marca__c = 'Peugeot',
                            Ano__c = 2014,
                            cor__c = 'Preto',
                            Placa__c = 'wec-4321'),
            new Carro__c(   Name = 'Clio', 
                            Marca__c = 'Renault', 
                            Ano__c = 2018, 
                            cor__c = 'branco',
                            Placa__c = 'vvv-3211', 
                            proprietario__c = prop.id 
                        )};
        set<String> carro = new Set<String>();
        Integer i = 0;
        for(Carro__c[] car : [Select id, cor__c from Carro__c]){
            i = car.size();

            //carro.addAll(car);
            System.debug(car);
        }
/*
        if (carro.marca__c == 'Peugeot'){
            Utils util = new Utils();
            util.incrementaNome(carro); 
        }
        executeCriarCarro(carro);*/
    }

    private void executeCriarCarro(Carro__c carro)
    {
        insert carro;
    }
}
