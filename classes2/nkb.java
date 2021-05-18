public class nkb {
  public static final String a = "view";
  
  public static final String b = "activity";
  
  public static final String c = "interaction";
  
  public static final String d = "derived";
  
  public static final String e = "conversion";
  
  public static String a(String paramString) {
    if (paramString == null)
      return "activity"; 
    byte b = -1;
    switch (paramString.hashCode()) {
      default:
        switch (b) {
          default:
            return "activity";
          case 0:
            return "view";
          case 1:
            return "interaction";
          case 2:
            return "derived";
          case 3:
            break;
        } 
        return "conversion";
      case 3619493:
        if (paramString.equals("view"))
          b = 0; 
      case 1844104722:
        if (paramString.equals("interaction"))
          b = 1; 
      case 1556125213:
        if (paramString.equals("derived"))
          b = 2; 
      case 2043233558:
        break;
    } 
    if (paramString.equals("conversion"))
      b = 3; 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */