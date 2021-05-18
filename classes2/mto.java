import android.view.View;
import com.santander.app.transfergolden.presentation.LeituraInfoEditText;

public class mto implements View.OnFocusChangeListener {
  public mto(LeituraInfoEditText paramLeituraInfoEditText, View.OnFocusChangeListener paramOnFocusChangeListener) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (this.a != null)
      this.a.onFocusChange((View)this.b, paramBoolean); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mto.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */