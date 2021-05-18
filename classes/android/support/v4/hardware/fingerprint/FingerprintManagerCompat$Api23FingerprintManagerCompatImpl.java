package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Handler;
import android.support.v4.os.CancellationSignal;

class FingerprintManagerCompat$Api23FingerprintManagerCompatImpl implements FingerprintManagerCompat$FingerprintManagerCompatImpl {
  static FingerprintManagerCompat$CryptoObject unwrapCryptoObject(FingerprintManagerCompatApi23$CryptoObject paramFingerprintManagerCompatApi23$CryptoObject) {
    if (paramFingerprintManagerCompatApi23$CryptoObject != null) {
      if (paramFingerprintManagerCompatApi23$CryptoObject.getCipher() != null)
        return new FingerprintManagerCompat$CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getCipher()); 
      if (paramFingerprintManagerCompatApi23$CryptoObject.getSignature() != null)
        return new FingerprintManagerCompat$CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getSignature()); 
      if (paramFingerprintManagerCompatApi23$CryptoObject.getMac() != null)
        return new FingerprintManagerCompat$CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getMac()); 
    } 
    return null;
  }
  
  private static FingerprintManagerCompatApi23$AuthenticationCallback wrapCallback(FingerprintManagerCompat$AuthenticationCallback paramFingerprintManagerCompat$AuthenticationCallback) {
    return new FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1(paramFingerprintManagerCompat$AuthenticationCallback);
  }
  
  private static FingerprintManagerCompatApi23$CryptoObject wrapCryptoObject(FingerprintManagerCompat$CryptoObject paramFingerprintManagerCompat$CryptoObject) {
    if (paramFingerprintManagerCompat$CryptoObject != null) {
      if (paramFingerprintManagerCompat$CryptoObject.getCipher() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramFingerprintManagerCompat$CryptoObject.getCipher()); 
      if (paramFingerprintManagerCompat$CryptoObject.getSignature() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramFingerprintManagerCompat$CryptoObject.getSignature()); 
      if (paramFingerprintManagerCompat$CryptoObject.getMac() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramFingerprintManagerCompat$CryptoObject.getMac()); 
    } 
    return null;
  }
  
  public void authenticate(Context paramContext, FingerprintManagerCompat$CryptoObject paramFingerprintManagerCompat$CryptoObject, int paramInt, CancellationSignal paramCancellationSignal, FingerprintManagerCompat$AuthenticationCallback paramFingerprintManagerCompat$AuthenticationCallback, Handler paramHandler) {
    FingerprintManagerCompatApi23$CryptoObject fingerprintManagerCompatApi23$CryptoObject = wrapCryptoObject(paramFingerprintManagerCompat$CryptoObject);
    if (paramCancellationSignal != null) {
      Object object = paramCancellationSignal.getCancellationSignalObject();
    } else {
      paramFingerprintManagerCompat$CryptoObject = null;
    } 
    FingerprintManagerCompatApi23.authenticate(paramContext, fingerprintManagerCompatApi23$CryptoObject, paramInt, paramFingerprintManagerCompat$CryptoObject, wrapCallback(paramFingerprintManagerCompat$AuthenticationCallback), paramHandler);
  }
  
  public boolean hasEnrolledFingerprints(Context paramContext) {
    return FingerprintManagerCompatApi23.hasEnrolledFingerprints(paramContext);
  }
  
  public boolean isHardwareDetected(Context paramContext) {
    return FingerprintManagerCompatApi23.isHardwareDetected(paramContext);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompat$Api23FingerprintManagerCompatImpl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */