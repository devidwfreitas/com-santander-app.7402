package android.support.v4.view;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;

@TargetApi(19)
@RequiresApi(19)
class ViewPropertyAnimatorCompatKK {
  public static void setUpdateListener(View paramView, ViewPropertyAnimatorUpdateListener paramViewPropertyAnimatorUpdateListener) {
    ViewPropertyAnimatorCompatKK$1 viewPropertyAnimatorCompatKK$1 = null;
    if (paramViewPropertyAnimatorUpdateListener != null)
      viewPropertyAnimatorCompatKK$1 = new ViewPropertyAnimatorCompatKK$1(paramViewPropertyAnimatorUpdateListener, paramView); 
    paramView.animate().setUpdateListener(viewPropertyAnimatorCompatKK$1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\view\ViewPropertyAnimatorCompatKK.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */