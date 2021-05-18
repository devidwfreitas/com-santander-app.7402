import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

class lwy implements lxq {
  lwy(lwr paramlwr) {}
  
  public void a(String paramString) {
    String str;
    if (!TextUtils.isEmpty(paramString) && lwr.a(this.a) > -1) {
      kvs kvs = lwr.b(this.a).get(lwr.a(this.a));
      str = lwr.a(this.a, 500, 599, kvs.a());
      if (str == null) {
        mhj.c((Context)lwr.c(this.a), this.a.getResources().getString(2131297122));
        return;
      } 
    } else {
      return;
    } 
    if (str.equalsIgnoreCase("")) {
      mhj.c((Context)lwr.c(this.a), this.a.getResources().getString(2131297360));
      return;
    } 
    kuw kuw = new kuw();
    kuw.c(str);
    kuw.d(paramString);
    kuw.e("E");
    kwk kwk = new kwk();
    kwk.b(paramString);
    kwk.a(kuw);
    kwk.a(-1);
    lwr.a(this.a, kwk);
    Intent intent = new Intent((Context)lwr.c(this.a), ScanDocumentActivity.class);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */