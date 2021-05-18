import android.view.KeyEvent;
import android.widget.TextView;
import com.santander.app.components.view.appbarsearchview.SearchViewAppBar;

public class gsg implements TextView.OnEditorActionListener {
  public gsg(SearchViewAppBar paramSearchViewAppBar) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    SearchViewAppBar.a(this.a);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsg.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */