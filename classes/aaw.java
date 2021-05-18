import android.view.View;
import br.com.santander.investimentoV2.shared.commons.TextWatcherValorBR;

public class aaw implements View.OnFocusChangeListener {
  public aaw(TextWatcherValorBR paramTextWatcherValorBR) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean) {
      TextWatcherValorBR.b(this.a);
      return;
    } 
    TextWatcherValorBR.a(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aaw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */