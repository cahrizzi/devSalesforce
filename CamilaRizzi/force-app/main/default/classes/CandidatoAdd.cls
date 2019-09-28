/*
*	Class Add candidato
*	Auth: Camila Rizzi
*/
public class CandidatoAdd {
	public static void addCandidato (){
        Candidato__c candidato1 = new Candidato__c (Name= 'Camila Rizzi');
        Candidato__c candidato2 = new Candidato__c (Name= 'Meire Rizzi');
        Candidato__c candidato3 = new Candidato__c (Name= 'Meire Silva Rizzi');
        List<Candidato__c> lstCandidato  = new List<Candidato__c>();
        lstCandidato.add(candidato1);
        lstCandidato.add(candidato2);
        lstCandidato.add(candidato3);
        for (Candidato__c candt : lstCandidato){
            System.debug('candidato ' + '\'s Names: ' + candt.Name);
        }
        insert lstCandidato;
    } 
    public static void addCandidatoMap (){
        Candidato__c candidato10 = new Candidato__c (Name= 'Camila Rizzi');
        Candidato__c candidato20 = new Candidato__c (Name= 'Meire Rizzi');
        Candidato__c candidato30 = new Candidato__c (Name= 'Meire Silva Rizzi');
        Map<Integer, Candidato__c> candidatoMap  = new Map<Integer, Candidato__c>();
        candidatoMap.put(1,candidato10);
        candidatoMap.put(2,candidato20);
        candidatoMap.put(3,candidato30);
        set<Integer> mapKeys = new set<Integer> (candidatoMap.keySet());
        for (Integer i : mapKeys){
            String contaName = candidatoMap.get(i).Name;
            System.debug('candidato ' + i + '\'s Names: ' + contaName);
        }
    } 
}