Map<String, Object> inputs = new Map<String, Object>();
inputs.put('AccountId', '001Dn00000NRx9rIAD');
inputs.put('AccoundOwnerId', '005Dn000003sdt2IAA');
inputs.put('AccountName', 'Soft Innovas');
inputs.put('CreatedByName', 'Alihan Caliskan');

Flow.Interview invokeFlow = new Flow.Interview.X17_Account_Auto_Launch_Flow(inputs);
invokeFlow.start();