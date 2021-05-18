import java.util.Vector;

public class br {
  public static String a() {
    try {
      for (String str = String.valueOf(System.currentTimeMillis());; str = str.concat("0")) {
        if (str.length() >= 6) {
          for (str = bw.a(str);; str = str.concat("0")) {
            if (str.length() >= 8)
              return str.substring(2); 
          } 
          break;
        } 
      } 
    } catch (Exception exception) {
      throw new Exception("ERRO BRTSMAU GSR");
    } 
  }
  
  public static Vector<String> a(String paramString1, String paramString2) {
    int i = paramString1.indexOf(paramString2);
    Vector<String> vector = new Vector();
    while (true) {
      if (i != 0) {
        String str = paramString1;
        int j = i;
        label15: while (true) {
          if (j <= 0) {
            vector.addElement(str.substring(0));
            return vector;
          } 
          vector.addElement(str.substring(0, j));
          paramString1 = str.substring(j + 1);
          i = paramString1.indexOf(paramString2);
          while (true) {
            j = i;
            str = paramString1;
            if (i == 0) {
              vector.addElement("");
              paramString1 = paramString1.substring(i + 1);
              i = paramString1.indexOf(paramString2);
              continue;
            } 
            continue label15;
          } 
          break;
        } 
        break;
      } 
      vector.addElement("");
      paramString1 = paramString1.substring(i + 1);
      i = paramString1.indexOf(paramString2);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */