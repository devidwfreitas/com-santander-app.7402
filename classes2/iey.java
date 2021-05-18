import android.app.Activity;
import android.content.Context;
import android.hardware.fingerprint.FingerprintManager;
import android.os.CancellationSignal;
import android.security.keystore.KeyGenParameterSpec;
import android.support.v4.app.ActivityCompat;
import java.security.KeyStore;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;

public class iey extends FingerprintManager.AuthenticationCallback implements iex {
  private Context a;
  
  private FingerprintManager b;
  
  private iew c;
  
  private CancellationSignal d;
  
  private FingerprintManager.CryptoObject e;
  
  private boolean f;
  
  public iey(Activity paramActivity) {
    this((FingerprintManager)paramActivity.getSystemService(FingerprintManager.class), null, (Context)paramActivity);
  }
  
  public iey(FingerprintManager paramFingerprintManager, iew paramiew, Context paramContext) {
    this.b = paramFingerprintManager;
    this.c = paramiew;
    this.a = paramContext;
    try {
      KeyStore keyStore = KeyStore.getInstance("AndroidKeyStore");
      KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", "AndroidKeyStore");
      Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
      keyStore.load(null);
      keyGenerator.init((AlgorithmParameterSpec)(new KeyGenParameterSpec.Builder("name", 3)).setBlockModes(new String[] { "CBC" }).setUserAuthenticationRequired(true).setEncryptionPaddings(new String[] { "PKCS7Padding" }).build());
      keyGenerator.generateKey();
      cipher.init(1, keyStore.getKey("name", null));
      this.e = new FingerprintManager.CryptoObject(cipher);
      return;
    } catch (Exception exception) {
      throw new RuntimeException("Exception", exception);
    } 
  }
  
  public void a() {
    this.d = new CancellationSignal();
    this.f = false;
    if (ActivityCompat.checkSelfPermission(this.a, "android.permission.USE_FINGERPRINT") == 0)
      this.b.authenticate(this.e, this.d, 0, this, null); 
  }
  
  public void a(iew paramiew) {
    this.c = paramiew;
  }
  
  public void b() {
    if (this.d != null) {
      this.f = true;
      this.d.cancel();
      this.d = null;
    } 
  }
  
  public void onAuthenticationError(int paramInt, CharSequence paramCharSequence) {
    if (!this.f) {
      if (paramInt == 7) {
        this.c.a(this.a.getResources().getString(2131297455));
        this.c.a(true);
        return;
      } 
    } else {
      return;
    } 
    this.c.a(paramCharSequence);
  }
  
  public void onAuthenticationFailed() {
    this.c.a(this.a.getResources().getString(2131297456));
  }
  
  public void onAuthenticationHelp(int paramInt, CharSequence paramCharSequence) {
    this.c.a(paramCharSequence);
  }
  
  public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult paramAuthenticationResult) {
    this.c.b();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\iey.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */