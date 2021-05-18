import android.text.TextUtils;

final class njs extends njq {
  private final nhp a;
  
  njs(nhp paramnhp) {
    super("_config", "Java callback for mobile.html information.");
    this.a = paramnhp;
    if (paramnhp == null)
      throw new IllegalArgumentException(); 
  }
  
  protected void a(njr paramnjr) {
    String str = paramnjr.d().optString("trace_id", null);
    if (!TextUtils.isEmpty(str))
      this.a.b(new nif(str, true)); 
    paramnjr.g();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\njs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */