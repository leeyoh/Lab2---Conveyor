
PROGRAM _CYCLIC

(* ### BEGIN gAxisDist ### *)
       
(* life counter emulation of digital inputs *)
       gAxisDist_DiDoIf.iLifeCntReference := gAxisDist_DiDoIf.iLifeCntReference + 1;
       gAxisDist_DiDoIf.iLifeCntNegHwEnd  := gAxisDist_DiDoIf.iLifeCntNegHwEnd  + 1;
       gAxisDist_DiDoIf.iLifeCntPosHwEnd  := gAxisDist_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
       gAxisDist_MotorStep0 := gAxisDist_DrvIf.oSetPos - gAxisDist_oSetPosOld;
       gAxisDist_oSetPosOld := gAxisDist_DrvIf.oSetPos;
        
(* ### END gAxisDist ### *)


(* ### BEGIN gAxisSort ### *)
       
(* life counter emulation of digital inputs *)
       gAxisSort_DiDoIf.iLifeCntReference := gAxisSort_DiDoIf.iLifeCntReference + 1;
       gAxisSort_DiDoIf.iLifeCntNegHwEnd  := gAxisSort_DiDoIf.iLifeCntNegHwEnd  + 1;
       gAxisSort_DiDoIf.iLifeCntPosHwEnd  := gAxisSort_DiDoIf.iLifeCntPosHwEnd  + 1;
        
(* default function model of ACOPOSmicro: convert absolute steps to delta steps - overflow save delta calculation *)
       gAxisSort_MotorStep0 := gAxisSort_DrvIf.oSetPos - gAxisSort_oSetPosOld;
       gAxisSort_oSetPosOld := gAxisSort_DrvIf.oSetPos;
        
(* ### END gAxisSort ### *)

END_PROGRAM

