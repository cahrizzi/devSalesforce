trigger accountTrigger on Account (before delete) {
    for (account a : [Select id FROM Account 
                                WHERE id IN (Select AccountId FROM Opportunity) 
                                AND id IN :Trigger.old])
    {
        trigger.oldMap.get(a.Id).addError('Cannot insert. An opp related');
    }
}