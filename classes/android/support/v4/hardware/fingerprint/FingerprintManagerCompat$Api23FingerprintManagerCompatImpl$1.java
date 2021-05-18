package android.support.v4.hardware.fingerprint;

final class FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1 extends FingerprintManagerCompatApi23$AuthenticationCallback {
  public void onAuthenticationError(int paramInt, CharSequence paramCharSequence) {
    callback.onAuthenticationError(paramInt, paramCharSequence);
  }
  
  public void onAuthenticationFailed() {
    callback.onAuthenticationFailed();
  }
  
  public void onAuthenticationHelp(int paramInt, CharSequence paramCharSequence) {
    callback.onAuthenticationHelp(paramInt, paramCharSequence);
  }
  
  public void onAuthenticationSucceeded(FingerprintManagerCompatApi23$AuthenticationResultInternal paramFingerprintManagerCompatApi23$AuthenticationResultInternal) {
    callback.onAuthenticationSucceeded(new FingerprintManagerCompat$AuthenticationResult(FingerprintManagerCompat$Api23FingerprintManagerCompatImpl.unwrapCryptoObject(paramFingerprintManagerCompatApi23$AuthenticationResultInternal.getCryptoObject())));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */