public class gki {
  private static gki a = null;
  
  private boolean b;
  
  private String c = "https://chat.santander.com.br";
  
  public static gki a() {
    if (a == null)
      a = new gki(); 
    return a;
  }
  
  public static void a(gki paramgki) {
    a = paramgki;
  }
  
  public void a(String paramString) {
    this.c = paramString;
  }
  
  public void a(boolean paramBoolean) {
    this.b = paramBoolean;
  }
  
  public String b() {
    return this.c;
  }
  
  public boolean c() {
    return this.b;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */