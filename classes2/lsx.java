import android.content.Context;
import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

public class lsx implements View.OnClickListener {
  public lsx(SurveyActivity paramSurveyActivity) {}
  
  public void onClick(View paramView) {
    if (!SurveyActivity.e(this.a).isChecked() && !SurveyActivity.f(this.a).isChecked()) {
      mhj.c((Context)this.a, this.a.getResources().getString(2131298537));
      return;
    } 
    SurveyActivity.g(this.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */