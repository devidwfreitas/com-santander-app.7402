import java.util.regex.Pattern;

public class jqd {
  private final String a = "FACSEG_50300012";
  
  private final String b = "@ERSNE0001";
  
  private final String c = "0";
  
  private final String d = "FACSEG_50300003";
  
  private mip e = (mip)miq.C();
  
  private boolean a(String paramString) {
    int i = 0;
    boolean bool = false;
    while (true) {
      boolean bool1 = bool;
      if (i < paramString.length() - 2) {
        int j = i + 1;
        while (true) {
          bool1 = bool;
          if (j < paramString.length() - 2)
            if (Character.getNumericValue(paramString.charAt(i)) + 1 == Character.getNumericValue(paramString.charAt(j)) && Character.getNumericValue(paramString.charAt(i)) + 2 == Character.getNumericValue(paramString.charAt(j + 1))) {
              bool1 = true;
            } else {
              j++;
              continue;
            }  
          if (bool1)
            return bool1; 
          i++;
          bool = bool1;
        } 
        break;
      } 
      continue;
    } 
  }
  
  private boolean a(String paramString1, String paramString2) {
    boolean bool = false;
    if (paramString1.equals(paramString2.substring(0, 6)))
      bool = true; 
    return bool;
  }
  
  private boolean b(String paramString) {
    boolean bool2 = false;
    int i = 0;
    boolean bool1 = false;
    while (true) {
      boolean bool = bool1;
      if (i < paramString.length()) {
        int j = i + 1;
        while (true)
          i++; 
        break;
      } 
      continue;
    } 
  }
  
  public boolean a(jqk paramjqk) {
    Pattern pattern = Pattern.compile("\\d{6}");
    return (paramjqk.a().length() != 6 || !pattern.matcher(paramjqk.a()).matches() || a(paramjqk.a(), this.e.f().k()));
  }
  
  public boolean a(jqm paramjqm) {
    return paramjqm.a().equals("FACSEG_50300012");
  }
  
  public boolean b(jqk paramjqk) {
    return paramjqk.a().equals(paramjqk.b());
  }
  
  public boolean b(jqm paramjqm) {
    return paramjqm.a().equals("FACSEG_50300003");
  }
  
  public boolean c(jqk paramjqk) {
    return (paramjqk.a() == null || paramjqk.a().isEmpty() || paramjqk.b() == null || paramjqk.b().isEmpty());
  }
  
  public boolean c(jqm paramjqm) {
    return paramjqm.a().equals("0");
  }
  
  public boolean d(jqk paramjqk) {
    return (paramjqk.c().length() == 0 && paramjqk.a().length() == 0 && paramjqk.b().length() == 0);
  }
  
  public boolean d(jqm paramjqm) {
    return paramjqm.a().equals("0");
  }
  
  public boolean e(jqk paramjqk) {
    return (a(paramjqk.a()) && a(paramjqk.b()));
  }
  
  public boolean e(jqm paramjqm) {
    return paramjqm.a().equals("@ERSNE0001");
  }
  
  public boolean f(jqk paramjqk) {
    return (b(paramjqk.a()) && a(paramjqk.b()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jqd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */