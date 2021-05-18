package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Handler;
import android.support.v4.os.CancellationSignal;

class FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl implements FingerprintManagerCompat$FingerprintManagerCompatImpl {
  public void authenticate(Context paramContext, FingerprintManagerCompat$CryptoObject paramFingerprintManagerCompat$CryptoObject, int paramInt, CancellationSignal paramCancellationSignal, FingerprintManagerCompat$AuthenticationCallback paramFingerprintManagerCompat$AuthenticationCallback, Handler paramHandler) {}
  
  public boolean hasEnrolledFingerprints(Context paramContext) {
    return false;
  }
  
  public boolean isHardwareDetected(Context paramContext) {
    return false;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */