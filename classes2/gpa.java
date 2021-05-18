import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import com.santander.app.components.view.ClickToSelectEditText;

public class gpa implements AdapterView.OnItemClickListener {
  public gpa(ClickToSelectEditText paramClickToSelectEditText, Dialog paramDialog) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    this.b.setText(paramAdapterView.getAdapter().getItem(paramInt).toString());
    if (ClickToSelectEditText.a(this.b) != null) {
      ClickToSelectEditText.a(this.b, (gkz)paramAdapterView.getAdapter().getItem(paramInt));
      ClickToSelectEditText.a(this.b).a((gkz)paramAdapterView.getAdapter().getItem(paramInt), paramInt);
    } 
    this.a.cancel();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gpa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */