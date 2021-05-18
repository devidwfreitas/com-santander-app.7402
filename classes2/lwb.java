import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.SinisterDetailActivity;

class lwb implements kxl<kwd> {
  lwb(lwa paramlwa) {}
  
  public void a(kwd paramkwd) {
    if (lvz.b(this.a.a).isFinishing())
      return; 
    (lvz.b(this.a.a)).b.setState(aor.CONTENT);
    if (paramkwd != null) {
      String str;
      if (paramkwd.b() == null) {
        lvz.d(this.a.a);
        return;
      } 
      SinisterDetailActivity sinisterDetailActivity = lvz.b(this.a.a);
      if (!TextUtils.isEmpty(paramkwd.a())) {
        str = paramkwd.a();
      } else {
        str = this.a.a.getResources().getString(2131297122);
      } 
      mhj.c((Context)sinisterDetailActivity, str);
      return;
    } 
    mhj.c((Context)lvz.b(this.a.a), this.a.a.getResources().getString(2131297122));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lwb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */