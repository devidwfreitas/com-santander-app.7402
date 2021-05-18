package android.support.v7.widget;

import android.support.v4.view.KeyEventCompat;
import android.view.KeyEvent;
import android.view.View;

class SearchView$8 implements View.OnKeyListener {
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent) {
    if (SearchView.this.mSearchable != null) {
      if (SearchView.this.mSearchSrcTextView.isPopupShowing() && SearchView.this.mSearchSrcTextView.getListSelection() != -1)
        return SearchView.this.onSuggestionsKey(paramView, paramInt, paramKeyEvent); 
      if (!SearchView$SearchAutoComplete.access$000(SearchView.this.mSearchSrcTextView) && KeyEventCompat.hasNoModifiers(paramKeyEvent) && paramKeyEvent.getAction() == 1 && paramInt == 66) {
        paramView.cancelLongPress();
        SearchView.this.launchQuerySearch(0, null, SearchView.this.mSearchSrcTextView.getText().toString());
        return true;
      } 
    } 
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$8.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */