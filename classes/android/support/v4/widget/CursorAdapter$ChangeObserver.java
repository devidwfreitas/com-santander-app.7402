package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

class CursorAdapter$ChangeObserver extends ContentObserver {
  CursorAdapter$ChangeObserver() {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications() {
    return true;
  }
  
  public void onChange(boolean paramBoolean) {
    CursorAdapter.this.onContentChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\widget\CursorAdapter$ChangeObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */