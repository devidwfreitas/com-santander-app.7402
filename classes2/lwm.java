import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;

class lwm implements lxq {
  lwm(lwk paramlwk, kvs paramkvs) {}
  
  public void a(String paramString) {
    String str;
    if (!TextUtils.isEmpty(paramString)) {
      str = lwk.a(this.b, 500, 599, this.a.a());
      if (str == null) {
        mhj.c((Context)lwk.a(this.b), this.b.getResources().getString(2131297122));
        return;
      } 
    } else {
      return;
    } 
    if (str.equalsIgnoreCase("")) {
      mhj.c((Context)lwk.a(this.b), this.b.getResources().getString(2131297360));
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
    lwk.a(this.b, kwk);
    Intent intent = new Intent((Context)lwk.a(this.b), ScanDocumentActivity.class);
    this.b.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */