import android.view.View;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;

public class fxl implements View.OnClickListener {
  public fxl(QuizStartActivity paramQuizStartActivity) {}
  
  public void onClick(View paramView) {
    if (QuizStartActivity.a(this.a)) {
      QuizStartActivity.b(this.a);
      return;
    } 
    frq.d("CADASTRO_RECADASTRO_SENHA_APP", QuizStartActivity.s());
    if (QuizStartActivity.c(this.a)) {
      (new fzd(new fxm(this), QuizStartActivity.d(this.a), QuizStartActivity.a, QuizStartActivity.t())).c((Object[])new Void[0]);
      return;
    } 
    (new fzm(new fxn(this), QuizStartActivity.d(this.a), QuizStartActivity.a, QuizStartActivity.t())).c((Object[])new Void[0]);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */