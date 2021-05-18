import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.meuperfil.activity.ContaPreferencialActivity;
import com.santander.app.meuperfil.activity.SenhaAcessoActivity;

public class jpa implements View.OnClickListener {
  public jpa(ContaPreferencialActivity paramContaPreferencialActivity) {}
  
  public void onClick(View paramView) {
    if (ContaPreferencialActivity.a(this.a) == 1) {
      Intent intent = new Intent((Context)this.a, SenhaAcessoActivity.class);
      intent.putExtra("Nome", ContaPreferencialActivity.b(this.a));
      intent.putExtra("cpf", ContaPreferencialActivity.c(this.a));
      intent.putExtra("contaPreferencial", ContaPreferencialActivity.d(this.a));
      this.a.startActivity(intent);
      return;
    } 
    if (ContaPreferencialActivity.a(this.a) == 2) {
      (new fzh(new jpb(this), ContaPreferencialActivity.e(this.a), ContaPreferencialActivity.d(this.a))).c((Object[])new Void[0]);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\jpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */