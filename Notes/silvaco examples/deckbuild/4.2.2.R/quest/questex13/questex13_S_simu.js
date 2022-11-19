var db;
var table;

//Load in the internal database
db = Quest.loadDatabase("questex13_db");


//Select the parameters, the variables and the frequency to extract
table = db.createTableWith("questex13@@200M2",["Frequency", "S_1_1_R", "S_1_1_I", "S_1_2_R", "S_1_2_I", "S_2_1_R", "S_2_1_I", "S_2_2_R", "S_2_2_I"]); 
table.save("questex13_table.dat", "TONYPLOT");

table.save("questex13_S_simu.csv", "CSV");
table.save("questex13_S_simu.dat", "TONYPLOT");
