import android.view.KeyEvent;
import android.widget.TextView;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;

public class aav implements TextView.OnEditorActionListener {
  public aav(TextWatcherValorBR paramTextWatcherValorBR) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if ((paramKeyEvent != null && paramKeyEvent.getKeyCode() == 66) || paramInt == 5)
      TextWatcherValorBR.a(this.a); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aav.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */