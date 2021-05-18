import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

class hax implements View.OnClickListener {
  hax(hav paramhav, Activity paramActivity) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent((Context)this.a, QuizStartActivity.class);
    intent.putExtra("Nome", mzr.g());
    intent.putExtra("cpf", mzr.m());
    intent.putExtra("cadastro", false);
    this.a.startActivity(intent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\hax.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */