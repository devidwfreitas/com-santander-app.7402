import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.santander.app.cambio.transferenciaexterior.presentation.FavorecidoCambioActivity;

public class gcp implements View.OnKeyListener {
  public gcp(FavorecidoCambioActivity paramFavorecidoCambioActivity) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramKeyEvent.getAction() == 0 && paramInt == 66) {
      ((InputMethodManager)this.a.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0);
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gcp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */