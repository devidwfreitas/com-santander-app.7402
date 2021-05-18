package android.support.design.widget;

import android.view.View;

class Snackbar$1 implements View.OnClickListener {
  public void onClick(View paramView) {
    listener.onClick(paramView);
    Snackbar.this.dispatchDismiss(1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\Snackbar$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */