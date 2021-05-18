import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.santander.app.cadastrocanal.activity.QuizStartActivity;
import com.santander.app.homenaologada.presentation.HomeActivity;

public class fxt implements View.OnClickListener {
  public fxt(QuizStartActivity paramQuizStartActivity, int paramInt, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    if (this.a != 2) {
      Intent intent = new Intent((Context)QuizStartActivity.d(this.c), HomeActivity.class);
      intent.putExtra("reopen", true);
      QuizStartActivity.d(this.c).startActivity(intent);
      return;
    } 
    this.b.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\fxt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */