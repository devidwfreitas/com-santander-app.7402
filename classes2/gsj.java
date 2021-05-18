import android.view.View;
import com.santander.app.components.view.appbarsearchview.SearchViewAppBar;

public class gsj implements View.OnClickListener {
  public gsj(SearchViewAppBar paramSearchViewAppBar) {}
  
  public void onClick(View paramView) {
    if (paramView == SearchViewAppBar.c(this.a)) {
      this.a.c();
      return;
    } 
    if (paramView == SearchViewAppBar.d(this.a)) {
      SearchViewAppBar.b(this.a).setText(null);
      return;
    } 
    if (paramView == SearchViewAppBar.e(this.a)) {
      this.a.c();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */