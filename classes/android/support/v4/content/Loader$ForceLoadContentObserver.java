package android.support.v4.content;

import android.database.ContentObserver;
import android.os.Handler;

public final class Loader$ForceLoadContentObserver extends ContentObserver {
  public Loader$ForceLoadContentObserver() {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications() {
    return true;
  }
  
  public void onChange(boolean paramBoolean) {
    Loader.this.onContentChanged();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\content\Loader$ForceLoadContentObserver.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */