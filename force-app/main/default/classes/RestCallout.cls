public with sharing class RestCallout {
    
        //ALL 4 STEPS:
        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        // 2. Prepare Internet
        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        // 4. Process HttpResponse

    
    // REQUIRED!
    // Endpoint : https://th-apex-http-callout.herokuapp.com/animals
    // HTTP Method : GET
    public static HttpResponse getAnimal(){
        
        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');

        String username = 'ozhan@test.com';
        String password = 'Test1234';
        Blob requestBlob = Blob.valueOf(username + ':' + password);
        String authorizationString = 'BASIC' + EncodingUtil.base64Encode(requestBlob);
        request.setHeader('Authorization', authorizationString);
        
        // 2. Prepare Internet
        Http http = new Http();
        
        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);
        
        // 4. Process HttpResponse
        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        return response;
    }

    //End Point: https://api.instantwebtools.net/v1/airlines	
    //HTTP Method: GET (ALWAYS USE UPPERCASE IN THE CODE)
    public static HttpResponse getAirlines(){

        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.instantwebtools.net/v1/airlines/1');
        request.setMethod('GET');
        // 2. Prepare Internet
        Http http = new Http();
        
        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        // 4. Process HttpResponse
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            System.debug(response.getBody());
            System.debug(jsonString);
        }

        return response;
    }

    //End Point: https://api.onlinewebtutorblog.com/employees	
    //HTTP Method: GET (ALWAYS USE UPPERCASE IN THE CODE)
    public static HttpResponse getEmployees(){

        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
        request.setMethod('GET');
        // 2. Prepare Internet
        Http http = new Http();
        
        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        // 4. Process HttpResponse
        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();
            //System.debug(jsonString);
            //System.debug(response.getStatusCode());

            //Deserialize JSON format message to APEX Format
            //deserialize data type is always Object. We need to convert it to EmployeeResponse Class data type as below! 
            EmployeeResponse empRes = (EmployeeResponse) JSON.deserialize(jsonString, EmployeeResponse.class); //apexType(EmployeeResponse.class) comes from Class (EmployeeResponse) which has Wrapper Class 
            
            List<EmployeeResponse.EmployeeWrapper> empData = empRes.data;
            List<Employee__c> listOfEmployees = new List<Employee__c>();

            for (EmployeeResponse.EmployeeWrapper eachWrap : empData) {
                Employee__c emp = new Employee__c();
                emp.Name = String.valueOf(eachWrap.id);
                emp.Username__c = eachWrap.username;
                emp.Name__c = eachWrap.name;
                emp.Email__c = eachWrap.email;
                emp.Gender__c = eachWrap.gender;
                emp.Designation__c = eachWrap.designation;
                emp.Phone__c = eachWrap.phone_number;
                emp.Address__c = eachWrap.complete_address;

                listOfEmployees.add(emp);
            }

            try {
                insert listOfEmployees;
            } catch (Exception ex) {
                System.debug(ex.getMessage());
            }
        }

        return response;
    }

    public static HttpResponse postEmployee(){
        //1. Prepare HttpRequest with body
            HttpRequest request = new HttpRequest();
            request.setEndpoint('https://api.onlinewebtutorblog.com/employees');
            request.setMethod('POST');
            //1.a. Set header based on the body type
            request.setHeader('Content-Type', 'application/json');
    
            EmployeeResponse.EmployeeWrapper ew = new EmployeeResponse.EmployeeWrapper();
            ew.name = 'John Smith';
            ew.username = 'blackhead';
            ew.email = 'js@gmail.com';
            ew.gender = 'Male';
            ew.designation = 'Salesforce Developer';
            ew.phone_number = '98362354872';
            ew.complete_address = '8947 Howell Mountains South Kavon, VT 89670-8443';
            
            String jsonBody = JSON.serialize(ew);
    
            //1.b Set body for request
            request.setBody(jsonBody);
    
            //2. Prepare Internet
            Http http = new Http();
    
            //3. Send request and handle response
            HttpResponse response = http.send(request);
    
            //4. Process HttpResponse
            System.debug(response.getStatusCode());
            if(response.getStatusCode() == 200){
                String jsonString = response.getBody();

            EmployeePostResponse epr = (EmployeePostResponse) JSON.deserialize(jsonString, EmployeePostResponse.class);
            System.debug(epr) ; 
            System.debug('Name : ' + epr.data.name); 
            System.debug('Username : ' + epr.data.username); 
            System.debug('Id : ' + epr.data.id); 
            System.debug('Designation : ' + epr.data.designation); 
            System.debug('Email : ' + epr.data.email); 
            System.debug('Phone : ' + epr.data.phone_number); 
        }

        return response;
    }

    // Endpoint  : https://api.onlinewebtutorblog.com/employees/1
    // HTTP Method : DELETE

    public static HttpResponse deleteEmployee(){
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://api.onlinewebtutorblog.com/employees/1');
        request.setMethod('DELETE');

        Http http = new Http();

        HttpResponse response = http.send(request);

        if(response.getStatusCode() == 200){
            String jsonString = response.getBody();

            EmployeeResponse emr = (EmployeeResponse) JSON.deserialize(jsonString, EmployeeResponse.class);

            System.debug(emr.msg);
        }

        return response;
    }
    
    // Endpoint: https://company150-dev-ed.develop.lightning.force.com/services/apexrest/Case/500Dn000004MXEgIAO
    // Http Method: GET
    public static HttpResponse getCaseInfo(){

        // 1.Prepare HttpRequest and wrap all the necessary data in it.
        HttpRequest request = new HttpRequest();
        request.setEndpoint('callout:NC_SFDEVPRACTICE_TARGET/services/apexrest/Case/500Dn000004MXEgIAO');
        request.setMethod('GET');

        // 2. Prepare Internet
        Http http = new Http(); 

        // 3. Send the HttpRequest over the internet in order to receive HttpResponse back
        HttpResponse response = http.send(request);

        // 4. Process HttpResponse
        System.debug(response.getStatus());
        System.debug(response.getStatusCode());
        System.debug(response.getBody());

        return response;
    }
}