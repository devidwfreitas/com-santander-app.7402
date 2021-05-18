package android.support.v7.view;

import android.view.Menu;
import android.view.MenuItem;

public interface ActionMode$Callback {
  boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem);
  
  boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu);
  
  void onDestroyActionMode(ActionMode paramActionMode);
  
  boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v7\view\ActionMode$Callback.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */