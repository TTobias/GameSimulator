public class ConfigReader {
  
  
  public ConfigReader () {}
  
  public void readConfig (String config) throws Exception {
    // Read the File
    print("Reading "+config);  
    String[] in = loadStrings(config);
    for (int i = 0 ; i < in.length; i++) {
      println(in[i]);
    }
    
    int[] players = getPlayers(in[1]);
    String[] types = getTypes(in[0]);
    if (contains(types,"card")) { // FOR CARD SPECIFIC VARIABLES
      
    }
    if (contains(types,"board")) { // FOR BOARD SPECIFIC VARIABLES
      
    }
    if (contains(types,"dice")) { // FOR DICE SPECIFIC VARIABLES
      
    }
    
  }
  
  
  String[] getTypes (String in) throws Exception{
    String[] out = split(in, ' ');
    if (!out[0].equals("types")) {
      throw new Exception();
    }
    
    for (int i=1; i<out.length; i++) {
      if (!(out[i].equals("card") || out[i].equals("dice") ||out[i].equals("board"))) {
        throw new Exception();
      }
    }
    return subset(out, 1, out.length-1);
  }
  
  
  String[] getPlayers (String in) throws Exception{
    String tmp = split(in, " = ");
    if (!tmp[0].equals("PlayerAmount")) {
      throw new Exception;
    }
    
      /////////// find  = x, = [x,y] = {x,y...,z}
  }
  
  boolean contains (String[] in, String val) {
    for (int i=0; i<in.length; i++) {
      if (in[i].equals(val)) {
        return true;
      }
    }
    return false;
  }
}
