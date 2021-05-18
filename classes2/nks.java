import java.io.File;
import org.json.JSONException;

final class nks implements ngk, njj {
  private final nhp a;
  
  private final File b;
  
  nks(nkj paramnkj, nhp paramnhp) {
    this.b = paramnkj.a();
    this.a = paramnhp;
  }
  
  static nin a(File paramFile) {
    String str = niq.a(new File(paramFile, "mobile_publish_settings.json"));
    try {
      return nin.b(str);
    } catch (nio nio) {
      throw new RuntimeException(nio);
    } 
  }
  
  private void a(ngm paramngm) {
    String str = paramngm.e();
    if (str == null)
      throw new IllegalArgumentException(); 
    niq.a(new File(this.b, "visitor_profile.json"), str);
  }
  
  static ngm b(File paramFile) {
    paramFile = new File(paramFile, "visitor_profile.json");
    if (!paramFile.exists())
      return null; 
    String str = niq.a(paramFile);
    try {
      return ngm.a(str);
    } catch (JSONException jSONException) {
      c(paramFile);
      return null;
    } 
  }
  
  private static void c(File paramFile) {
    paramFile.renameTo(new File(paramFile.getParentFile(), System.nanoTime() + ".old"));
    paramFile.delete();
  }
  
  public void a(ngm paramngm1, ngm paramngm2) {
    if (paramngm2 == null || paramngm2.e() == null)
      return; 
    this.a.b(new nkt(this, paramngm2));
  }
  
  public void a(nin paramnin) {
    if (paramnin.h() != null)
      niq.a(new File(this.b, "mobile_publish_settings.json"), paramnin.h()); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */