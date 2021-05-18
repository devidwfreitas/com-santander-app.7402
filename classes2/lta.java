import android.content.Context;
import android.text.TextUtils;
import com.santander.app.seguros.ui.sinister.activities.SurveyActivity;

public class lta implements gkw<is> {
  public lta(SurveyActivity paramSurveyActivity) {}
  
  public void a(is paramis) {
    if (paramis != null && paramis.a().intValue() == 200) {
      if (!this.a.isFinishing()) {
        SurveyActivity.a(this.a, false);
        if (paramis != null) {
          mhj.a((Context)this.a, "A vistoria foi reagendada com sucesso", new ltb(this));
          return;
        } 
      } 
      return;
    } 
    if (!this.a.isFinishing()) {
      String str;
      SurveyActivity.a(this.a, false);
      SurveyActivity surveyActivity = this.a;
      if (paramis != null && !TextUtils.isEmpty(paramis.b())) {
        str = paramis.b();
      } else {
        str = this.a.getResources().getString(2131297122);
      } 
      mhj.c((Context)surveyActivity, str);
      SurveyActivity.i(this.a).setState(aor.CONTENT);
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lta.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */