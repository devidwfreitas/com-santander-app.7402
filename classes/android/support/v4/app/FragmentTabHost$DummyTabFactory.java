package android.support.v4.app;

import android.content.Context;
import android.view.View;
import android.widget.TabHost;

class FragmentTabHost$DummyTabFactory implements TabHost.TabContentFactory {
  private final Context mContext;
  
  public FragmentTabHost$DummyTabFactory(Context paramContext) {
    this.mContext = paramContext;
  }
  
  public View createTabContent(String paramString) {
    View view = new View(this.mContext);
    view.setMinimumWidth(0);
    view.setMinimumHeight(0);
    return view;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\FragmentTabHost$DummyTabFactory.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */