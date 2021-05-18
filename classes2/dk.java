import android.content.Context;
import android.security.KeyPairGeneratorSpec;
import java.math.BigInteger;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.spec.AlgorithmParameterSpec;
import java.util.GregorianCalendar;
import javax.crypto.Cipher;
import javax.security.auth.x500.X500Principal;

public class dk {
  private Cipher a;
  
  private KeyPair b;
  
  private String c;
  
  private KeyStore d;
  
  private Context e;
  
  public dk(Context paramContext, String paramString) {
    this.c = paramString;
    this.e = paramContext;
    try {
      this.a = Cipher.getInstance(dx.a());
    } catch (Exception exception) {
      exception.printStackTrace();
    } 
    this.d = KeyStore.getInstance(dx.d());
    this.d.load(null);
  }
  
  private void b() {
    if (this.b == null) {
      KeyStore.PrivateKeyEntry privateKeyEntry = (KeyStore.PrivateKeyEntry)this.d.getEntry(this.c, null);
      this.b = new KeyPair(privateKeyEntry.getCertificate().getPublicKey(), privateKeyEntry.getPrivateKey());
    } 
  }
  
  public void a() {
    GregorianCalendar gregorianCalendar1 = new GregorianCalendar();
    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
    gregorianCalendar2.add(1, 100);
    try {
      KeyPairGeneratorSpec keyPairGeneratorSpec = (new KeyPairGeneratorSpec.Builder(this.e)).setAlias(this.c).setSubject(new X500Principal("CN=" + this.c)).setSerialNumber(BigInteger.ONE).setStartDate(gregorianCalendar1.getTime()).setEndDate(gregorianCalendar2.getTime()).build();
      KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", dx.d());
      keyPairGenerator.initialize((AlgorithmParameterSpec)keyPairGeneratorSpec);
      keyPairGenerator.generateKeyPair();
      this.b = null;
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  public byte[] a(byte[] paramArrayOfbyte) {
    a();
    b();
    this.a.init(1, this.b.getPrivate());
    paramArrayOfbyte = this.a.doFinal(paramArrayOfbyte);
    return (paramArrayOfbyte != null) ? az.a(paramArrayOfbyte) : null;
  }
  
  public byte[] b(byte[] paramArrayOfbyte) {
    b();
    this.a.init(2, this.b.getPublic());
    byte[] arrayOfByte = paramArrayOfbyte;
    if (paramArrayOfbyte != null)
      arrayOfByte = az.b(paramArrayOfbyte); 
    return this.a.doFinal(arrayOfByte);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dk.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */