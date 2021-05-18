package android.support.design.widget;

import android.support.v4.view.ViewPropertyAnimatorListenerAdapter;
import android.view.View;

class TextInputLayout$3 extends ViewPropertyAnimatorListenerAdapter {
  public void onAnimationEnd(View paramView) {
    TextInputLayout.this.mErrorView.setText(error);
    paramView.setVisibility(4);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\design\widget\TextInputLayout$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */