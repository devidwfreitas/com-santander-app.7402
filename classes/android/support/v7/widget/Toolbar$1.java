package android.support.v7.widget;

import android.view.MenuItem;

class Toolbar$1 implements ActionMenuView$OnMenuItemClickListener {
  public boolean onMenuItemClick(MenuItem paramMenuItem) {
    return (Toolbar.this.mOnMenuItemClickListener != null) ? Toolbar.this.mOnMenuItemClickListener.onMenuItemClick(paramMenuItem) : false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\widget\Toolbar$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */