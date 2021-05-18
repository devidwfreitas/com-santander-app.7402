import android.support.design.widget.TabLayout;
import com.santander.app.seguros.ui.sinister.activities.MySinisterActivity;
import java.util.List;

public class lqp implements TabLayout.OnTabSelectedListener {
  public lqp(MySinisterActivity paramMySinisterActivity, List paramList) {}
  
  public void onTabReselected(TabLayout.Tab paramTab) {}
  
  public void onTabSelected(TabLayout.Tab paramTab) {
    MySinisterActivity.a(this.b).setCurrentItem(paramTab.getPosition());
    if (this.a != null && this.a.size() > 0)
      MySinisterActivity.b(this.b).setTabTextColors(this.b.getResources().getColor(2131623937), this.b.getResources().getColor(2131623937)); 
  }
  
  public void onTabUnselected(TabLayout.Tab paramTab) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lqp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */