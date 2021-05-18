import android.view.View;
import com.santander.app.components.view.appbarsearchview.SearchViewAppBar;

public class gsi implements View.OnFocusChangeListener {
  public gsi(SearchViewAppBar paramSearchViewAppBar) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (paramBoolean)
      this.a.b((View)SearchViewAppBar.b(this.a)); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gsi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */