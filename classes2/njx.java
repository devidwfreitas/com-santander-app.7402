import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Pattern;

public final class njx {
  private static final Pattern a = Pattern.compile("^tealium://.+", 2);
  
  private final Map<String, njq> b;
  
  private final nhp c;
  
  private final nhc d;
  
  public njx(nkj paramnkj, nhp paramnhp) {
    if (paramnkj == null)
      throw new IllegalArgumentException("config must not be null."); 
    this.c = paramnhp;
    if (paramnhp == null)
      throw new IllegalArgumentException(); 
    this.b = new HashMap<String, njq>(1);
    this.b.put("_config", new njs(this.c));
    this.d = paramnkj.o();
  }
  
  private void a(njv paramnjv) {
    String str;
    if (!nip.a())
      throw new UnsupportedOperationException("processRequest must be called in the main thread"); 
    njq njq2 = this.b.get(paramnjv.a());
    njq njq1 = njq2;
    if (njq2 == null) {
      njq2 = d(paramnjv.a());
      njq1 = njq2;
      if (njq2 == null) {
        if (this.d.d())
          this.d.e(nkf.tagbridge_no_command_found, new Object[] { paramnjv.a() }); 
        str = String.format(Locale.ROOT, "No remote command found with id \"%s\"", new Object[] { paramnjv.a() });
        paramnjv.b().a(404).a(str).g();
        return;
      } 
    } 
    this.d.a(nkf.tagbridge_detected_command, new Object[] { paramnjv.a(), paramnjv.b().d() });
    str.a(paramnjv);
  }
  
  public static boolean a(String paramString) {
    return (paramString == null) ? false : a.matcher(paramString).matches();
  }
  
  public static boolean b(String paramString) {
    return paramString.matches("^tealium://_config");
  }
  
  private njq d(String paramString) {
    if ("_http".equals(paramString)) {
      njt njt = new njt();
    } else {
      paramString = null;
    } 
    if (paramString != null)
      this.b.put(paramString.a(), paramString); 
    return (njq)paramString;
  }
  
  public final void a(njq paramnjq) {
    if (!nip.a())
      throw new UnsupportedOperationException("Remote commands must be added in the main thread."); 
    if (paramnjq == null)
      throw new IllegalArgumentException("remoteCommand must not be null."); 
    this.b.put(paramnjq.a(), paramnjq);
  }
  
  public final void b(njq paramnjq) {
    if (!nip.a())
      throw new UnsupportedOperationException("Remote commands must be removed in the main thread."); 
    if (paramnjq == null)
      throw new IllegalArgumentException("remoteCommand must not be null."); 
    this.b.remove(paramnjq.a());
  }
  
  public void c(String paramString) {
    try {
      a(new njv(this.c, paramString));
      return;
    } catch (Throwable throwable) {
      this.d.a(throwable);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */