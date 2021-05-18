import android.view.KeyEvent;
import android.widget.TextView;
import com.santander.app.cartoes.parcelamentofatura.presentation.ParcelamentoFaturaActivity;

public class gis implements TextView.OnEditorActionListener {
  public gis(ParcelamentoFaturaActivity paramParcelamentoFaturaActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    ghv ghv;
    if (ParcelamentoFaturaActivity.a(this.a).getText().toString() == null || ParcelamentoFaturaActivity.a(this.a).getText().toString().equals("")) {
      mxn.d(this.a.i, this.a.getString(2131298209));
      return true;
    } 
    gjl gjl = ParcelamentoFaturaActivity.f(this.a);
    if (ParcelamentoFaturaActivity.b(this.a)) {
      ghw ghw = ParcelamentoFaturaActivity.c(this.a);
    } else {
      ghv = ParcelamentoFaturaActivity.d(this.a);
    } 
    gjl.a((gnb)ghv, ParcelamentoFaturaActivity.e(this.a), "P", ParcelamentoFaturaActivity.a(this.a).getText().toString());
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gis.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */