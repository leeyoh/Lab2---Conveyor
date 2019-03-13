(*********************************************************************************
 * Copyright: 	Hartfiel Automation
 * Author:    	cashley
 * Created:   	March 8, 2019/12:40 PM 
 * Description: This file details the process for establishing a client connection
				to the OPCUA server.
 *********************************************************************************)
PROGRAM _CYCLIC
	
	CASE ClientState OF 
		
		CLIENT_INIT: //Initialize and execute connection
			ExecuteConnect := TRUE;
			ClientState    := CLIENT_CONNECT;
			
		CLIENT_CONNECT: //Establish connection to OPCUA server and check for error
			IF EDGEPOS(UaConnect_0.Done) THEN 
				IF NOT UaConnect_0.Error THEN //Check for error
					ClientState := CLIENT_GET_NS;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteConnect  := FALSE;
			END_IF
			
		CLIENT_GET_NS: //Get namespace index
			ExecuteGetnamespaceIndex := TRUE;
			ClientState 			 := CLIENT_CHECK_NS;
			
		CLIENT_CHECK_NS: //Read index of required namespace for PVs and check for error
			IF EDGEPOS(UaGetNamespaceIndex_0.Done) THEN 
				IF NOT UaGetNamespaceIndex_0.Error THEN 
					ClientState := CLIENT_GET_NH;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteGetnamespaceIndex := FALSE;
			END_IF
			
		CLIENT_GET_NH: //Get node handle
			ExecuteNodeGetHandle := TRUE;
			ClientState 		 := CLIENT_CHECK_NH;
			
		CLIENT_CHECK_NH: //Get handle for required node and check for error
			IF EDGEPOS(UaNodeGetHandle_0.Done) THEN 
				IF NOT UaNodeGetHandle_0.Error THEN 
					ClientState := CLIENT_IDLE;
					Station.OpcUa.Connect := FALSE;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteNodeGetHandle := FALSE;
			END_IF
		
		CLIENT_IDLE: //Idle - waiting for command to read, write, disconnect, or reconnect 
			
			//IF connect GOTO CLIENT_INIT
			IF Station.OpcUa.Connect THEN 
				ClientState := CLIENT_INIT;
			END_IF
			
			//IF disconnect GOTO CLIENT_NH_RELEASE
			IF Station.OpcUa.Disconnect THEN 
				ClientState := CLIENT_NH_RELEASE;
			END_IF
			
			//IF read GOTO CLIENT_READ
			IF Station.OpcUa.Read THEN 
				ClientState := CLIENT_READ;
			END_IF
			
			//IF write GOTO CLIENT_WRITE
			IF Station.OpcUa.Write THEN 
				ClientState := CLIENT_WRITE;
			END_IF
			
		CLIENT_READ: //Read plc variable from server
			ExecuteRead := TRUE;
			ClientState := CLIENT_CHECK_READ;
			
		CLIENT_CHECK_READ: //Read variable from OPCUA Server and check for error
			IF EDGEPOS(UaRead_0.Done) THEN 
				IF NOT UaRead_0.Error THEN 
					ClientState := CLIENT_IDLE;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteRead := FALSE;
				Station.OpcUa.Read := FALSE;
			END_IF
			
		CLIENT_WRITE: //Write plc variable to server
			ExecuteWrite := TRUE;
			ClientState  := CLIENT_CHECK_WRITE;
			
			
		CLIENT_CHECK_WRITE: //Write variable to required node from OPCUA Server and check for error
			IF EDGEPOS(UaWrite_0.Done) THEN 
				IF NOT UaWrite_0.Error THEN 
					ClientState := CLIENT_IDLE;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteWrite := FALSE;
				Station.OpcUa.Write := FALSE;
			END_IF
		
		CLIENT_NH_RELEASE: //Release node handle
			ExecuteNodeReleaseHandle := TRUE;
			ClientState 		 	 := CLIENT_CHECK_RELEASE;
			
		CLIENT_CHECK_RELEASE: //Release handle for node and check for error
			IF EDGEPOS(UaNodeReleaseHandle_0.Done) THEN 
				IF NOT UaNodeReleaseHandle_0.Error THEN 
					ClientState := CLIENT_DISCONNECT;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				ExecuteNodeReleaseHandle := FALSE;
			END_IF
			
		CLIENT_DISCONNECT: //Disconnect from OPCUA server and check for error
			ExecuteDisconnect := TRUE;
			ClientState    	  := CLIENT_CHECK_DISCONNECT;
			
		CLIENT_CHECK_DISCONNECT: //Disconnect from OPCUA server and check for error
			IF EDGEPOS(UaDisconnect_0.Done) THEN 
				IF NOT UaDisconnect_0.Error THEN
					ClientState := CLIENT_IDLE;
				ELSE
					ClientState := CLIENT_ERROR;
				END_IF
				Station.OpcUa.Disconnect := FALSE;
				ExecuteDisconnect := FALSE;
			END_IF
			
		CLIENT_ERROR: //An error has been detected
			ExecuteConnect  		 := FALSE;
			ExecuteGetnamespaceIndex := FALSE;
			ExecuteNodeGetHandle     := FALSE;
			ExecuteRead 			 := FALSE;
			ExecuteWrite 			 := FALSE;
			ExecuteNodeReleaseHandle := FALSE;
			ExecuteDisconnect 		 := FALSE;
		
	END_CASE
	
END_PROGRAM
