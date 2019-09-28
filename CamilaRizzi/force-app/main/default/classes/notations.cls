/* SELECTS*/
public class exemples
{
    /* exemplos de consulta de objetos que se relacionam */
    void soqls()
    {
        // do filho pro pai
        [SELECT id, name, (Select name from carro__r) from Proprietario__c];
        // do pai pro filho
        [SELECT id, name, proprietario__r.name from carro__c];
    }

    /* Para instanciar e gerar objeto da classe que será executada */
    void method()
    {
        // instancia a classe
        proprietarioHandler handler = new proprietarioHandler();
        // chama o metodo desta classe
        handler.criaCarroHandler(nomeProp);
    }
}
