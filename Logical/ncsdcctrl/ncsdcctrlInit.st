
PROGRAM _INIT

(* ### BEGIN gAxisDist ### *)
       
(* initialize general interfaces *)
       gAxisDist.size := gAxisDist.size;
       gAxisDist_HW.DrvIf_Typ := ncSDC_DRVSM16;
       brsstrcpy( ADR(gAxisDist_HW.DrvIf_Name[0]), ADR('gAxisDist_DrvIf') );
       gAxisDist_HW.DiDoIf_Typ := ncSDC_DIDO;
       brsstrcpy( ADR(gAxisDist_HW.DiDoIf_Name[0]), ADR('gAxisDist_DiDoIf') );
       gAxisDist_HW.EncIf1_Typ := ncSDC_ENC16;
       brsstrcpy( ADR(gAxisDist_HW.EncIf1_Name[0]), ADR('gAxisDist_EncIf1') );
       gAxisDist_EncIf1.iLifeCnt := gAxisDist_EncIf1.iLifeCnt;
       
(* initialize old-value for delta step calculation *)
       gAxisDist_oSetPosOld := gAxisDist_DrvIf.oSetPos;
        
(* ### END gAxisDist ### *)


(* ### BEGIN gAxisSort ### *)
       
(* initialize general interfaces *)
       gAxisSort.size := gAxisSort.size;
       gAxisSort_HW.DrvIf_Typ := ncSDC_DRVSM16;
       brsstrcpy( ADR(gAxisSort_HW.DrvIf_Name[0]), ADR('gAxisSort_DrvIf') );
       gAxisSort_HW.DiDoIf_Typ := ncSDC_DIDO;
       brsstrcpy( ADR(gAxisSort_HW.DiDoIf_Name[0]), ADR('gAxisSort_DiDoIf') );
       gAxisSort_HW.EncIf1_Typ := ncSDC_ENC16;
       brsstrcpy( ADR(gAxisSort_HW.EncIf1_Name[0]), ADR('gAxisSort_EncIf1') );
       gAxisSort_EncIf1.iLifeCnt := gAxisSort_EncIf1.iLifeCnt;
       
(* initialize old-value for delta step calculation *)
       gAxisSort_oSetPosOld := gAxisSort_DrvIf.oSetPos;
        
(* ### END gAxisSort ### *)

END_PROGRAM

