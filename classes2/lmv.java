import android.content.Context;
import android.text.TextUtils;
import android.view.View;

class lmv implements View.OnClickListener {
  lmv(lmu paramlmu) {}
  
  public void onClick(View paramView) {
    String str;
    boolean bool1;
    boolean bool2 = false;
    ksa ksa = new ksa();
    kqa kqa = new kqa();
    if ((TextUtils.isEmpty(lmu.a(this.a).getText().toString().trim()) && lmu.b(this.a).booleanValue()) || (TextUtils.isEmpty(lmu.c(this.a).getText().toString().trim()) && lmu.d(this.a).booleanValue())) {
      mhj.c((Context)this.a.getActivity(), this.a.getResources().getString(2131297445));
      return;
    } 
    if (!TextUtils.isEmpty(lmu.c(this.a).getText().toString().trim()) && mhj.f(lmu.c(this.a).getText().toString().trim()).length() != 11 && mhj.f(lmu.c(this.a).getText().toString().trim()).length() != 10) {
      mhj.c((Context)this.a.getActivity(), this.a.getResources().getString(2131297380));
      bool1 = false;
    } else {
      str = mhj.f(lmu.c(this.a).getText().toString().toLowerCase().trim());
      ksa.b(nab.a().b(str));
      bool1 = true;
    } 
    if (!TextUtils.isEmpty(lmu.a(this.a).getText().toString().trim()) && !mhj.c(lmu.a(this.a).getText().toString().trim())) {
      mhj.c((Context)this.a.getActivity(), this.a.getResources().getString(2131297359));
      str = "";
    } else {
      str = lmu.a(this.a).getText().toString().toLowerCase().trim();
      bool2 = true;
    } 
    if (bool1 && bool2) {
      lmu.e(this.a).setState(aor.LOADING);
      kpx kpx = new kpx();
      kqx kqx = new kqx();
      kqx.a(nab.a().b(lmu.f(this.a)));
      kqa.a(nab.a().b(str));
      kqa.b(lmu.g(this.a).d());
      kqa.a(kqx);
      kqa.a(ksa);
      kqa.c(nab.a().b(lmu.h(this.a)));
      kpx.a(lmu.i(this.a));
      kpx.a(kqa);
      lmu.k(this.a).a(kpx, new lmw(this), new lmx(this));
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lmv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */