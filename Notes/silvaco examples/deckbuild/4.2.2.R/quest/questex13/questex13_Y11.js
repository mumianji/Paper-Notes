var db;
var table;
var complex_table;

table = Quest.readTableFromFile("questex13_S_simu.csv", "CSV");

///Build a table with S11,S12,S21,S22 complex numbers
complex_table = Quest.complexTableFrom (table, "Frequency", ["S_1_1","S_1_2","S_2_1","S_2_2"]);

//Creation of Y11 complex from S11
//y11 = ((1-S11)*(1+S22)+S12*S21) / ((1+S11)*(1+S22)-S12*S21)

//Calculate 1-S11 
//Should be done in two steps
//First -S11
complex_table.columnScalarOp ("S_1_1","-S_1_1","*",-1);

//Second -S11+1
complex_table.columnScalarOp ("-S_1_1","1-S_1_1","+",1);

//Calculate 1+S11
complex_table.columnScalarOp ("S_1_1","1+S_1_1","+",1);

//Calculate 1+S22
complex_table.columnScalarOp ("S_2_2","1+S_2_2","+",1);


//Calculate S12*S21
complex_table.columnVectorOp ("S_2_1","S_1_2","S_1_2*S_2_1","*");

//Calculate (1-S11)*(1+S22)
complex_table.columnVectorOp ("1-S_1_1","1+S_2_2","1-S_1_1*1+S_2_2","*");

//Calculate (1+S11)*(1+S22)
complex_table.columnVectorOp ("1+S_1_1","1+S_2_2","1+S_1_1*1+S_2_2","*");

//Calculate ((1-S11)*(1+S22)+S12*S21)=A
complex_table.columnVectorOp ("1-S_1_1*1+S_2_2","S_1_2*S_2_1","A","+");

//Calculate ((1+S11)*(1+S22)-S12*S21)=B
complex_table.columnVectorOp ("1+S_1_1*1+S_2_2","S_1_2*S_2_1","B","-");


//Calculate Y11=A/B*Z0
complex_table.columnVectorOp ("A","B","A/B","/");
complex_table.columnScalarOp ("A/B","Y_1_1","/",50);

complex_table.save("questex13_complex_table_Y11.csv", "CSV");
complex_table.save("questex13_complex_table_Y11.dat", "TONYPLOT");

