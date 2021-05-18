import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrodebitoautomatico.activity.CSODebitoAutomaticoActivity;
import com.santander.app.cadastrodebitoautomatico.activity.ConfirmarDebitoAutomaticoActivity;

public class gab implements View.OnClickListener {
  public gab(ConfirmarDebitoAutomaticoActivity paramConfirmarDebitoAutomaticoActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, CSODebitoAutomaticoActivity.class);
    intent.putExtra("EXTRADADOS", ConfirmarDebitoAutomaticoActivity.a(this.a));
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */