module random(rst,clk,ran2,ran3,ran4);
    input rst,clk;
    output reg [7:0] ran2;
    output reg [11:0] ran3;
    output reg [15:0] ran4;
  	

    parameter [5:0] ran_from_it = 6'b011011;
  	reg [9:0] ranOne = 10'b0111010011, ranTwo = 10'b1011010011;
  	reg [1:0] position;
  	reg [1:0] where;
    always @(posedge rst or posedge clk) begin
		if(rst) begin
		  ran2 <= 8'h01;ran3 <= 12'h001;ran4 <= 16'h0001;
		end 
		else begin
		  ranTwo <= {ranTwo * ranOne}[19:10];
		  ranOne <= {ranTwo * ranOne}[9:0];
		  position <= ranOne[5:4];
		  where <= ranTwo[5:4];
		  if(where == 2'b00)	begin
		  	case(position)
		  		2'b00 : begin
		  			ran2 <= {6'b000000,ran_from_it[1:0]};
		  			ran3 <= {6'b000000,ran_from_it[1:0],4'b0000};
		  			ran4 <= {6'b000000,ran_from_it[1:0],8'b00000000};
		  		end
		  		2'b01 : begin
		  			ran2 <= {6'b000000,ran_from_it[2:1]};
		  			ran3 <= {6'b000000,ran_from_it[2:1],4'b0000};
		  			ran4 <= {6'b000000,ran_from_it[2:1],8'b00000000};
		  		end
		  		2'b10 : begin
		  			ran2 <= {6'b000000,ran_from_it[3:2]};
		  			ran3 <= {6'b000000,ran_from_it[3:2],4'b0000};
		  			ran4 <= {6'b000000,ran_from_it[3:2],8'b00000000};
		  		end
		  		2'b11 : begin
		  			ran2 <= {6'b000000,ran_from_it[3:2]};
		  			ran3 <= {6'b000000,ran_from_it[3:2],4'b0000};
		  			ran4 <= {6'b000000,ran_from_it[3:2],8'b00000000};
		  		end
		  end
		  else if(where == 2'b01)	begin
		    	case(position)
		  		2'b00 : begin
		  			ran2 <= {2'b00,ran_from_it[1:0],4'b0000};
		  			ran3 <= {2'b00,ran_from_it[1:0],8'b00000000};
		  			ran4 <= {2'b00,ran_from_it[1:0],12'b000000000000};
		  		end
		  		2'b01 : begin
		  			ran2 <= {2'b00,ran_from_it[2:1],4'b0000};
		  			ran3 <= {2'b00,ran_from_it[2:1],8'b00000000};
		  			ran4 <= {2'b00,ran_from_it[2:1],12'b000000000000};
		  		end
		  		2'b10 : begin
		  			ran2 <= {2'b00,ran_from_it[3:2],4'b0000};
		  			ran3 <= {2'b00,ran_from_it[3:2],8'b00000000};
		  			ran4 <= {2'b00,ran_from_it[3:2],12'b000000000000};
		  		end
		  		2'b11 : begin
		  			ran2 <= {2'b00,ran_from_it[3:2],4'b0000};
		  			ran3 <= {2'b00,ran_from_it[3:2],8'b00000000};
		  			ran4 <= {2'b00,ran_from_it[3:2],12'b000000000000};
		  		end
		  end
		  else if(where == 2'b10)	begin
		    	case(position)
		  		2'b00 : begin
		  			ran2 <= {6'b000000,ran_from_it[1:0]};
		  			ran3 <= {10'b0000000000,ran_from_it[1:0]};
		  			ran4 <= {10'b0000000000,ran_from_it[1:0],4'b0000};
		  		end
		  		2'b01 : begin
		  			ran2 <= {6'b000000,ran_from_it[2:1]};
		  			ran3 <= {10'b0000000000,ran_from_it[2:1]};
		  			ran4 <= {10'b0000000000,ran_from_it[2:1],4'b0000};
		  		end
		  		2'b10 : begin
		  			ran2 <= {6'b000000,ran_from_it[3:2]};
		  			ran3 <= {10'b0000000000,ran_from_it[3:2]};
		  			ran4 <= {10'b0000000000,ran_from_it[3:2],4'b0000};
		  		end
		  		2'b11 : begin
		  			ran2 <= {6'b000000,ran_from_it[3:2]};
		  			ran3 <= {10'b0000000000,ran_from_it[3:2]};
		  			ran4 <= {10'b0000000000,ran_from_it[3:2],4'b0000};
		  		end
		  end
		  else if(where == 2'b11)	begin
		    	case(position)
		  		2'b00 : begin
		  			ran2 <= {2'b00,ran_from_it[1:0],4'b0000};
		  			ran3 <= {6'b000000,ran_from_it[1:0],4'b0000};
		  			ran4 <= {14'b00000000000000,ran_from_it[1:0]};
		  		end
		  		2'b01 : begin
		  			ran2 <= {2'b00,ran_from_it[2:1],4'b0000};
		  			ran3 <= {6'b000000,ran_from_it[2:1],4'b0000};
		  			ran4 <= {14'b00000000000000,ran_from_it[2:1]};
		  		end
		  		2'b10 : begin
		  			ran2 <= {2'b00,ran_from_it[3:2],4'b0000};
		  			ran3 <= {6'b000000,ran_from_it[3:2],4'b0000};
		  			ran4 <= {14'b00000000000000,ran_from_it[3:2]};
		  		end
		  		2'b11 : begin
		  			ran2 <= {2'b00,ran_from_it[3:2],4'b0000};
		  			ran3 <= {6'b000000,ran_from_it[3:2],4'b0000};
		  			ran4 <= {14'b00000000000000,ran_from_it[3:2]};
		  		end
		  end
		
		end
	
	end
endmodule