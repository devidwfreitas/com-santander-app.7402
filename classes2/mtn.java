import android.view.View;
import com.santander.app.transfergolden.presentation.LeituraInfoEditText;

public class mtn implements View.OnFocusChangeListener {
  public mtn(LeituraInfoEditText paramLeituraInfoEditText) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean) {
    int i;
    if (paramBoolean) {
      i = 2130839068;
    } else {
      i = 2130839069;
    } 
    LeituraInfoEditText.d(this.a).setImageResource(i);
    if (LeituraInfoEditText.e(this.a) != null)
      LeituraInfoEditText.e(this.a).onFocusChange(paramView, paramBoolean); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mtn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */