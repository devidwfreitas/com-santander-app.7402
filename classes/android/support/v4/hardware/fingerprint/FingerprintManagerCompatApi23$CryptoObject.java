package android.support.v4.hardware.fingerprint;

import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;

public class FingerprintManagerCompatApi23$CryptoObject {
  private final Cipher mCipher;
  
  private final Mac mMac;
  
  private final Signature mSignature;
  
  public FingerprintManagerCompatApi23$CryptoObject(Signature paramSignature) {
    this.mSignature = paramSignature;
    this.mCipher = null;
    this.mMac = null;
  }
  
  public FingerprintManagerCompatApi23$CryptoObject(Cipher paramCipher) {
    this.mCipher = paramCipher;
    this.mSignature = null;
    this.mMac = null;
  }
  
  public FingerprintManagerCompatApi23$CryptoObject(Mac paramMac) {
    this.mMac = paramMac;
    this.mCipher = null;
    this.mSignature = null;
  }
  
  public Cipher getCipher() {
    return this.mCipher;
  }
  
  public Mac getMac() {
    return this.mMac;
  }
  
  public Signature getSignature() {
    return this.mSignature;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\android\support\v4\hardware\fingerprint\FingerprintManagerCompatApi23$CryptoObject.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */