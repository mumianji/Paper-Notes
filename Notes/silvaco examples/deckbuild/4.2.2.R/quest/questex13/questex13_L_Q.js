var table;
var complex_table

table = Quest.readTableFromFile("questex13_complex_table_Y11.csv", "CSV");

//Build a table with S11,S12,S21,S22 complex numbers
complex_table = Quest.complexTableFrom (table, "Frequency", ["Y_1_1"]);
complex_table.save("complex_table.csv", "CSV");

// Creation of Y11 complex from S11
//L = 1/w*Im(1/Y11)
//Q = I(1/Y11)/R(1/Y11)

//Calculate 1/Y11
complex_table.columnScalarOp ("Y_1_1","powY_1_1","^",-1);

//Calculate Imag(1/Y11)
complex_table.complexFuncOp ("powY_1_1","Y_1_1_Imag","imag");

//Calculate real(1/Y11)
complex_table.complexFuncOp ("powY_1_1","Y_1_1_Real","real");

//Calculate Q
complex_table.columnVectorOp ("Y_1_1_Imag","Y_1_1_Real","Q","/");

complex_table.save("questex13_complex_table_Q.csv", "CSV");
complex_table.save("questex13_complex_table_Q.dat", "TONYPLOT");

// 2*pi*freq
complex_table.columnScalarOp ("Frequency","2freq","*",2);
complex_table.columnScalarOp ("2freq","W","*",3.14);

//L
complex_table.columnVectorOp ("Y_1_1_Imag","W","L","/");
complex_table.save("questex13_complex_table_L.csv", "CSV");
complex_table.save("questex13_complex_table_L.dat", "TONYPLOT");

