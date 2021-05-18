import android.text.TextUtils;

class kxy implements gkw<is> {
  kxy(kxw paramkxw, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    kpv kpv;
    String str;
    if (paramis != null && paramis.a().intValue() == 200) {
      kpv = mys.a().<kpv>a(paramis.c().toString(), kpv.class);
      this.a.a(kpv);
      return;
    } 
    kxl<String> kxl1 = this.b;
    if (kpv != null && !TextUtils.isEmpty(kpv.b())) {
      str = kpv.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */