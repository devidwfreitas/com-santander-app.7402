import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;

public class fzv implements View.OnClickListener {
  public fzv(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarDebitoAutomaticoActivity.l(this.a).getCurrentItem() > 0)
      CadastrarDebitoAutomaticoActivity.l(this.a).setCurrentItem(CadastrarDebitoAutomaticoActivity.l(this.a).getCurrentItem() - 1, true); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */