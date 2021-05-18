package android.support.v4.hardware.fingerprint;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.os.CancellationSignal;

public final class FingerprintManagerCompat {
  static final FingerprintManagerCompat$FingerprintManagerCompatImpl IMPL = new FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl();
  
  private Context mContext;
  
  private FingerprintManagerCompat(Context paramContext) {
    this.mContext = paramContext;
  }
  
  public static FingerprintManagerCompat from(Context paramContext) {
    return new FingerprintManagerCompat(paramContext);
  }
  
  public void authenticate(@Nullable FingerprintManagerCompat$CryptoObject paramFingerprintManagerCompat$CryptoObject, int paramInt, @Nullable CancellationSignal paramCancellationSignal, @NonNull FingerprintManagerCompat$AuthenticationCallback paramFingerprintManagerCompat$AuthenticationCallback, @Nullable Handler paramHandler) {
    IMPL.authenticate(this.mContext, paramFingerprintManagerCompat$CryptoObject, paramInt, paramCancellationSignal, paramFingerprintManagerCompat$AuthenticationCallback, paramHandler);
  }
  
  public boolean hasEnrolledFingerprints() {
    return IMPL.hasEnrolledFingerprints(this.mContext);
  }
  
  public boolean isHardwareDetected() {
    return IMPL.isHardwareDetected(this.mContext);
  }
  
  static {
    if (Build.VERSION.SDK_INT >= 23) {
      IMPL = new FingerprintManagerCompat$Api23FingerprintManagerCompatImpl();
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */