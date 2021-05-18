import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.CadastramentoTransOkActivity;
import com.santander.app.CadastramentoValidacionActivity;

public class fhb extends AsyncTask<Void, Void, fuk> {
  private fhb(CadastramentoValidacionActivity paramCadastramentoValidacionActivity) {}
  
  protected fuk a(Void... paramVarArgs) {
    fuk fuk;
    try {
      ghu ghu = this.a.v.f().s().d().get(CadastramentoValidacionActivity.b(this.a));
      fuk = ghu.n();
      if (fuk == null) {
        CadastramentoValidacionActivity.a(this.a, ((fun)((ghu)this.a.v.f().s().d().get(CadastramentoValidacionActivity.b(this.a))).m().g().get(CadastramentoValidacionActivity.c(this.a))).c());
        return hat.i().a(ghu, CadastramentoValidacionActivity.d(this.a));
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
    return fuk;
  }
  
  protected void a(fuk paramfuk) {
    if (this.a.a != null && this.a.a.isShowing()) {
      this.a.a.cancel();
      this.a.a = null;
    } 
    if (paramfuk == null) {
      hat.d().a(CadastramentoValidacionActivity.a(this.a), paramfuk, true, false);
      return;
    } 
    if (paramfuk.hasError()) {
      paramfuk = new fuk();
      ((ghu)this.a.v.f().s().d().get(CadastramentoValidacionActivity.b(this.a))).a(paramfuk);
      hat.d().a(CadastramentoValidacionActivity.a(this.a), paramfuk, false, false);
      return;
    } 
    if (!paramfuk.b().equalsIgnoreCase("0")) {
      if (this.a.a != null && this.a.a.isShowing()) {
        this.a.a.cancel();
        this.a.a = null;
      } 
      hat.d().a(CadastramentoValidacionActivity.a(this.a), paramfuk.d());
      return;
    } 
    ((ghu)this.a.v.f().s().d().get(CadastramentoValidacionActivity.b(this.a))).a(paramfuk);
    Intent intent = new Intent(this.a.getApplicationContext(), CadastramentoTransOkActivity.class);
    intent.putExtra("strSeqEnd", CadastramentoValidacionActivity.c(this.a));
    intent.putExtra("numCartao", CadastramentoValidacionActivity.b(this.a));
    this.a.startActivity(intent);
  }
  
  public void onPreExecute() {
    this.a.a = mxn.b(CadastramentoValidacionActivity.a(this.a));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fhb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */