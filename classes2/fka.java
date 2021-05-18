import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.ParcelamentoFacturaActivity;

public class fka extends AsyncTask<Void, Void, ful> {
  private fka(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  protected ful a(Void... paramVarArgs) {
    try {
      ghu ghu = this.a.v.f().s().d().get(ParcelamentoFacturaActivity.h(this.a).a());
      return hat.i().a(ghu, (fuu)ParcelamentoFacturaActivity.j(this.a), ParcelamentoFacturaActivity.k(this.a), ParcelamentoFacturaActivity.c(this.a).getCurrentItem());
    } catch (Exception exception) {
      Log.e("Error", exception.getMessage());
      return null;
    } 
  }
  
  protected void a(ful paramful) {
    if (paramful != null && !paramful.hasError()) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      if (paramful.e() == null || paramful.e().equals("0")) {
        for (fum fum : paramful.K()) {
          if (fum.a() != null && fum.a().equals("S")) {
            fum.b("true");
            break;
          } 
        } 
        hau.a().a(paramful);
        this.a.c();
        return;
      } 
      hat.d().a(ParcelamentoFacturaActivity.b(this.a), paramful, true);
      return;
    } 
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    hat.d().a(ParcelamentoFacturaActivity.b(this.a), paramful, true);
  }
  
  public void onPreExecute() {
    if (this.a.a != null) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    this.a.a = mxn.b(ParcelamentoFacturaActivity.b(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fka.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */