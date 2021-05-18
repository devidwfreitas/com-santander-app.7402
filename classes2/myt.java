import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;

public class myt {
  public static void a(Context paramContext, View paramView) {
    if (paramView != null)
      ((InputMethodManager)paramContext.getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\myt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */