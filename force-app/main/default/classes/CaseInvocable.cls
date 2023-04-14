public with sharing class CaseInvocable {
    
    @InvocableMethod (label = 'Send Email & Save Activity'
                      category = 'Case')
    public static void sendEmail (List<FlowInput> inputs){

        List<Messaging.SingleEmailMessage> messages = new List<Messaging.SingleEmailMessage>();
        for (FlowInput eachInput : inputs) {
            Messaging.SingleEmailMessage message = new Messaging.SingleEmailMessage();
            message.setSubject('Case Created : ' + eachInput.caseNumber);
            message.setPlainTextBody('Hello there, \n'
                                     +'A case has been created your query. \n'
                                     +'Thanks, \n'
                                     +'Salesforce');
            
            message.setTargetObjectId(eachInput.contactId);
            message.setSaveAsActivity(true);

            messages.add(message);
        }

        messaging.sendEmail(messages);
    }

    public class FlowInput{
        @InvocableVariable (label = 'Case Number' required = true)
        public String caseNumber;
        @InvocableVariable (label = 'Case Id' required = true)
        public Id contactId;
    }
}