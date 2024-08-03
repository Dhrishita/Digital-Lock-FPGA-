module dldproject(
input [3:0] in, //input password
input clk,skey,
output [1:0] led,
output reg [6:0] seven, //display lock 'L' or unlock 'U'
output reg [1:0] cnt=2'b00,   //count number of wrong passwords
output reg alarm1=1'b0,alarm2=1'b0,alarm3=1'b0 //glows when password is wrong consecutive 3 times
);

reg pass [3:0] ;

always @(in)
begin
if(skey==1)
begin
pass[0]=in[0];
pass[1]=in[1];
pass[2]=in[2];
pass[3]=in[3];
end
end

//parameter pass=4'b0111; //password
//checking whether password is correct or not
assign led[0]=~(pass[0]^in[0])&~(pass[1]^in[1])&~(pass[2]^in[2])&~(pass[3]^in [3]);
assign led[1]=~led[0];


always @(posedge clk)
begin
case (led)
//assigning 'L' or 'U' to seven segment display
2'b10: seven=7'b0001110; //lock
2'b01: seven=7'b0111110; //unlock
endcase

//reset variables
if(cnt==2'b11)
begin
alarm1=0;
alarm2=0;
alarm3=0;
cnt=2'b00;
end

//increasing count on wrong password match

if(led==2'b10) // lock
begin
if(cnt==2'b00)  //count=0
begin
cnt=2'b01;
end

else if(cnt==2'b01) //count=1
begin
cnt=2'b10;
end

else if(cnt==2'b10) //count=2
begin
cnt=2'b11;
alarm1=1;
alarm2=1;
alarm3=1;
end
end

//password matched
else
begin
cnt=2'b00;
alarm1=0;
alarm2=0;
alarm3=0;
end
end
endmodule
