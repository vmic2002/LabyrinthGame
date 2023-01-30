.equ PIXEL_BUFFER_MEMORY, 0xc8000000
.equ CHARACTER_BUFFER_MEMORY, 0xc9000000
.equ PS2_DATA_MEMORY, 0xff200100


.global _start
input_mazes:// First Obstacle Course
            .word 2,1,0,1,1,1,0,0,0,1,0,1
            .word 0,1,0,1,1,1,0,0,0,1,0,1
            .word 0,1,0,0,0,0,0,0,0,1,0,1
            .word 0,1,0,1,1,1,0,0,0,1,1,1
            .word 0,1,0,1,1,1,0,0,0,1,1,1
            .word 0,0,0,1,1,1,0,0,0,1,1,1
            .word 1,1,1,1,1,1,0,0,1,0,0,0
            .word 1,1,1,1,1,1,0,1,0,0,0,0
            .word 1,1,1,1,1,1,0,0,0,0,0,3
            // Second Obstacle Course
            .word 2,1,0,1,1,1,0,0,0,0,0,1
            .word 0,1,0,1,1,1,0,0,0,1,0,1
            .word 0,1,0,0,0,0,0,0,0,1,0,1
            .word 0,1,0,1,1,1,0,0,0,1,0,1
            .word 0,1,0,1,1,1,0,0,0,1,0,1
            .word 0,0,0,1,1,1,0,0,0,1,0,1
            .word 1,1,1,1,1,1,0,0,1,0,0,0
            .word 1,1,1,1,1,1,0,1,0,0,0,0
            .word 1,1,1,1,1,1,1,0,0,0,0,3
            // Third Obstacle Course
            .word 2,0,0,0,0,1,0,0,0,1,0,1
            .word 0,1,1,1,0,1,1,1,0,1,0,1
            .word 0,1,0,0,0,0,0,0,0,0,0,1
            .word 0,1,1,1,1,1,0,1,1,1,0,1
            .word 0,1,0,0,0,0,0,0,0,1,0,1
            .word 1,1,0,1,1,1,1,1,1,1,1,1
            .word 0,1,0,0,0,0,0,0,0,0,0,1
            .word 0,1,1,1,0,1,1,1,1,1,0,1
            .word 0,0,0,0,0,0,0,1,0,0,0,3
            // Fourth Obstacle Course
            .word 2,1,0,0,0,0,0,0,0,0,0,1
            .word 0,1,0,1,1,1,0,1,1,1,0,1
            .word 0,1,0,0,0,1,0,1,0,1,0,1
            .word 0,1,0,1,0,1,1,1,0,1,0,1
            .word 0,0,0,1,0,0,0,0,0,1,0,1
            .word 0,1,0,1,1,1,1,1,1,1,0,1
            .word 0,1,0,1,0,0,0,1,0,0,0,1
            .word 0,1,0,1,1,1,0,1,0,1,1,1
            .word 0,1,0,1,0,0,0,0,0,0,0,3
            // Fifth Obstacle Course
            .word 2,0,0,0,0,1,0,1,0,1,0,1
            .word 1,1,0,1,1,1,0,1,0,1,0,1
            .word 0,0,0,0,0,0,0,0,0,0,0,1
            .word 0,1,1,1,0,1,1,1,1,1,0,1
            .word 0,0,0,1,0,1,0,1,0,0,0,1
            .word 1,1,0,1,1,1,0,1,1,1,0,1
            .word 0,0,0,1,0,1,0,0,0,0,0,1
            .word 0,1,0,1,0,1,0,1,0,1,1,1
            .word 0,1,0,0,0,1,0,1,0,0,0,3
            // Sixth Obstacle Course
            .word 2,0,0,0,0,0,0,1,0,0,0,1
            .word 1,1,0,1,0,1,0,1,0,1,0,1
            .word 0,0,0,1,0,1,0,0,0,1,0,1
            .word 1,1,1,1,0,1,1,1,1,1,1,1
            .word 0,0,0,1,0,0,0,1,0,0,0,1
            .word 0,1,1,1,0,1,1,1,0,1,0,1
            .word 0,1,0,0,0,0,0,0,0,1,0,1
            .word 0,1,0,1,1,1,1,1,1,1,0,1
            .word 0,0,0,0,0,0,0,0,0,1,0,3
            // Seventh Obstacle Course
            .word 2,0,0,0,0,0,0,0,1,0,1,0
            .word 1,1,1,0,1,1,1,1,1,0,1,0
            .word 1,0,0,0,0,0,1,0,0,0,0,0
            .word 1,1,1,1,1,0,1,1,1,0,1,1
            .word 1,0,0,0,1,0,0,0,0,0,0,0
            .word 1,0,1,0,1,0,1,0,1,0,1,0
            .word 1,0,1,0,0,0,1,0,1,0,1,0
            .word 1,1,1,1,1,1,1,1,1,0,1,0
            .word 1,0,0,0,0,0,0,0,0,0,1,3
            // Eighth Obstacle Course
            .word 2,0,0,0,0,0,0,0,0,0,0,0
            .word 1,0,1,1,1,1,1,0,1,1,1,0
            .word 1,0,0,0,1,0,0,0,1,0,0,0
            .word 1,1,1,1,1,0,1,1,1,1,1,1
            .word 1,0,0,0,1,0,1,0,0,0,0,0
            .word 1,0,1,1,1,0,1,1,1,0,1,0
            .word 1,0,0,0,0,0,0,0,1,0,1,0
            .word 1,1,1,0,1,0,1,1,1,1,1,0
            .word 1,0,0,0,1,0,0,0,0,0,0,3
            // Nineth Obstacle Course
            .word 2,0,0,0,0,0,1,0,1,0,1,0
            .word 1,0,1,1,1,1,1,0,1,0,1,0
            .word 1,0,0,0,1,0,0,0,0,0,0,0
            .word 1,0,1,0,1,1,1,0,1,1,1,1
            .word 1,0,1,0,1,0,1,0,0,0,1,0
            .word 1,0,1,1,1,0,1,0,1,1,1,0
            .word 1,0,0,0,1,0,0,0,0,0,1,0
            .word 1,0,1,1,1,0,1,1,1,0,1,0
            .word 1,0,0,0,0,0,1,0,0,0,0,3
characterVal: .space 4

_start:
		//bl VGA_clear_pixelbuff_ASM
	   bl VGA_clear_charbuff_ASM
	   //SHOULD PUSH/POP Variable registers?
	   //(r2, r3) is current position of ampersand
	   //initial pos is always (0,0)
	   mov r2, #0
	   mov r3, #0
	   
	   mov V7, #0 //to stop bug of moving ampersand twice for one key click
	   //V7 is equal to 1 if f0 code was read
	   
	   bl VGA_fill_ASM //sets background color to white
	   bl draw_grid_ASM //draws vertical and horizontal lines (grid)
	   
	   ldr r0, =characterVal
wait_user_1_9_input://loop for waiting for user to input a number from 1 to 9	   
	   bl read_PS2_data_ASM
	   cmp r0, #0
	   ldreq r0, =characterVal
	   beq wait_user_1_9_input
	   //if code gets to here than r0 == 1
	   //and data is at address =characterVal
	   ldr r0, =characterVal
	   ldr V6, [r0] //data is in V6
	   //need to check if V6 == 1, 2, ...9
	   //if it is branch to fill_grid_labyrinth
	   //V6 is actually make code so for 1 would be 16
	   cmp V6, #0x16 //1
	   moveq V6, #1
	   beq fill_grid_labyrinth
	   cmp V6, #0x1E //2
	   moveq V6, #2
	   beq fill_grid_labyrinth
	   cmp V6, #0x26 //3
	   moveq V6, #3
	   beq fill_grid_labyrinth
	   cmp V6, #0x25 //4
	   moveq V6, #4
	   beq fill_grid_labyrinth
	   cmp V6, #0x2E //5
	   moveq V6, #5
	   beq fill_grid_labyrinth
	   cmp V6, #0x36 //6
	   moveq V6, #6
	   beq fill_grid_labyrinth
	   cmp V6, #0x3D //7
	   moveq V6, #7
	   beq fill_grid_labyrinth
	   cmp V6, #0x3E //8
	   moveq V6, #8
	   beq fill_grid_labyrinth
	   cmp V6, #0x46 //9
	   moveq V6, #9
	   beq fill_grid_labyrinth
end_wait_for_user_input:
		mov r1, #0
		str r1, [r0]//to clear data at characterVal
		b wait_user_1_9_input
	   
fill_grid_labyrinth:	   
	   mov r0, #0
	   mov r1, #0
	   bl draw_ampersand_ASM//initial box in grid of ampersand is (0,0)
	   
	   mov r0, #11
	   mov r1, #8
	   bl draw_exit_ASM //draw exit at (11,8)
	   
	   mov V3, V6 //V3 is used to keep track of which labyrinth is currently displayed
	   mov V5, V6 //fill grid with 1-9th labyrinth, user input [1,9] is in V6
	   bl fill_grid_ASM
	   
	   ldr r0, =characterVal
main_loop://this loop continuously checks if user is pressing on arrows
	   bl read_PS2_data_ASM
	   cmp r0, #0
	   ldreq r0, =characterVal
	   beq main_loop
	   //if code gets to here than r0 == 1
	   //and data is at address =characterVal
	   ldr r0, =characterVal
	   ldr V6, [r0] //data is in V6
	   //HERE CALL FUNCTION (bl move_ampersand_ASM)
	   //DEPENDING ON VALUE OF DATA IN V6
	  
	  //pressing and releasing X arrow produces make/break code: e0 X/e0 f0 X
	   //so X is read twice, causing ampersand to move twice
	  //to not move ampersand up/down/left/right twice for one key pressed/released
	  //need to ignore V6 if previous V6 was f0
	  //V7 is 1 if previous V6 was f0
	   cmp V7, #1
	   moveq V7, #0
	   beq end_main_loop
	   cmp V6, #0xf0
	   moveq V7, #1
	   beq end_main_loop
	   
	   cmp V6, #0x75 //up arrow
	   bleq move_ampersand_ASM
	   cmp V6, #0x72 //down arrow
	   bleq move_ampersand_ASM
	   cmp V6, #0x74 //right arrow
	   bleq move_ampersand_ASM
	   cmp V6, #0x6b //left arrow
	   bleq move_ampersand_ASM
end_main_loop:	  
	   //if code gets to here user clicked something else than arrows so we dont care
	   mov r1, #0
	   str r1, [r0]//to clear data at characterVal
	   b main_loop
end:
        b       end


//useful subroutines for labyrinth

move_ampersand_ASM:
//input is V6 which holds make code (character data)
//if V6 == 0x75 -> up arrow pressed
//V6 == 0x72 -> down arrow pressed
//V6 == 0x74 -> right arrow pressed
//V6 == 0x6b -> left arrow pressed
//use 2d array of 0s and 1s to know if ampersand can move, not pixels
//(r2, r3) is current position of ampersand
//V3 is used to keep track of which labyrinth is currently displayed
//V3 is in [1,9]
//USE V3 TO ACCESS CORRECT 2D ARRAY AND r2 AND r3 TO CHECK IF CORRECT BIT (WORD) IS 0 OR 1
	PUSH {r0, r1, V4, V5} //important not to PUSH/POP r2, r3 because they need to be changed
	ldr V4 , =input_mazes
	sub V5, V3, #1 //easier for math
	mov r0, #432 //108*4, 108 elements
	mul V5, V5, r0 
	add V4, V5 //V4 should now address first element of correct labyrinth
	
	cmp V6, #0x75
	beq check_can_move_up
	cmp V6, #0x72
	beq check_can_move_down
	cmp V6, #0x74
	beq check_can_move_right
	//if code gets here then V6 == 0x6b since move_ampersand_ASM is only called with these inputs
	b check_can_move_left
	
	
	
check_can_move_up:
	cmp r3, #0 //if r3 == 0, then ampersand is in top row -> ampersand cant move up
	beq end_move_ampersand
	//NEED TO CHECK IF BOX ABOVE AMPERSAND IS BLACK, IF IT IS, CANT MOVE ELSE CAN MOVE
	//see 2d array as such:
	//[0,1, 2,3,4,5,6,6,7,8,9,10,11
	//12,13,14...
	//if r2,r3 = (2,1), then ampersand is at num 14
	//to find num = r2 + 12*r3 = 14 for (2,1)
	//to find numabove (num) = num - 12 (example: above 14 is 14-12=2)
	//so num above for (r2, r3) = r2 + 12*r3 -12
	//once you have num above can easily look up val at this position using V4
	mov V5, #12
	mul V5, r3, V5
	add V5, r2
	sub V5, #12
	//now V5 = numabove = r2 + 12*r3 -12
	lsl V5, #2 //multiply V5 by 4 since each array element is 4 bytes
	ldr V4, [V4, V5]
	cmp V4, #1 
	beq end_move_ampersand //if V4 == 1 then box above ampersand is black -> CANT move up
	//if code gets to here then V4 == 0 (or 2 but doesnt matter)
	//and ampersand CAN move up
	//MOVE AMPERSAND UP AND MODIFY r2, r3 (r3 = r3-1)
	//call draw_white_ASM with inputs (r0, r1) to draw white square there
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_white_ASM //drawing white where ampersand is
	POP {LR}
	sub r3, #1//to move ampersand up
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_ampersand_ASM //draws ampersand one square up
	POP {LR}
	b end_move_ampersand
check_can_move_down:
	cmp r3, #8 //if r3 == 8, then ampersand is in bottom row -> cant move down
	beq end_move_ampersand
	//NEED TO CHECK IF BOX BELOW AMPERSAND IS BLACK, IF IT IS, CANT MOVE ELSE CAN MOVE
	//look at comments in check_can_move_up
	//numbelow (num) = num +12
	mov V5, #12
	mul V5, r3, V5
	add V5, r2
	add V5, #12
	//now V5 = numbelow = r2 + 12*r3 + 12
	lsl V5, #2 //multiply V5 by 4 since each array element is 4 bytes
	ldr V4, [V4, V5]
	cmp V4, #1 
	beq end_move_ampersand //if V4 == 1 then box below ampersand is black -> CANT move down
	//if code gets to here then V4 == 0 or 3
	//and ampersand CAN move down
	//TODOOOO NEED TO CHECK IF V4 IS 3 IN WHICH CASE USER WINS (3 == EXIT)
	cmp V4, #3
	POPeq {r0, r1, V4, V5}
	PUSHeq {LR}
	bleq pause
	POPeq {LR}
	beq _start //restart if ampersand reaches exit
	
	
	//MOVE AMPERSAND down AND MODIFY r2, r3 (r3 = r3+1)
	//call draw_white_ASM with inputs (r0, r1) to draw white square there
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_white_ASM //drawing white where ampersand is
	POP {LR}
	add r3, #1//to move ampersand down
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_ampersand_ASM //draws ampersand one square down
	POP {LR}
	b end_move_ampersand
check_can_move_right:
	cmp r2, #11 //if r2 == 11, ampersand is in the rightest row, cant move right
	beq end_move_ampersand
	//NEED TO CHECK IF BOX RIGHT AMPERSAND IS BLACK, IF IT IS, CANT MOVE ELSE CAN MOVE
	//numright (num) = num + 1
	mov V5, #12
	mul V5, r3, V5
	add V5, r2
	add V5, #1
	//now V5 = numright = r2 + 12*r3 + 1
	lsl V5, #2 //multiply V5 by 4 since each array element is 4 bytes
	ldr V4, [V4, V5]
	cmp V4, #1 
	beq end_move_ampersand //if V4 == 1 then box right ampersand is black -> CANT move right
	//if code gets to here then V4 == 0
	//and ampersand CAN move right
	cmp V4, #3
	POPeq {r0, r1, V4, V5}
	PUSHeq {LR}
	bleq pause
	POPeq {LR}
	beq _start //restart if ampersand reaches exit
	
	//MOVE AMPERSAND right AND MODIFY r2, r3 (r2 = r2+1)
	//call draw_white_ASM with inputs (r0, r1) to draw white square there
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_white_ASM //drawing white where ampersand is
	POP {LR}
	add r2, #1//to move ampersand right
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_ampersand_ASM //draws ampersand one square right
	POP {LR}
	b end_move_ampersand
check_can_move_left:
	cmp r2, #0 //if r2 == 0, ampersand is is leftest row, cant move left
	beq end_move_ampersand
	//NEED TO CHECK IF BOX LEFT AMPERSAND IS BLACK, IF IT IS, CANT MOVE ELSE CAN MOVE
	//numleft (num) = num - 1
	mov V5, #12
	mul V5, r3, V5
	add V5, r2
	sub V5, #1
	//now V5 = numright = r2 + 12*r3 - 1
	lsl V5, #2 //multiply V5 by 4 since each array element is 4 bytes
	ldr V4, [V4, V5]
	cmp V4, #1 
	beq end_move_ampersand //if V4 == 1 then box left ampersand is black -> CANT move left
	//if code gets to here then V4 == 0
	//and ampersand CAN move left
	//MOVE AMPERSAND right AND MODIFY r2, r3 (r2 = r2-1)
	//call draw_white_ASM with inputs (r0, r1) to draw white square there
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_white_ASM //drawing white where ampersand is
	POP {LR}
	sub r2, #1//to move ampersand left
	mov r0, r2
	mov r1, r3
	PUSH {LR}
	bl draw_ampersand_ASM //draws ampersand one square left
	POP {LR}
	b end_move_ampersand
end_move_ampersand:
	POP {r0, r1, V4, V5}
	bx LR

pause:
	PUSH {V1}
	ldr V1, =#7483647
	 PUSH {r0, r1, V5, LR}
	 bl VGA_clear_pixelbuff_ASM//VGA_fill_ASM	
	 mov r0, #32
	 mov r1, #30
	 //display "The end" on screen
	 
	 mov V5, #0x54//ASCII T
	 bl VGA_write_char_ASM
	 add r0, #2
	 mov V5, #0x68//ASCII H
	 bl VGA_write_char_ASM
	 add r0, #2
	 mov V5, #0x65//ASCII e
	 bl VGA_write_char_ASM	//r0 (x), r1 (y), V5 (char)
	 add r0, #6
	 
	 
	 //mov V5, #0x65//ASCII e
	 bl VGA_write_char_ASM	//r0 (x), r1 (y), V5 (char)
	 add r0, #2
	 mov V5, #0x6E//n
	 bl VGA_write_char_ASM
	 add r0, #2
	 mov V5, #0x64//d
	 bl VGA_write_char_ASM
	 POP {r0, r1, V5, LR}
loop:
	cmp V1, #0 //could be smallest possible number for longer pause
	beq end_pause
	sub V1, #1
	b loop
end_pause:
	POP {V1}
	bx LR

fill_grid_ASM:
//input V5: number from 1-9 to determine which labyrinth should be displayed
//INPUT IS ASSUMED TO BE A NUMBER FROM 1-9
	PUSH {r0, r1, V1, V3, V4, V5}
	ldr V1 , =input_mazes
	sub V5, #1 //easier for math
	mov r0, #432 //108*4, 108 elements
	mul V5, V5, r0 
	add V1, V5 //V1 should now address first element of correct labyrinth
	
	//ampersand and exit are always at same spot
	add V1, #4 //skip first element (ampersand)
	mov r0, #1 //(r0, r1) initialized to (1, 0) since we are skipping first element
	mov r1, #0
	mov V4, #1 //V4 is counter of how many elements have been looked over
fill_loop:
	cmp V4, #107 //9*12-1=107
	beq end_fill_grid_ASM //if 107 elements have been looked over, only exit is left (element 3 in array)
	add V4, #1
	ldr V3, [V1], #4 //V1 post incremented
	cmp V3, #1
	beq draw_obstacle
fill_end_loop:
	cmp r0, #11
	moveq r0, #0
	addeq r1, #1
	beq fill_loop
	add r0, #1
	b fill_loop
draw_obstacle:
	PUSH {LR}
	bl draw_obstacle_ASM
	POP {LR}
	b fill_end_loop
end_fill_grid_ASM:
	POP {r0, r1, V1, V3, V4, V5}
	bx LR



draw_white_ASM:
//used to draw white where ampersand is to make it look like
//the ampersand moved
//two inputs: r0: x, r1:y
//if r0 = 1, r1 = 1, box (1,1) of grid gets colored in black
	PUSH {r0, r1, V1, V2, V5}
	
	mov V1, #27 //multiply inputs by 27 to turn into pixels
	mul r0, r0, V1
	mul r1, r1, V1
	
	/*ADDED CODE*/
	add r0, #2
	add r1, #2
	
	
	/*ADDED CODE*/
	//26 BELOW WAS 27!!!!!!!!!!!!	
	add V1, r0, #23 //V1 is max val of r0
	add V2, r1, #23 //V2 is max val of r1
	ldr V5, =#65535 //WHITE
white_horizontal_line:
	cmp r0, V1
	beq white_move_down
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	b white_horizontal_line
white_move_down:
	cmp r1, V2
	beq end_draw_white
	add r1, #1
	sub r0, V1, #23 //re initialize r0 WAS 27
	b white_horizontal_line
end_draw_white:
	POP {r0, r1, V1, V2, V5}
	bx LR




draw_obstacle_ASM:
//two inputs: r0: x, r1:y
//if r0 = 1, r1 = 1, box (1,1) of grid gets colored in black
	PUSH {r0, r1, V1, V2, V5}
	
	mov V1, #27 //multiply inputs by 27 to turn into pixels
	mul r0, r0, V1
	mul r1, r1, V1
	
	add V1, r0, #27 //V1 is max val of r0
	add V2, r1, #27 //V2 is max val of r1
	mov V5, #0 //obstacles are BLACK
obstacle_horizontal_line:
	cmp r0, V1
	beq obstacle_move_down
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	b obstacle_horizontal_line
obstacle_move_down:
	cmp r1, V2
	beq end_draw_obstacle
	add r1, #1
	sub r0, V1, #27 //re initialize r0
	b obstacle_horizontal_line
end_draw_obstacle:
	POP {r0, r1, V1, V2, V5}
	bx LR

draw_exit_ASM:
//two inputs: r0:x, r1:y
	PUSH {V5}
	mov V5, #63488 //exit is just a red square
	PUSH {LR}
	bl draw_square
	POP {LR}
	POP {V5}
	bx LR


draw_ampersand_ASM:
//two inputs: r0:x, r1:y
//for now ampersand is just a blue square
	PUSH {V5}
	mov V5, #31 //COULD CHANGE THIS FOR INTERESTING COLLORS
	PUSH {LR}
	bl draw_square
	POP {LR}
	POP {V5}
	bx LR


draw_square:
//three inputs: r0 : x, r1 : y, V5: color
//x, y are coordinates for box number of grid.
//->if x = 0, y = 0, square is in top left box (0,0)
//->if x = 1, y = 1, square is in box (1,1) and topleft coordinates are (27,27)
//topleft coordinates of square are (in pixels) -> (x*27, y*27)
	PUSH {r0, r1, V1, V2, V3}
	mov V1, #27
	mul r0, r0, V1
	mul r1, r1, V1
	//multiply by 27 to make them pixels, not coordinates for boxes of grid
	add V1, r0, #20 //V1 is max x for ampersand
	add V3, r1, #20 //V3 is max y for ampersand
	add r0, #7 //note that 7+20 =27 TO CHANGE DIMENSIONS OF SQUARE CHANGE 7 AND 20
	add r1, #7
	mov V2, r0 //V2 keeps track of initial x
horizontal_line:
	cmp r0, V1
	//moveq r0, V2
	//moveq r1, V3
	beq move_down
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	//add V5, #2 //CHANGE COLOR
	b horizontal_line
move_down:
	cmp r1, V3
	beq end_draw_ampersand
	add r1, #1
	mov r0, V2
	b horizontal_line
end_draw_ampersand:
	POP {r0, r1, V1, V2, V3}
	bx LR

draw_grid_ASM:
// to draw the empty 9-by-12 grid
//x max val is 319
//y max val is 239
//1 vertical line each 320/12 ~= 27 pixels
//1 horizontal line each 240/9 ~= 27 pixels
	PUSH {r0, r1, V1, V3, V5}
	ldr V3, =#319 //cmp r0, V3 a couple lines down only works with V3, not #319 (invalid constant after fixup)
	mov r0, #0 //r0 is x
	mov r1, #0 //r1 is y 
	mov V5, #0 //V5 is color, lines need to be BLACK
vertical_lines:	
	cmp r0, #320
	movge r0, #0
	movge r1, #0
	bge horizontal_lines
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	cmp r1, #239
	moveq r1, #0
	addeq r0, #27//1 vertical line each 27 pixels
	addne r1, #1 //increment y by 1 to draw whole vertical line one pixel at a time
	b vertical_lines
horizontal_lines:
	cmp r1, #240
	movge r0, #0
	movge r1, #239
	bge final_line1
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	cmp r0, V3 //cant put 319 (invalid constant after fixup)
	moveq r0, #0
	addeq r1, #27 //1 horizontal line each 27 pixels
	addne r0, #1 //increment x by 1 to draw whole horizontal line one pixel at a time
	b horizontal_lines
final_line1:	
	//horizontal line at bottom of grid
	cmp r0, V3
	movgt r0, V3
	movgt r1, #0
	bgt final_line2
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	b final_line1
final_line2:
//vertical line at right of grid
	cmp r1, #239
	bgt end_draw_grid
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r1, #1
	b final_line2
end_draw_grid:
	POP {r0, r1, V1, V3, V5}
	bx LR



VGA_fill_ASM:
//x max val is 319
//y max val is 239
//loop through both x and y and set all pixels to color 0
	PUSH {r0, r1, V1, V5}
	mov r0, #0 //r0 is x counter (0 to 319)
	mov r1, #0 //r1 is y counter (0 to 239)
	ldr V1, =#65535
	mov V5, V1 //V5 is color, set background color to WHITE
fill_x_loop:	
	cmp r0, #320
	beq fill_y_loop
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	b fill_x_loop
fill_y_loop:	
	cmp r1, #239
	beq fill_end_clear
	mov r0, #0 //reset x counter
	add r1, #1 //increment y counter
	b fill_x_loop
fill_end_clear:
	POP {r0, r1, V1, V5}
	bx LR






@ TODO: copy VGA driver here.
VGA_draw_point_ASM:
//not sure what inputs are but seems like r0 (x), r1 (y), V5 (color) are used
	PUSH {V1, V2, V3, V4, V5}
	ldr V1, =PIXEL_BUFFER_MEMORY
	//0xc8000000 | (y << 10) | (x << 1)
	mov V2, r1, lsl#10
	add V2, V2, r0, lsl#1 //V2 = y << 10 + x << 1
	//lsl V2, #2 //V2*4 (4 is word size)//MAYBE COMMENT LINE
	//IF V2 IS MULTIPLE OF 4 THEN PROCEED AS USUAL
	//ELSE V2 IS MULTIPLE OF 2 THAT ISNT MULTIPLE OF 4 SO ACCESSING MEMORY IS MORE TRICKY
	//if accessing at base + 4*k then easy (2nd digit from right of V2 is 0) -> need to update byte k and k+1
	//else 2nd digit (from the right) of V2 must be 1 -> need to update 2 leftmost bytes. example:
	//to access c800...2, need to update 2 leftmost bytes starting at c800....0
	tst V2, #2 //2 in binary is 10, this is to determine if 2nd digit from right is 0 or 1
	//each word has 2 pixels (right and left)
	beq right_pixel
	bne left_pixel
right_pixel:
	//V5 is 00000...V5
	ldr V3, [V1, V2]
	ldr V4, =#4294901760//bits 16-31 are 1s
	and V3, V3, V4
	orr V3, V3, V5
	str V3, [V1, V2]
	b end_draw_point
left_pixel:
	sub V2, #2//can only load/store multiple of 4
	//V5 is 0000..V5
	lsl V5, #16 //to move color bits to the left
	//V5 is V5...0000
	ldr V3, [V1, V2]
	ldr V4, =#65535//bits 15-0 are 1s
	and V3, V3, V4
	orr V3, V3, V5
	str V3, [V1, V2]
	b end_draw_point
	//str V5, [V1, V2]//V5 is color, V1 is base address, V2 is offset
end_draw_point:
	POP {V1, V2, V3, V4, V5}
	bx LR
	
VGA_clear_pixelbuff_ASM:
//x max val is 319
//y max val is 239
//loop through both x and y and set all pixels to color 0
	PUSH {r0, r1, V5}
	mov r0, #0 //r0 is x counter (0 to 319)
	mov r1, #0 //r1 is y counter (0 to 239)
	mov V5, #0 //V5 is color, set to 0 to "clear" pixels
x_loop:	
	cmp r0, #320
	beq y_loop
	PUSH {LR}
	bl VGA_draw_point_ASM
	POP {LR}
	add r0, #1
	b x_loop
y_loop:	
	cmp r1, #239
	beq end_clear
	mov r0, #0 //reset x counter
	add r1, #1 //increment y counter
	b x_loop
end_clear:
	POP {r0, r1, V5}
	bx LR

VGA_write_char_ASM:
//r0 (x), r1 (y), V5 (char)
	//x in [0, 79] and y in [0, 59]
	//PUSH {V1, V2}
	cmp r0, #79
	bxgt LR
	cmp r0, #0
	bxlt LR
	cmp r1, #59
	bxgt LR
	cmp r1, #0
	bxlt LR
	PUSH {V1, V2, V3, V4, V5}
	ldr V1, =CHARACTER_BUFFER_MEMORY
	//0xc9000000 | (y << 7) | x
	mov V2, r1, lsl#7
	add V2, V2, r0 //V2 = y << 7 + x
	//HERE NEED TO FIGURE OUT WHICH BYTE NEED TO BE CHANGED
	//WHEN LOADING, U GET 4 BYTES, A CHAR IS ONLY 1 BYTE SO NEED TO CHANGE
	//1 BYTE OUT OF 4 BYTES, WHICH BYTE TO CHANGE DEPENDS ON VALUE OF V2
	//IF rightmost 2 bits of V2 are 00 (v2 is 0, 4....), RIGHTMOST BYTE NEEDS TO BE CHANGED (BITS 0..7)
	//IF rightmost 2 bits of v2 are 01, BITS 8..15 NEEDS TO BE CHANGED
	//IF rightmost 2 bits of v2 are 10, BITS 16..23 NEEDS TO BE CHANGED
	//IF rightmost 2 bits of v2 are 11, BITS 24..31 NEEDS TO BE CHANGED
	tst V2, #1//to determine what the rightmost bit is
	beq right_most_bit_0
	bne right_most_bit_1
right_most_bit_0:	
	tst V2, #2//to determine what 2nd rightmost bit is
	beq bits_00
	bne bits_10
right_most_bit_1:
	tst V2, #2//to determine what 2nd rightmost bit is
	beq bits_01
	bne bits_11
bits_00:
	//bits 0..7 need to be changed
	//no need to shift char val
	ldr V4, =#4294967040 //bits 8-31 all 1s
	b end_write_char
bits_01:
	//bits 8..15 need to be changed
	lsl V5, #8 //need to shift char val to update correct byte
	ldr V4, =#4294902015
	sub V2, #1 //to be able to load/store using v2 (make v2 a multiple of 4)
	b end_write_char
bits_10:
	//bits 16..23 need to be changed
	lsl V5, #16 //need to shift char val to update correct byte
	ldr V4, =#4278255615
	sub V2, #2 //to be able to load/store using v2 (make v2 a multiple of 4)
	b end_write_char
bits_11:
	//bits 24..31 need to be changed
	lsl V5, #24 //need to shift char val to update correct byte
	ldr V4, =#16777215
	sub V2, #3 //to be able to load/store using v2 (make v2 a multiple of 4)
	b end_write_char
end_write_char:
	//by now V4 has 1s where we dont want to change the bytes and 0s where we want to put the char
	ldr V3, [V1, V2]
	and V3, V4
	orr V3, V5
	str V3, [V1, V2]
	POP {V1, V2, V3, V4, V5}
	bx LR

VGA_clear_charbuff_ASM:
	PUSH {r0, r1, V5}
	//loop through x in [0, 79] and y in [0, 59]
	mov r0, #0 // x counter
	mov r1, #0 // y counter
	mov V5, #0 //char val of 0
clear_x_loop:
	cmp r0, #80
	beq clear_y_loop
	PUSH {LR}
	bl VGA_write_char_ASM
	POP {LR}
	add r0, #1
	b clear_x_loop
clear_y_loop:	
	cmp r1, #59
	beq end_clear_char
	mov r0, #0 //reset x counter
	add r1, #1 //increment y counter
	b clear_x_loop
end_clear_char:
	POP {r0, r1, V5}
	bx LR
	

@ TODO: insert PS/2 driver here.
read_PS2_data_ASM:
//Input argument (r0): A memory address in which the data that is read from the
//PS/2 keyboard will be stored (pointer argument).
//Output argument (r0): Integer that denotes whether the data read is valid or not.
	PUSH {V1, V2, V3, V4}
	ldr V1, =PS2_DATA_MEMORY
	ldr V2, [V1]
	mov V3, V2
	lsr V2, #15 //shift right 15 times
	tst V2, #1
	moveq r0, #0 //if RVALID bit is not true return 0
	POPeq {V1, V2, V3, V4}
	bxeq lr
	//if code gets to here then RVALID bit is true
	//use V3 instead of V2
	and V3, V3, #255 //only 1s for first 8 bits, V3 now only has "data" bits
	//BUG HAPPENS HERE WHEN TRYING TO STORE AT [R0]
	//need to make sure that r0 is multiple of 4 if not cant just store
	//HERE NEED TO FIGURE OUT WHICH BYTE NEED TO BE CHANGED
	//WHEN STR/LDR, U GET 4 BYTES, DATA IS ONLY 1 BYTE SO NEED TO CHANGE
	//1 BYTE OUT OF 4 BYTES, WHICH BYTE TO CHANGE DEPENDS ON VALUE OF r0
	//IF rightmost 2 bits of r0 are 00 (v2 is 0, 4....), RIGHTMOST BYTE NEEDS TO BE CHANGED (BITS 0..7)
	//IF rightmost 2 bits of r0 are 01, BITS 8..15 NEEDS TO BE CHANGED
	//IF rightmost 2 bits of r0 are 10, BITS 16..23 NEEDS TO BE CHANGED
	//IF rightmost 2 bits of r0 are 11, BITS 24..31 NEEDS TO BE CHANGED
	tst r0, #1//to determine what the rightmost bit is
	beq PS2_right_most_bit_0
	bne PS2_right_most_bit_1
PS2_right_most_bit_0:	
	tst r0, #2//to determine what 2nd rightmost bit is
	beq PS2_bits_00
	bne PS2_bits_10
PS2_right_most_bit_1:
	tst r0, #2//to determine what 2nd rightmost bit is
	beq PS2_bits_01
	bne PS2_bits_11
PS2_bits_00:
	//bits 0..7 need to be changed
	//no need to shift data bits
	ldr V4, =#4294967040 //bits 8-31 all 1s
	b PS2_end
PS2_bits_01:
	//bits 8..15 need to be changed
	lsl V3, #8 //need to shift data bits to update correct byte
	ldr V4, =#4294902015
	sub r0, #1 //to be able to load/store using r0 (make r0 a multiple of 4)
	b PS2_end
PS2_bits_10:
	//bits 16..23 need to be changed
	lsl V3, #16 //need to shift data bits to update correct byte
	ldr V4, =#4278255615
	sub r0, #2 //to be able to load/store using r0 (make r0 a multiple of 4)
	b PS2_end
PS2_bits_11:
	//bits 24..31 need to be changed
	lsl V3, #24 //need to shift data bits to update correct byte
	ldr V4, =#16777215
	sub r0, #3 //to be able to load/store using r0 (make r0 a multiple of 4)
	b PS2_end
PS2_end:
	ldr V2, [r0]
	and V2, V4
	orr V3, V2
	str V3, [r0]
	mov r0, #1 //set output argument to 1 to signal valid data
	POP {V1, V2, V3, V4}
	bx LR




