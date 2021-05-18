import android.view.View;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

public class lsz implements View.OnClickListener {
  public lsz(SurveyActivity paramSurveyActivity) {}
  
  public void onClick(View paramView) {
    SurveyActivity.f(this.a).setChecked(true);
    SurveyActivity.e(this.a).setChecked(false);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lsz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */