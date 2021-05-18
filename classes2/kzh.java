import android.text.TextUtils;

class kzh implements gkw<is> {
  kzh(kzf paramkzf, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    ktp ktp;
    String str;
    if (paramis == null) {
      this.a.a("");
      return;
    } 
    if (paramis.a() != null && paramis.a().intValue() == 200) {
      ktp = mys.a().<ktp>a(paramis.c().toString(), ktp.class);
      this.b.a(ktp);
      return;
    } 
    kxl<String> kxl1 = this.a;
    if (!TextUtils.isEmpty(ktp.b())) {
      str = ktp.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */