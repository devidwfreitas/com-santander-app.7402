import android.widget.CompoundButton;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;

public class fzp implements CompoundButton.OnCheckedChangeListener {
  public fzp(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean) {
    if (paramBoolean) {
      CadastrarDebitoAutomaticoActivity.a(this.a).setVisibility(0);
      CadastrarDebitoAutomaticoActivity.a(this.a, 0);
      gui gui = new gui();
      gui.a(CadastrarDebitoAutomaticoActivity.b(this.a));
      CadastrarDebitoAutomaticoActivity.b(this.a).addTextChangedListener(gui);
      return;
    } 
    CadastrarDebitoAutomaticoActivity.a(this.a).setVisibility(8);
    CadastrarDebitoAutomaticoActivity.a(this.a, 1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */