//Lab 2
//Jason Hyacinthe

Table table;

Table humanReadableTable = new Table();

void setup() {
  
// Array to store attributes
String [] attributes = new String[18];
attributes[0] = "Animal Name";
attributes[1] = "Hair";
attributes[2] = "Feathers";
attributes[3] = "Eggs";
attributes[4] = "Milk";
attributes[5] = "Airborne";
attributes[6] = "Aquatic";
attributes[7] = "Predator";
attributes[8] = "Toothed";
attributes[9] = "Backbone";
attributes[10] = "Breathes";
attributes[11] = "Venomous";
attributes[12] = "Fins";
attributes[13] = "Legs";
attributes[14] = "Tail";
attributes[15] = "Domestic";
attributes[16] = "Catsize";
attributes[17] = "Type";

// Array to store types
String [] type = new String[18];
type[0] = "String";
type[1] = "Boolean";
type[2] = "Boolean";
type[3] = "Boolean";
type[4] = "Boolean";
type[5] = "Boolean";
type[6] = "Boolean";
type[7] = "Boolean";
type[8] = "Boolean";
type[9] = "Boolean";
type[10] = "Boolean";
type[12] = "Boolean";
type[13] = "Numeric";
type[14] = "Boolean";
type[15] = "Boolean";
type[16] = "Boolean";
type[17] = "Numeric";
  
  table = loadTable("zoo.data.csv", "header");
  
  // Add columns to the table and print the attributes array
  for (int i=0; i < attributes.length; i++){
    humanReadableTable.addColumn(attributes[i]);
    
    // put the array in csv format
    if (i > 0) {
      print ( "," + attributes[i]);
    } else {
      print ("" + attributes[i]);
    }

  }
  // print new line after attributes row
  print("\n");
  
  // Go through the table and see if they are a boolean
  // If it's a boolean and the int is a 1 print true if it's
  // a boolean and the int is a 0 print false  
  for (TableRow row : table.rows()) {
    for (int i=0; i < type.length; i++) {
      if (type[i] == "Boolean" && row.getInt(i) == 1) {
          row.setString(i , "True");
        } 
        else if (type[i] == "Boolean" && row.getInt(i) == 0) {
          row.setString(i , "False");
        }
      
      // print in csv format
      if (i > 0) {
        print ( "," + row.getString(i));
      } else {
        print ("" + row.getString(i));
    }
  }
    
    print("\n");
    humanReadableTable.addRow(row);
  }
  saveTable(humanReadableTable, "data/HumanReadableTable.csv");
}
