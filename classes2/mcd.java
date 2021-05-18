import android.view.View;
import com.santander.app.seguros.ui.widgets.Plan2OffersView;

public class mcd implements View.OnClickListener {
  public mcd(Plan2OffersView paramPlan2OffersView, krz paramkrz, kqp paramkqp) {}
  
  public void onClick(View paramView) {
    Plan2OffersView.a(this.c, mch.PLAN1);
    if (this.a.g() != null && this.a.g().size() > 0) {
      Plan2OffersView.a(this.c, this.a.g());
      Plan2OffersView.a(this.c, mch.PLAN1, Plan2OffersView.a(this.c), this.b);
    } 
    if (this.a.f() != null && this.a.f().size() > 0)
      Plan2OffersView.b(this.c, this.a.f()); 
    this.c.setPlanSelected(mch.PLAN1);
    kqm.INSTANCE.setmCoverages(Plan2OffersView.a(this.c));
    kqm.INSTANCE.setmAssistances(Plan2OffersView.b(this.c));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mcd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */