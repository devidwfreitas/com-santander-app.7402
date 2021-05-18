package android.support.v7.app;

import android.support.v7.widget.Toolbar;
import android.view.MenuItem;

class ToolbarActionBar$2 implements Toolbar.OnMenuItemClickListener {
  public boolean onMenuItemClick(MenuItem paramMenuItem) {
    return ToolbarActionBar.this.mWindowCallback.onMenuItemSelected(0, paramMenuItem);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\app\ToolbarActionBar$2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */