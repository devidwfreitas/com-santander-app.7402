import android.text.TextUtils;

class kxs implements gkw<is> {
  kxs(kxn paramkxn, kxl paramkxl1, kxl paramkxl2) {}
  
  public void a(is paramis) {
    String str;
    if (paramis == null) {
      kxl<String> kxl2 = this.a;
      if (!TextUtils.isEmpty(paramis.b())) {
        str = paramis.b();
      } else {
        str = "";
      } 
      kxl2.a(str);
      return;
    } 
    if (str.a() != null && str.a().intValue() == 200) {
      try {
        if (str.c().isNull("scheduling") || str.c().getJSONObject("scheduling").isNull("number")) {
          String str1;
          kxl<String> kxl2 = this.a;
          if (!TextUtils.isEmpty(str.b())) {
            str1 = str.b();
          } else {
            str1 = "";
          } 
          kxl2.a(str1);
          return;
        } 
      } catch (Exception exception) {
        exception.printStackTrace();
        kxl<String> kxl2 = this.a;
        if (!TextUtils.isEmpty(str.b())) {
          str = str.b();
        } else {
          str = "";
        } 
        kxl2.a(str);
        return;
      } 
      this.b.a(str.c().getJSONObject("scheduling").getString("number"));
      return;
    } 
    kxl<String> kxl1 = this.a;
    if (!TextUtils.isEmpty(str.b())) {
      str = str.b();
    } else {
      str = "";
    } 
    kxl1.a(str);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kxs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */