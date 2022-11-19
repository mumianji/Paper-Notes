var table;
var complex_table_S;
var complex_table_Y;

table = Quest.readTableFromFile("questex13_S_simu.csv", "CSV");

//Build a table with S11,S12,S21,S22 complex numbers
complex_table_S = Quest.complexTableFrom (table, "Frequency", ["S_1_1","S_1_2","S_2_1","S_2_2"]);
complex_table_S.save("complex_table.csv", "CSV");

//Calculate Y from S
complex_table_Y = Quest.convertS2Y (complex_table_S,50);
complex_table_Y.save("questex13_S_to_Y_table.csv", "CSV");
complex_table_Y.save("questex13_S_to_Y_table.dat", "TONYPLOT");


