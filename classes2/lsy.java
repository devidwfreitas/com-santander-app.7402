import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

public class lsy implements View.OnClickListener {
  public lsy(SurveyActivity paramSurveyActivity) {}
  
  public void onClick(View paramView) {
    SurveyActivity.f(this.a).setChecked(false);
    SurveyActivity.e(this.a).setChecked(true);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */