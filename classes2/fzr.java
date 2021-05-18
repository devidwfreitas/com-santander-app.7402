import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.CadastrarDebitoAutomaticoActivity;
import com.santander.app.cadastrodebitoautomatico.activity.ConfirmarDebitoAutomaticoActivity;

public class fzr implements View.OnClickListener {
  public fzr(CadastrarDebitoAutomaticoActivity paramCadastrarDebitoAutomaticoActivity) {}
  
  public void onClick(View paramView) {
    if (CadastrarDebitoAutomaticoActivity.c(this.a)) {
      CadastrarDebitoAutomaticoActivity.d(this.a);
      Intent intent = new Intent((Context)this.a, ConfirmarDebitoAutomaticoActivity.class);
      intent.putExtra("EXTRADADOS", CadastrarDebitoAutomaticoActivity.e(this.a));
      this.a.startActivity(intent);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fzr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */