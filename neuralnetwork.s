          AREA  appcode, CODE, READONLY
      EXPORT __main
	  IMPORT Logic_and 
	  IMPORT Logic_or
	  IMPORT Logic_not
	  IMPORT Logic_nand 
      IMPORT Logic_nor 
      IMPORT Logic_xor 
      IMPORT Logic_xnor 		  
	  IMPORT printMsg 
	 
	  IMPORT printSpace	  		  
      ENTRY 
	  
data1 DCFS 1,0,0
data2 DCFS 1,0,1
data3 DCFS 1,1,0
data4 DCFS 1,1,1
data5 DCFS 1,0,0
data6 DCFS 1,0,1

logic_and  DCFS  -0.1,0.2,0.2,-0.2
logic_or   DCFS  -0.1,0.7,0.7,-0.1
logic_not  DCFS  -0.7,0.5,0
logic_nand DCFS   0.6,-0.8,-0.8,0.3
logic_nor  DCFS   0.5,-0.7,-0.7,0.1
logic_xor  DCFS  -5,20,10,1
logic_xnor DCFS  -5,20,10,1
	
__main  FUNCTION
	    ;PUSH{LR}
	    LDR r11,= logic_and
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
		BL Logic_and 
	    BL compute
				
		LDR r11,= logic_or
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_or
		BL compute
		
		LDR r11,= logic_not
		VLDR.F32 S11,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S13,[r11],#4; w3 = 0
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_not
		BL compute_not
				
		LDR r11,= logic_nand
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_nand 
		BL compute		
		
		LDR r11,= logic_nor
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_nor 
		BL compute
			
		LDR r11,= logic_xor
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_xor
		BL compute	
		
		LDR r11,= logic_xnor
		VLDR.F32 S13,[r11],#4; w1
		VLDR.F32 S12,[r11],#4; w2
		VLDR.F32 S11,[r11],#4; w3
		VLDR.F32 S14,[r11],#4; bias
	    BL Logic_xnor	
		BL compute
				
Stop    B Stop
		ENDFUNC
		
compute FUNCTION
	    PUSH{LR}
        LDR r12, = data1; load  address of data1
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16;
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace
		
		LDR r12, = data2; load  address of data2
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16; converting fp format to tru value
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace
		
		LDR r12, = data3; load  address of data3
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16;
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace
		
		LDR r12, = data4; load  address of data4
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16;
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace
        
		POP{LR}
		BX LR
		ENDFUNC
		
compute_not FUNCTION
	    PUSH{LR}
        LDR r12, = data5; load  address of data1
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16;
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace
        
        LDR r12, = data6; load  address of data1
		VLDR.F32 S16,[r12],#4
		VLDR.F32 S17,[r12],#4
		VLDR.F32 S18,[r12],#4
		BL Perceptron
		VCVT.s32.f32 s16,s16;
		VMOV.F32 r0,s16;
		BL printMsg
		VCVT.s32.f32 s17,s17;
		VMOV.F32 r0,s17;
		BL printMsg
		VCVT.s32.f32 s18,s18;
		VMOV.F32 r0,s18;
		BL printMsg
		MOV r0,r5
		BL printMsg
		BL printSpace	
      
        POP{LR}
		BX LR
		ENDFUNC	  

Perceptron FUNCTION
	      
		  PUSH{LR}
		  VMOV.F32 S0,S14; copy of biaS
	      VMLA.F32 S0,S16,S11	;S0 = biaS + W1*input1
		  VMLA.F32 S0,S17,S12	;S0 = biaS + W1*A + W2*input2
    	  VMLA.F32 S0,S18,S13   ;S0 = biaS + W1*A + W2*B + W2*input3
	      BL Sigmoid
		  
		  POP{LR}
		  BX LR
		  ENDFUNC
		  
Sigmoid FUNCTION
	    
		PUSH{LR}
		VLDR.F32 S5, = 1; temporary to Store 1
		VNEG.F32 S0, S0; S0 = -x
		BL exp; exp(-x)
		VADD.F32 S0,S0,S5; S0 = exp(-x) + 1
		VDIV.F32 S0,S5,S0; S0 = 1/(exp(-x) + 1)
		VLDR.F32 S30,= 0.5
		VCMP.F32 S0,S30
        VMRS APSR_nzcv, FPSCR 
		MOVLE r5, #0; output = 0 if Sig(biaS + W1*A + W2*B + W2*C ) < 0.5
		MOVGT r5, #1	
		
		POP{LR}
		BX LR
		ENDFUNC
		
exp     FUNCTION
	    PUSH{LR}
		VLDR.F32 S1, = 1; Sum variable
		MOV r6,#1
		MOV r7,	#10; no of termS
		VADD.F32 S1,S1,S0; 1+x
		VMOV.F32 S2,S0; copy of x
		VLDR.F32 S3, = 2; for factorial calculation
		VLDR.F32 S4, = 1; to Store the factorial reSult
		VLDR.F32 S5, = 1;

Loop    CMP  r6,r7 ;for x^2/2! + x^3/3! ....
        VMUL.F32 S2,S2,S0 
        VDIV.F32 S4,S4,S3
		VFMA.F32 S1,S2,S4
		VADD.F32 S3,S3,S5;
		ADD r6,#1
		BNE Loop
		
		VMOV.F32 S0,S1; copy Sum to S0
		POP{LR}
		BX LR
		ENDFUNC
        END
		   
	
	
		