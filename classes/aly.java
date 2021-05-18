import android.view.View;
import br.com.santander.uisdk.SantanderSwitch;

public class aly implements View.OnClickListener {
  public aly(SantanderSwitch paramSantanderSwitch) {}
  
  public void onClick(View paramView) {
    boolean bool;
    SantanderSwitch santanderSwitch = this.a;
    if (!SantanderSwitch.a(this.a)) {
      bool = true;
    } else {
      bool = false;
    } 
    santanderSwitch.setChecked(bool);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aly.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */