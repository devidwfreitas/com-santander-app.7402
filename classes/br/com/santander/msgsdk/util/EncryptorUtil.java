package br.com.santander.msgsdk.util;

import java.security.MessageDigest;
import org.apache.commons.codec.binary.Hex;

public class EncryptorUtil {
  public static String SHAGenerate(String paramString) {
    MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
    messageDigest.update(paramString.getBytes("utf-8"));
    return new String(Hex.encodeHex(messageDigest.digest()));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santander\msgsd\\util\EncryptorUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */