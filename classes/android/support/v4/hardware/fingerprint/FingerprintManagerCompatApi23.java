package android.support.v4.hardware.fingerprint;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.CancellationSignal;
import android.os.Handler;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;

@TargetApi(23)
@RequiresApi(23)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class FingerprintManagerCompatApi23 {
  public static void authenticate(Context paramContext, FingerprintManagerCompatApi23$CryptoObject paramFingerprintManagerCompatApi23$CryptoObject, int paramInt, Object paramObject, FingerprintManagerCompatApi23$AuthenticationCallback paramFingerprintManagerCompatApi23$AuthenticationCallback, Handler paramHandler) {
    FingerprintManager fingerprintManager = getFingerprintManagerOrNull(paramContext);
    if (fingerprintManager != null)
      fingerprintManager.authenticate(wrapCryptoObject(paramFingerprintManagerCompatApi23$CryptoObject), (CancellationSignal)paramObject, paramInt, wrapCallback(paramFingerprintManagerCompatApi23$AuthenticationCallback), paramHandler); 
  }
  
  private static FingerprintManager getFingerprintManagerOrNull(Context paramContext) {
    return paramContext.getPackageManager().hasSystemFeature("android.hardware.fingerprint") ? (FingerprintManager)paramContext.getSystemService(FingerprintManager.class) : null;
  }
  
  public static boolean hasEnrolledFingerprints(Context paramContext) {
    FingerprintManager fingerprintManager = getFingerprintManagerOrNull(paramContext);
    return (fingerprintManager != null && fingerprintManager.hasEnrolledFingerprints());
  }
  
  public static boolean isHardwareDetected(Context paramContext) {
    FingerprintManager fingerprintManager = getFingerprintManagerOrNull(paramContext);
    return (fingerprintManager != null && fingerprintManager.isHardwareDetected());
  }
  
  private static FingerprintManagerCompatApi23$CryptoObject unwrapCryptoObject(FingerprintManager.CryptoObject paramCryptoObject) {
    if (paramCryptoObject != null) {
      if (paramCryptoObject.getCipher() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramCryptoObject.getCipher()); 
      if (paramCryptoObject.getSignature() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramCryptoObject.getSignature()); 
      if (paramCryptoObject.getMac() != null)
        return new FingerprintManagerCompatApi23$CryptoObject(paramCryptoObject.getMac()); 
    } 
    return null;
  }
  
  private static FingerprintManager.AuthenticationCallback wrapCallback(FingerprintManagerCompatApi23$AuthenticationCallback paramFingerprintManagerCompatApi23$AuthenticationCallback) {
    return new FingerprintManagerCompatApi23$1(paramFingerprintManagerCompatApi23$AuthenticationCallback);
  }
  
  private static FingerprintManager.CryptoObject wrapCryptoObject(FingerprintManagerCompatApi23$CryptoObject paramFingerprintManagerCompatApi23$CryptoObject) {
    if (paramFingerprintManagerCompatApi23$CryptoObject != null) {
      if (paramFingerprintManagerCompatApi23$CryptoObject.getCipher() != null)
        return new FingerprintManager.CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getCipher()); 
      if (paramFingerprintManagerCompatApi23$CryptoObject.getSignature() != null)
        return new FingerprintManager.CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getSignature()); 
      if (paramFingerprintManagerCompatApi23$CryptoObject.getMac() != null)
        return new FingerprintManager.CryptoObject(paramFingerprintManagerCompatApi23$CryptoObject.getMac()); 
    } 
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompatApi23.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */