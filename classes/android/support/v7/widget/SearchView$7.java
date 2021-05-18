package android.support.v7.widget;

import android.view.View;

class SearchView$7 implements View.OnClickListener {
  public void onClick(View paramView) {
    if (paramView == SearchView.this.mSearchButton) {
      SearchView.this.onSearchClicked();
      return;
    } 
    if (paramView == SearchView.this.mCloseButton) {
      SearchView.this.onCloseClicked();
      return;
    } 
    if (paramView == SearchView.this.mGoButton) {
      SearchView.this.onSubmitQuery();
      return;
    } 
    if (paramView == SearchView.this.mVoiceButton) {
      SearchView.this.onVoiceClicked();
      return;
    } 
    if (paramView == SearchView.this.mSearchSrcTextView) {
      SearchView.this.forceSuggestionQuery();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$7.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */