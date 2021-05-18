import android.os.AsyncTask;
import android.util.Log;
import com.santander.app.investimentos.presentation.SemProdutoActivity;

public class jkm extends AsyncTask<Void, Void, ftc> {
  private jkm(SemProdutoActivity paramSemProdutoActivity) {}
  
  protected ftc a(Void... paramVarArgs) {
    try {
      ftc ftc = SemProdutoActivity.a(this.a);
      if (ftc != null) {
        ftc ftc1 = ftc;
        if (ftc.a().size() > 0)
          ftc1 = hat.j().c(); 
        return ftc1;
      } 
    } catch (Exception exception) {
      Log.e("Error", exception.toString());
      return null;
    } 
    return null;
  }
  
  protected void a(ftc paramftc) {
    if (SemProdutoActivity.b(this.a) != null && SemProdutoActivity.b(this.a).isShowing()) {
      SemProdutoActivity.b(this.a).cancel();
      SemProdutoActivity.a(this.a, null);
    } 
    if (paramftc == null) {
      hat.d().a(this.a.i, paramftc, true);
      return;
    } 
    if (paramftc.hasError()) {
      hat.d().a(this.a.i, paramftc, true);
      return;
    } 
    SemProdutoActivity.a(this.a, paramftc);
    this.a.a(paramftc);
  }
  
  public void onPreExecute() {
    SemProdutoActivity.a(this.a, mxn.b(this.a.i));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jkm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */