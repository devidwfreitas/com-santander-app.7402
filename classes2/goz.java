import android.app.Dialog;
import android.view.View;
import com.santander.app.components.view.ClickToSelectEditText;

public class goz implements View.OnClickListener {
  public goz(ClickToSelectEditText paramClickToSelectEditText) {}
  
  public void onClick(View paramView) {
    Dialog dialog = new Dialog(this.a.getContext());
    ClickToSelectEditText.a(this.a, dialog).show();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\goz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */