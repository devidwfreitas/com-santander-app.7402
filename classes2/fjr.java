import android.view.KeyEvent;
import android.widget.TextView;
import com.santander.app.ParcelamentoFacturaActivity;

public class fjr implements TextView.OnEditorActionListener {
  public fjr(ParcelamentoFacturaActivity paramParcelamentoFacturaActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 6 || (paramKeyEvent != null && paramKeyEvent.getAction() == 0 && paramKeyEvent.getKeyCode() == 66)) {
      this.a.a();
      return true;
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fjr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */