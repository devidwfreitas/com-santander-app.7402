package android.support.v4.widget;

import android.content.Context;
import android.view.View;

class SearchViewCompat$SearchViewCompatIcsImpl extends SearchViewCompat$SearchViewCompatHoneycombImpl {
  public View newSearchView(Context paramContext) {
    return SearchViewCompatIcs.newSearchView(paramContext);
  }
  
  public void setImeOptions(View paramView, int paramInt) {
    checkIfLegalArg(paramView);
    SearchViewCompatIcs.setImeOptions(paramView, paramInt);
  }
  
  public void setInputType(View paramView, int paramInt) {
    checkIfLegalArg(paramView);
    SearchViewCompatIcs.setInputType(paramView, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompat$SearchViewCompatIcsImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */