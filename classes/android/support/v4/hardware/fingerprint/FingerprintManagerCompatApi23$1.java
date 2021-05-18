package android.support.v4.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;

final class FingerprintManagerCompatApi23$1 extends FingerprintManager.AuthenticationCallback {
  public void onAuthenticationError(int paramInt, CharSequence paramCharSequence) {
    callback.onAuthenticationError(paramInt, paramCharSequence);
  }
  
  public void onAuthenticationFailed() {
    callback.onAuthenticationFailed();
  }
  
  public void onAuthenticationHelp(int paramInt, CharSequence paramCharSequence) {
    callback.onAuthenticationHelp(paramInt, paramCharSequence);
  }
  
  public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult paramAuthenticationResult) {
    callback.onAuthenticationSucceeded(new FingerprintManagerCompatApi23$AuthenticationResultInternal(FingerprintManagerCompatApi23.access$000(paramAuthenticationResult.getCryptoObject())));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompatApi23$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */