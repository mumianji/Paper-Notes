var db;
var table;
var MyTableFromFit;
var equation = "B_I=L[1e-12]*6.28*($Frequency)-1/(C[8e-14]*6.28*$Frequency)";

//Load in the internal database
db = Quest.loadDatabase("questex12_db");


//Select the parameters, the variables and the frequency to extract
table = db.createTableWith("questex12@@MIM3D",["Frequency", "B_I"]); 
table.save("questex12_table.dat", "TONYPLOT");

// CAPA MIM model parameter extraction
MyTableFromFit = table.fit(equation, "questex12_capa", "Levenberg-Marquardt", "Default"); 

MyTableFromFit.save("questex12_table.dat", "TONYPLOT");
MyTableFromFit.save("questex12_table.csv", "CSV");
