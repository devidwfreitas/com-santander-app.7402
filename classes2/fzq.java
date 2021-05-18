import android.widget.CompoundButton;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;

public class fzq implements CompoundButton.OnCheckedChangeListener {
  public fzq(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      CadastrarDebitoAutomaticoActivity.b(this.a, 0);
      return;
    } 
    CadastrarDebitoAutomaticoActivity.b(this.a, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */