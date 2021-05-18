package android.support.v7.widget;

import android.view.View;
import android.view.inputmethod.InputMethodManager;

class SearchView$1 implements Runnable {
  public void run() {
    InputMethodManager inputMethodManager = (InputMethodManager)SearchView.this.getContext().getSystemService("input_method");
    if (inputMethodManager != null)
      SearchView.HIDDEN_METHOD_INVOKER.showSoftInputUnchecked(inputMethodManager, (View)SearchView.this, 0); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */