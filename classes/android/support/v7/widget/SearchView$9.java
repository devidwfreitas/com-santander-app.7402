package android.support.v7.widget;

import android.view.KeyEvent;
import android.widget.TextView;

class SearchView$9 implements TextView.OnEditorActionListener {
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent) {
    SearchView.this.onSubmitQuery();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$9.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */