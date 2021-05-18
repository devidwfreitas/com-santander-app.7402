import android.content.Context;
import android.content.Intent;
import com.santander.app.seguros.ui.assistance.activities.RescheduleAssistanceActivity;

class lby extends lbb {
  lby(lbq paramlbq) {}
  
  public void a() {
    Intent intent = new Intent((Context)this.a.getActivity(), RescheduleAssistanceActivity.class);
    intent.putExtra("ASSISTANCE_TYPE_KEY", lbq.e(this.a).i().b());
    intent.putExtra("ASSISTANCE_NUMBER_KEY", lbq.e(this.a).f());
    this.a.startActivityForResult(intent, 1002);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lby.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */