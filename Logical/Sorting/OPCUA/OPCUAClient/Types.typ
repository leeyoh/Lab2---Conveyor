
TYPE
	ClientState_enum : 
		( (*State enumeration for OPCUA client*)
		CLIENT_INIT, (*Initialize and execute connect command*)
		CLIENT_CONNECT, (*Client connecting to server*)
		CLIENT_GET_NS, (*Getting namespace*)
		CLIENT_CHECK_NS, (*Check for namespace error*)
		CLIENT_GET_NH, (*Getting node handle*)
		CLIENT_CHECK_NH, (*Check for node handle error*)
		CLIENT_IDLE, (*Client idle*)
		CLIENT_READ, (*Read item*)
		CLIENT_CHECK_READ, (*Check for read error*)
		CLIENT_WRITE, (*Write to item*)
		CLIENT_CHECK_WRITE, (*Check for write error*)
		CLIENT_NH_RELEASE, (*Release node handle*)
		CLIENT_CHECK_RELEASE, (*Check for node handle release error*)
		CLIENT_DISCONNECT, (*Client disconnecting from server*)
		CLIENT_CHECK_DISCONNECT, (*Check for disconnect error*)
		CLIENT_ERROR (*An error has been detected*)
		);
END_TYPE
