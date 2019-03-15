(*********************************************************************************
 * Copyright: 	Hartfiel Automation	
 * Author:    	cashley
 * Created:   	March 9, 2019/12:02 PM 
 * Description: This file contains the function blocks and parameters for the 
				process of establishing a client connection to the OPCUA server.
 *********************************************************************************)
PROGRAM _CYCLIC
	
	//Session connect information - connection to OPCUA server
	UaSessionConnectInfo.SecurityMsgMode 						 := UASecurityMsgMode_None;
	UaSessionConnectInfo.SecurityPolicy 						 := UASecurityPolicy_None;
	UaSessionConnectInfo.TransportProfile 					   	 := UATP_UATcp;
	UaSessionConnectInfo.UserIdentityToken.UserIdentityTokenType := UAUITT_Anonymous;
	UaSessionConnectInfo.SessionTimeout 						 := SESSION_TIMEOUT;
	UaSessionConnectInfo.MonitorConnection 					   	 := MONITOR_CONNECT_TIME;

	//UaConnect - establish connection to OPCUA server
	UaConnect_0.Execute 		   := ExecuteConnect;
	UaConnect_0.ServerEndpointUrl  := SERVER_URL;
	UaConnect_0.SessionConnectInfo := UaSessionConnectInfo;
	UaConnect_0.Timeout 		   := CONNECT_INFO_TIMEOUT;

	//Check for error and determine connection handle
	IF UaConnect_0.Busy = FALSE THEN
		IF UaConnect_0.Done = TRUE THEN
			ErrorID 	  := 0;
			ConnectionHdl := UaConnect_0.ConnectionHdl;
		END_IF
		IF UaConnect_0.Error = TRUE THEN
			ErrorID 	  := UaConnect_0.ErrorID;
			ConnectionHdl := 0;
		END_IF
	END_IF

	//UaGetNamespaceIndex - read index of namespace for PVs
	UaGetNamespaceIndex_0.Execute 	  	:= ExecuteGetnamespaceIndex;
	UaGetNamespaceIndex_0.ConnectionHdl := ConnectionHdl;
	UaGetNamespaceIndex_0.NamespaceUri  := NS_URI;
	UaGetNamespaceIndex_0.Timeout 	  	:= NS_TIMEOUT;
	
	//Check for error and determine namespace index
	IF UaGetNamespaceIndex_0.Busy = FALSE THEN
		IF UaGetNamespaceIndex_0.Done = TRUE THEN
			ErrorID 	   := 0;
			NamespaceIndex := UaGetNamespaceIndex_0.NamespaceIndex;
		END_IF
		IF UaGetNamespaceIndex_0.Error = TRUE THEN
			ErrorID 	   := UaGetNamespaceIndex_0.ErrorID;
			NamespaceIndex := 0;
		END_IF
	END_IF
	
	//Node identifier information
	UaNodeID.NamespaceIndex := NamespaceIndex;
	UaNodeID.Identifier 	:= NODE_IDENTIFIER;
	UaNodeID.IdentifierType := UAIdentifierType_String;
	
	//UaNodeGetHandle - get handle for required node
	UaNodeGetHandle_0.Execute 	  	:= ExecuteNodeGetHandle;
	UaNodeGetHandle_0.ConnectionHdl := ConnectionHdl;
	UaNodeGetHandle_0.NodeID 		:= UaNodeID;
	UaNodeGetHandle_0.Timeout 	  	:= NH_TIMEOUT;
	
	//Check for error and determine node handle
	IF UaNodeGetHandle_0.Busy = FALSE THEN
		IF UaNodeGetHandle_0.Done = TRUE THEN
			ErrorID := 0;
			NodeHdl := UaNodeGetHandle_0.NodeHdl;
		END_IF
		IF UaNodeGetHandle_0.Error = TRUE THEN
			ErrorID := UaNodeGetHandle_0.ErrorID;
			NodeHdl := 0;
		END_IF
	END_IF
	
	//Parameters for specifying the node
	UaNodeAddInfo.AttributeId 	  := UAAI_Value;
	UaNodeAddInfo.IndexRangeCount := 0;
	
	Variable_Rd0 := READ_VAR;
	
	//UaRead - read required node from OPCUA server and write it in local plc variable
	UaRead_0(Execute  := ExecuteRead,
		ConnectionHdl := ConnectionHdl,
		NodeHdl 	  := NodeHdl,
		NodeAddInfo   := UaNodeAddInfo,
		Timeout 	  := READ_TIMEOUT,
		Variable 	  := Variable_Rd0
	);
	
	//Check for error
	IF (UaRead_0.Busy = 0) THEN
		IF (UaRead_0.Done = 1) THEN
			ErrorID := 0;
		END_IF
		IF (UaRead_0.Error = 1) THEN
			ErrorID := UaRead_0.ErrorID;
		END_IF
	END_IF
	
	//Parameters for specifying the node
	UaNodeAddInfo.AttributeId 	  := UAAI_Value;
	UaNodeAddInfo.IndexRangeCount := 0;
	
	Variable_Wr0 := WRITE_VAR;

	//UaWrite - write variable to required node from OPCUA server
	UaWrite_0(
		Execute 	  := ExecuteWrite,
		ConnectionHdl := ConnectionHdl,
		NodeHdl 	  := NodeHdl,
		NodeAddInfo   := UaNodeAddInfo,
		Timeout 	  := WRITE_TIMEOUT,
		Variable 	  := Variable_Wr0
		);
	
	//Check for error
	IF UaWrite_0.Busy = FALSE THEN
		IF UaWrite_0.Done = TRUE THEN
			ErrorID  := 0;
		END_IF
		IF UaWrite_0.Error = TRUE THEN
			ErrorID := UaWrite_0.ErrorID;
		END_IF
	END_IF
	
	//UaNodeReleaseHandle - release the handle for the node
	UaNodeReleaseHandle_0.Execute 	    := ExecuteNodeReleaseHandle;
	UaNodeReleaseHandle_0.ConnectionHdl := ConnectionHdl;
	UaNodeReleaseHandle_0.NodeHdl 		:= NodeHdl;
	UaNodeReleaseHandle_0.Timeout 		:= NH_RELEASE_TIMEOUT;
	
	//Check for error and set node handle
	IF (UaNodeReleaseHandle_0.Busy = 0) THEN
		IF (UaNodeReleaseHandle_0.Done = 1) THEN
			ErrorID := 0;
			NodeHdl := 0;
		END_IF
		IF (UaNodeReleaseHandle_0.Error = 1) THEN
			ErrorID := UaNodeReleaseHandle_0.ErrorID;
		END_IF
	END_IF
	
	//UaDisconnect - disconnect from OPCUA server
	UaDisconnect_0.Execute 		 := ExecuteDisconnect;
	UaDisconnect_0.ConnectionHdl := ConnectionHdl;
	UaDisconnect_0.Timeout 		 := DISCONNECT_TIMEOUT;
	
	//Check for error and set connection handle
	IF (UaDisconnect_0.Busy = 0) THEN
		IF ExecuteDisconnect = TRUE THEN
			ConnectionHdl := 0;
		END_IF
	END_IF
	
	//Call UA function blocks
	UaConnect_0();
	UaGetNamespaceIndex_0();
	UaNodeGetHandle_0();
	UaNodeReleaseHandle_0();
	UaDisconnect_0();

END_PROGRAM
