public class AccountAdd {
    public static void execute (){
        account acc1 = new account (Name= 'Camila Rizzi');
        account acc2 = new account (Name= 'Meire Rizzi');
        account acc3 = new account (Name= 'Meire Silva Rizzi');
        List<Account> contas  = new List<Account>();
        contas.add(acc1);
        contas.add(acc2);
        contas.add(acc3);
        for (Account acc : contas){
            System.debug('Contas ' + '\'s Names: ' + acc.Name);
        }
    } 
    public static void exeAdd (){
        account acc10 = new account (Name= 'Camila Rizzi');
        account acc20 = new account (Name= 'Meire Rizzi');
        account acc30 = new account (Name= 'Meire Silva Rizzi');
        Map<Integer, Account> contasMap  = new Map<Integer, Account>();
        contasMap.put(1,acc10);
        contasMap.put(2,acc20);
        contasMap.put(3,acc30);
        set<Integer> mapKeys = new set<Integer> (contasMap.keySet());
        for (Integer i : mapKeys){
            String contaName = contasMap.get(i).Name;
            System.debug('Contas ' + i + '\'s Names: ' + contaName);
        }
    } 
    // criar metodo para chamar esse metodo abaixo
    public static void objDinamico (sObject objeto, string fieldName){
        objeto.put(fieldName, 'Camis Rizzi');
    }

    public static void consultaObj (){
        Candidato__c candt = [SELECT c.Id,
                                    c.Name
                            FROM Candidato__c c
                            WHERE Name = 'Meire Rizzi' LIMIT 1];
        Id CandidatoId =  candt.Id;
        String CandidatoName =  candt.Name;
        System.debug(CandidatoId);
        System.debug(CandidatoName);
    }

}