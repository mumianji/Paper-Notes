var db;
var table;
var MyTableFromFit;
var equation = "B_I=L[5e-11]*6.28*($Frequency)-1/(C[6e-12]*6.28*$Frequency)";

//Load in the internal database
db = Quest.loadDatabase("questex16_db");

//Select the parameters, the variables and the frequency to extract
table = db.createTableWith("questex16_Length=2Width=2@@CELL",["Frequency", "B_I"]); 
table.save("questex16_table.dat", "TONYPLOT");

// CAPA MIM model parameter extraction
MyTableFromFit = table.fit(equation, "questex16_capa", "Levenberg-Marquardt", "Default"); 

MyTableFromFit.save("questex16_table2.dat", "TONYPLOT");
MyTableFromFit.save("questex16_table2.csv", "CSV");
MyTableFromFit.writeEquation(equation, "questex16.set");