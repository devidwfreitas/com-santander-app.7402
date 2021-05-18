package android.support.customtabs;

import android.os.IBinder;

class CustomTabsService$1$1 implements IBinder.DeathRecipient {
  public void binderDied() {
    this.this$1.this$0.cleanUpSession(sessionToken);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\customtabs\CustomTabsService$1$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */