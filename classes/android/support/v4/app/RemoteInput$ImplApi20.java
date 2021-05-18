package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;

class RemoteInput$ImplApi20 implements RemoteInput$Impl {
  public void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle) {
    RemoteInputCompatApi20.addResultsToIntent((RemoteInputCompatBase$RemoteInput[])paramArrayOfRemoteInput, paramIntent, paramBundle);
  }
  
  public Bundle getResultsFromIntent(Intent paramIntent) {
    return RemoteInputCompatApi20.getResultsFromIntent(paramIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInput$ImplApi20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */