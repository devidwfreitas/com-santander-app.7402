package android.support.v7.widget;

class SearchView$3 implements Runnable {
  public void run() {
    if (SearchView.this.mSuggestionsAdapter != null && SearchView.this.mSuggestionsAdapter instanceof SuggestionsAdapter)
      SearchView.this.mSuggestionsAdapter.changeCursor(null); 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\SearchView$3.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */