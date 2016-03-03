global class EchoManager {
    webservice static String echo(String text){
        return 'ECHO FROM ORG '+UserInfo.getOrganizationId()+': '+text;
    } 
}