import android.os.AsyncTask;
import android.util.Log;
import android.widget.EditText;
import com.santander.app.ParcelamentoFacturaActivity;

public class fkb extends AsyncTask<Void, Void, ful> {
  private fkb(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  protected ful a(Void... paramVarArgs) {
    try {
      ghu ghu = this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a());
      if (ParcelamentoFacturaActivity.g(this.a).getCurrentItem() == 0) {
        ful ful = ghu.q();
        if (ful == null)
          return hat.i().b(ghu, "T", "00000000000"); 
      } else {
        ghu.r();
        EditText editText = (EditText)ParcelamentoFacturaActivity.b(this.a).findViewById(2131759221);
        String str = editText.getText().toString();
        if (str == null || str.length() == 0) {
          editText.setText(naj.C(ghu.p().g()));
          str = ghu.p().g();
        } 
        return hat.i().b(ghu, "P", str);
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
    return (ful)exception;
  }
  
  protected void a(ful paramful) {
    ghu ghu;
    if (paramful != null && !paramful.hasError()) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      int i = ParcelamentoFacturaActivity.g(this.a).getCurrentItem();
      if (paramful.t() != null && paramful.t().trim().length() > 0) {
        if (i == 0) {
          mxn.a(ParcelamentoFacturaActivity.b(this.a), paramful.t());
          return;
        } 
        mxn.b(ParcelamentoFacturaActivity.b(this.a), paramful.t());
        ghu = this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a());
        ((EditText)ParcelamentoFacturaActivity.b(this.a).findViewById(2131759221)).setText(naj.C(ghu.p().g()));
        return;
      } 
      if (i == 0) {
        ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).a((ful)ghu);
      } else {
        ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).b((ful)ghu);
      } 
      ParcelamentoFacturaActivity.a(this.a, (ful)ghu);
      this.a.b();
      return;
    } 
    if (ghu == null) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      hat.d().a(ParcelamentoFacturaActivity.b(this.a), ghu, true);
      return;
    } 
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    ful ful1 = new ful();
    if (ParcelamentoFacturaActivity.g(this.a).getCurrentItem() == 0) {
      ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).a(ful1);
    } else {
      ((ghu)this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a())).b(ful1);
    } 
    ParcelamentoFacturaActivity.a(this.a, ful1);
    this.a.b();
    hat.d().a(ParcelamentoFacturaActivity.b(this.a), ful1, false);
  }
  
  public void onPreExecute() {
    if (this.a.a != null) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    this.a.a = mxn.b(ParcelamentoFacturaActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */