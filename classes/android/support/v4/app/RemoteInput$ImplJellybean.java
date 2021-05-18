package android.support.v4.app;

import android.content.Intent;
import android.os.Bundle;

class RemoteInput$ImplJellybean implements RemoteInput$Impl {
  public void addResultsToIntent(RemoteInput[] paramArrayOfRemoteInput, Intent paramIntent, Bundle paramBundle) {
    RemoteInputCompatJellybean.addResultsToIntent((RemoteInputCompatBase$RemoteInput[])paramArrayOfRemoteInput, paramIntent, paramBundle);
  }
  
  public Bundle getResultsFromIntent(Intent paramIntent) {
    return RemoteInputCompatJellybean.getResultsFromIntent(paramIntent);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInput$ImplJellybean.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */