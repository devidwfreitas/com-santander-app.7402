package android.support.v4.app;

import android.os.Bundle;

public final class RemoteInput$Builder {
  private boolean mAllowFreeFormInput = true;
  
  private CharSequence[] mChoices;
  
  private Bundle mExtras = new Bundle();
  
  private CharSequence mLabel;
  
  private final String mResultKey;
  
  public RemoteInput$Builder(String paramString) {
    if (paramString == null)
      throw new IllegalArgumentException("Result key can't be null"); 
    this.mResultKey = paramString;
  }
  
  public RemoteInput$Builder addExtras(Bundle paramBundle) {
    if (paramBundle != null)
      this.mExtras.putAll(paramBundle); 
    return this;
  }
  
  public RemoteInput build() {
    return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormInput, this.mExtras);
  }
  
  public Bundle getExtras() {
    return this.mExtras;
  }
  
  public RemoteInput$Builder setAllowFreeFormInput(boolean paramBoolean) {
    this.mAllowFreeFormInput = paramBoolean;
    return this;
  }
  
  public RemoteInput$Builder setChoices(CharSequence[] paramArrayOfCharSequence) {
    this.mChoices = paramArrayOfCharSequence;
    return this;
  }
  
  public RemoteInput$Builder setLabel(CharSequence paramCharSequence) {
    this.mLabel = paramCharSequence;
    return this;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\app\RemoteInput$Builder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */