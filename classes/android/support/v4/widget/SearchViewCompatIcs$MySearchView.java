package android.support.v4.widget;

import android.content.Context;
import android.widget.SearchView;

public class SearchViewCompatIcs$MySearchView extends SearchView {
  public SearchViewCompatIcs$MySearchView(Context paramContext) {
    super(paramContext);
  }
  
  public void onActionViewCollapsed() {
    setQuery("", false);
    super.onActionViewCollapsed();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\SearchViewCompatIcs$MySearchView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */