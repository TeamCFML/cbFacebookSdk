component implements="IRequestBody" {

    property name="params";

    property name="FacebookUrlmanipulator" inject="FacebookUrlmanipulator@cbFacebookSdk";;

    public function init( struct params ){
        variables.params = arguments.params;
        return this;
    }

    public function getBody(){
        return FacebookUrlmanipulator.serializeQueryString( variables.params );
    }

}