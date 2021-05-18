import java.util.regex.Pattern;

public final class etj extends esx {
  private static final Pattern a = Pattern.compile(":/*([^/@]+)@[^/]+");
  
  private final String b;
  
  private final String c;
  
  public etj(String paramString1, String paramString2) {
    super(esy.URI);
    this.b = a(paramString1);
    this.c = paramString2;
  }
  
  private static String a(String paramString) {
    String str = paramString.trim();
    int i = str.indexOf(':');
    if (i >= 0) {
      paramString = str;
      return a(str, i) ? ("http://" + str) : paramString;
    } 
    return "http://" + str;
  }
  
  private static boolean a(String paramString, int paramInt) {
    int j = paramInt + 1;
    int i = paramString.indexOf('/', j);
    paramInt = i;
    if (i < 0)
      paramInt = paramString.length(); 
    return etb.a(paramString, j, paramInt - j);
  }
  
  public String a() {
    return this.b;
  }
  
  public String b() {
    return this.c;
  }
  
  public boolean c() {
    return a.matcher(this.b).find();
  }
  
  public String q() {
    StringBuilder stringBuilder = new StringBuilder(30);
    a(this.c, stringBuilder);
    a(this.b, stringBuilder);
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\etj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */