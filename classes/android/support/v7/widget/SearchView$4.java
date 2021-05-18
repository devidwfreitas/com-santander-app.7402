package android.support.v7.widget;

import android.view.View;

class SearchView$4 implements View.OnFocusChangeListener {
  public void onFocusChange(View paramView, boolean paramBoolean) {
    if (SearchView.this.mOnQueryTextFocusChangeListener != null)
      SearchView.this.mOnQueryTextFocusChangeListener.onFocusChange((View)SearchView.this, paramBoolean); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$4.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */