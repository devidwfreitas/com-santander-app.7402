package com.ca.mdo;

import android.annotation.TargetApi;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

class RSAEncrypter implements Encrypter {
  private static final String CIPHER_ALGO = "RSA/ECB/PKCS1Padding";
  
  private static final int PKCS1_PADDING_BYTES = 11;
  
  private static RSAEncrypter _instance;
  
  public static RSAEncrypter getInstance() {
    if (_instance == null)
      _instance = new RSAEncrypter(); 
    return _instance;
  }
  
  @TargetApi(8)
  private PublicKey getPublicKey(String paramString) throws UnsupportedEncodingException, NoSuchAlgorithmException, InvalidKeySpecException {
    X509EncodedKeySpec x509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(paramString.getBytes("utf-8"), 0));
    return KeyFactory.getInstance("RSA").generatePublic(x509EncodedKeySpec);
  }
  
  @TargetApi(8)
  public String encryptData(byte[] paramArrayOfbyte, Object paramObject) throws Exception {
    paramObject = paramObject;
    Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    cipher.init(1, getPublicKey((String)paramObject));
    return Base64.encodeToString(cipher.doFinal(paramArrayOfbyte), 2);
  }
  
  public int getPaddingBytes() {
    return 11;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\RSAEncrypter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */