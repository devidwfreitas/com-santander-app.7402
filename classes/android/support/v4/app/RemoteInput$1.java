package android.support.v4.app;

import android.os.Bundle;

final class RemoteInput$1 implements RemoteInputCompatBase$RemoteInput$Factory {
  public RemoteInput build(String paramString, CharSequence paramCharSequence, CharSequence[] paramArrayOfCharSequence, boolean paramBoolean, Bundle paramBundle) {
    return new RemoteInput(paramString, paramCharSequence, paramArrayOfCharSequence, paramBoolean, paramBundle);
  }
  
  public RemoteInput[] newArray(int paramInt) {
    return new RemoteInput[paramInt];
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInput$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */