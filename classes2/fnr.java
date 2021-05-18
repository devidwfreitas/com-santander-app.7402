import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

class fnr implements View.OnClickListener {
  fnr(fnp paramfnp, Activity paramActivity, String paramString1, String paramString2, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, QuizStartActivity.class);
    intent.putExtra("Nome", this.b);
    intent.putExtra("cpf", this.c);
    intent.putExtra("cadastro", false);
    this.a.startActivity(intent);
    this.d.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fnr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */