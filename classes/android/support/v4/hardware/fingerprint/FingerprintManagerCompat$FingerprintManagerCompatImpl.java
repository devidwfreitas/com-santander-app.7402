package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Handler;
import android.support.v4.os.CancellationSignal;

interface FingerprintManagerCompat$FingerprintManagerCompatImpl {
  void authenticate(Context paramContext, FingerprintManagerCompat$CryptoObject paramFingerprintManagerCompat$CryptoObject, int paramInt, CancellationSignal paramCancellationSignal, FingerprintManagerCompat$AuthenticationCallback paramFingerprintManagerCompat$AuthenticationCallback, Handler paramHandler);
  
  boolean hasEnrolledFingerprints(Context paramContext);
  
  boolean isHardwareDetected(Context paramContext);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompat$FingerprintManagerCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */