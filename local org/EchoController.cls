public class EchoController {
    public String requestText{get;set;}
    public String responseText{get;set;}
    public void sendRequest(){
        this.responseText = null;
        try{
            WSEchoManager.EchoManager stub = new WSEchoManager.EchoManager();
            this.responseText = stub.echo(this.requestText);
        }catch(Exception e){
            this.responseText = 'Unexpected exception :'+e.getMessage();
        }
    }
}