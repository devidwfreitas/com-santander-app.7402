import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import android.widget.TextView;
import com.santander.app.RendaFixaAplicacaoActivity;
import java.util.Vector;

public class fmf extends AsyncTask<Void, Void, ftt> {
  private String b = null;
  
  private fuu c = null;
  
  private String d = "";
  
  private boolean e;
  
  private String f = "";
  
  private String g = "";
  
  private ftd h;
  
  private boolean i;
  
  private fmf(RendaFixaAplicacaoActivity paramRendaFixaAplicacaoActivity) {}
  
  protected ftt a(Void... paramVarArgs) {
    if (!this.i)
      try {
        return hat.j().a(this.c, this.e, this.f, RendaFixaAplicacaoActivity.e(this.a), this.d, this.b, this.g);
      } catch (Exception exception) {
        Log.e("ERROR", exception.getMessage());
      }  
    return null;
  }
  
  protected void a(ftt paramftt) {
    if (!this.i) {
      if (RendaFixaAplicacaoActivity.g(this.a) != null && RendaFixaAplicacaoActivity.g(this.a).isShowing()) {
        RendaFixaAplicacaoActivity.g(this.a).cancel();
        RendaFixaAplicacaoActivity.a(this.a, null);
      } 
      if (paramftt.hasError()) {
        hat.d().a((Activity)RendaFixaAplicacaoActivity.c(this.a), paramftt, true);
        return;
      } 
    } else {
      return;
    } 
    this.a.openConfirmar(paramftt, this.b, this.c, this.d, this.e, this.f, this.h);
  }
  
  public void onPreExecute() {
    this.b = naj.l(RendaFixaAplicacaoActivity.k(this.a).getText().toString());
    this.b = naj.a(this.b, 15);
    this.c = (fuu)this.a.v.f().q().a().get(RendaFixaAplicacaoActivity.j(this.a).a());
    int i = RendaFixaAplicacaoActivity.a(this.a).indexOf(RendaFixaAplicacaoActivity.e(this.a));
    this.g = ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(i)).c().g();
    Vector<String> vector = ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(i)).c().f();
    this.h = ((ftq)RendaFixaAplicacaoActivity.a(this.a).get(i)).c();
    if (RendaFixaAplicacaoActivity.n(this.a).a() < vector.size()) {
      this.d = vector.get(RendaFixaAplicacaoActivity.n(this.a).a());
    } else {
      this.d = ((TextView)this.a.findViewById(2131758607)).getText().toString();
      if (this.d == null || this.d.length() == 0 || Integer.parseInt(this.d.trim()) <= 0) {
        this.i = true;
        mxn.d((Activity)RendaFixaAplicacaoActivity.c(this.a), this.a.getResources().getString(2131297707));
      } 
    } 
    if (RendaFixaAplicacaoActivity.o(this.a).a() == 0) {
      this.f = nak.a();
      this.e = false;
    } else if (RendaFixaAplicacaoActivity.o(this.a).a() == 1) {
      this.f = RendaFixaAplicacaoActivity.p(this.a).b();
      this.e = true;
    } 
    this.f = nak.v(this.f);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fmf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */