package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.RemoteInput;
import android.content.Intent;
import android.os.Bundle;
import android.support.annotation.RequiresApi;

@TargetApi(20)
@RequiresApi(20)
class RemoteInputCompatApi20 {
  static void addResultsToIntent(RemoteInputCompatBase$RemoteInput[] paramArrayOfRemoteInputCompatBase$RemoteInput, Intent paramIntent, Bundle paramBundle) {
    RemoteInput.addResultsToIntent(fromCompat(paramArrayOfRemoteInputCompatBase$RemoteInput), paramIntent, paramBundle);
  }
  
  static RemoteInput[] fromCompat(RemoteInputCompatBase$RemoteInput[] paramArrayOfRemoteInputCompatBase$RemoteInput) {
    if (paramArrayOfRemoteInputCompatBase$RemoteInput == null)
      return null; 
    RemoteInput[] arrayOfRemoteInput = new RemoteInput[paramArrayOfRemoteInputCompatBase$RemoteInput.length];
    for (int i = 0; i < paramArrayOfRemoteInputCompatBase$RemoteInput.length; i++) {
      RemoteInputCompatBase$RemoteInput remoteInputCompatBase$RemoteInput = paramArrayOfRemoteInputCompatBase$RemoteInput[i];
      arrayOfRemoteInput[i] = (new RemoteInput.Builder(remoteInputCompatBase$RemoteInput.getResultKey())).setLabel(remoteInputCompatBase$RemoteInput.getLabel()).setChoices(remoteInputCompatBase$RemoteInput.getChoices()).setAllowFreeFormInput(remoteInputCompatBase$RemoteInput.getAllowFreeFormInput()).addExtras(remoteInputCompatBase$RemoteInput.getExtras()).build();
    } 
    return arrayOfRemoteInput;
  }
  
  static Bundle getResultsFromIntent(Intent paramIntent) {
    return RemoteInput.getResultsFromIntent(paramIntent);
  }
  
  static RemoteInputCompatBase$RemoteInput[] toCompat(RemoteInput[] paramArrayOfRemoteInput, RemoteInputCompatBase$RemoteInput$Factory paramRemoteInputCompatBase$RemoteInput$Factory) {
    if (paramArrayOfRemoteInput == null)
      return null; 
    RemoteInputCompatBase$RemoteInput[] arrayOfRemoteInputCompatBase$RemoteInput = paramRemoteInputCompatBase$RemoteInput$Factory.newArray(paramArrayOfRemoteInput.length);
    for (int i = 0; i < paramArrayOfRemoteInput.length; i++) {
      RemoteInput remoteInput = paramArrayOfRemoteInput[i];
      arrayOfRemoteInputCompatBase$RemoteInput[i] = paramRemoteInputCompatBase$RemoteInput$Factory.build(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), remoteInput.getExtras());
    } 
    return arrayOfRemoteInputCompatBase$RemoteInput;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInputCompatApi20.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */