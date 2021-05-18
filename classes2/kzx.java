import android.text.TextUtils;
import com.santander.app.seguros.ui.assistance.activities.AssistanceActivity;

public class kzx implements lcx {
  public kzx(AssistanceActivity paramAssistanceActivity) {}
  
  public void a(kon paramkon) {
    if (paramkon.d().equals("2") || paramkon.d().equals("3")) {
      if (TextUtils.isEmpty(kof.a(AssistanceActivity.d(this.a), AssistanceActivity.e(this.a).b(), AssistanceActivity.b(this.a).g().a()))) {
        lbi.a().show(this.a.getSupportFragmentManager(), null);
        return;
      } 
      AssistanceActivity.a(this.a, paramkon);
      AssistanceActivity.a(this.a, true, AssistanceActivity.f(this.a).d());
      return;
    } 
    if (paramkon.d().equals("1")) {
      lbi.a().show(this.a.getSupportFragmentManager(), null);
      return;
    } 
    AssistanceActivity.a(this.a, paramkon);
    AssistanceActivity.a(this.a, true, AssistanceActivity.f(this.a).d());
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\kzx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */