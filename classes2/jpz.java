import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.homenaologada.presentation.HomeActivity;
import com.santander.app.meuperfil.activity.SenhaAcessoActivity;

public class jpz implements View.OnClickListener {
  public jpz(SenhaAcessoActivity paramSenhaAcessoActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)SenhaAcessoActivity.a(this.a), HomeActivity.class);
    intent.putExtra("reopen", true);
    SenhaAcessoActivity.a(this.a).startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */