import android.view.KeyEvent;
import android.widget.TextView;
import com.santander.app.emprestimo.creditopessoal.presentation.CPSimulacaoActivity;

public class hqx implements TextView.OnEditorActionListener {
  public hqx(CPSimulacaoActivity paramCPSimulacaoActivity) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    if (paramInt == 6)
      CPSimulacaoActivity.d(this.a); 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hqx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */