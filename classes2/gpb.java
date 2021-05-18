import android.app.Dialog;
import android.view.View;
import com.santander.app.components.view.ClickToSelectEditText;
import java.util.ArrayList;

public class gpb implements View.OnClickListener {
  public gpb(ClickToSelectEditText paramClickToSelectEditText, Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    ClickToSelectEditText.a(this.b, new ArrayList(ClickToSelectEditText.b(this.b)));
    this.a.cancel();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */