package com.ca.mdo;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.X509Certificate;
import java.util.regex.Pattern;

public class MDOPublicKeyHash implements Serializable {
  private static final Pattern SHA256_HEX_PATTERN = Pattern.compile("[a-f0-9]{64}");
  
  private static final char[] hexadecimal = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'a', 'b', 'c', 'd', 'e', 'f' };
  
  private static final char[] hexadecimal_upper = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'A', 'B', 'C', 'D', 'E', 'F' };
  
  private final String hash;
  
  MDOPublicKeyHash(String paramString) {
    this.hash = paramString;
  }
  
  public static MDOPublicKeyHash fromHashString(String paramString) {
    paramString = paramString.trim().toLowerCase();
    if (!SHA256_HEX_PATTERN.matcher(paramString).matches())
      throw new IllegalArgumentException("invalid key hash string"); 
    return new MDOPublicKeyHash(paramString);
  }
  
  public static MDOPublicKeyHash fromPublicKey(PublicKey paramPublicKey) {
    return new MDOPublicKeyHash(toHash(paramPublicKey));
  }
  
  public static String hexDump(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, boolean paramBoolean) {
    char[] arrayOfChar1;
    if (paramBoolean) {
      arrayOfChar1 = hexadecimal_upper;
    } else {
      arrayOfChar1 = hexadecimal;
    } 
    if (paramArrayOfbyte == null)
      throw new NullPointerException(); 
    if (paramInt1 < 0 || paramInt2 < 0 || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      throw new IllegalArgumentException(); 
    char[] arrayOfChar2 = new char[paramInt2 * 2];
    int i;
    for (i = 0; i < paramInt2; i++) {
      byte b = paramArrayOfbyte[paramInt1 + i];
      arrayOfChar2[i * 2] = arrayOfChar1[(paramArrayOfbyte[paramInt1 + i] & 0xF0) >> 4];
      arrayOfChar2[i * 2 + 1] = arrayOfChar1[b & 0xF];
    } 
    return new String(arrayOfChar2);
  }
  
  public static String toHash(PublicKey paramPublicKey) {
    byte[] arrayOfByte = paramPublicKey.getEncoded();
    if (arrayOfByte == null || arrayOfByte.length < 1)
      throw new IllegalArgumentException("public key cannot be encoded"); 
    String str = paramPublicKey.getFormat();
    if (!"X.509".equalsIgnoreCase(str) && !"x509".equalsIgnoreCase(str))
      throw new IllegalArgumentException("public key encoding format is not X.509"); 
    try {
      MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
      messageDigest.update(arrayOfByte);
      byte[] arrayOfByte1 = messageDigest.digest();
      return hexDump(arrayOfByte1, 0, arrayOfByte1.length, false);
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      throw new RuntimeException(noSuchAlgorithmException);
    } 
  }
  
  public static String toHash(X509Certificate paramX509Certificate) {
    return toHash(paramX509Certificate.getPublicKey());
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (paramObject == null || getClass() != paramObject.getClass())
        return false; 
      paramObject = paramObject;
      if ((this.hash != null) ? !this.hash.equals(((MDOPublicKeyHash)paramObject).hash) : (((MDOPublicKeyHash)paramObject).hash != null))
        return false; 
    } 
    return true;
  }
  
  public String getHash() {
    return this.hash;
  }
  
  public int hashCode() {
    return (this.hash != null) ? this.hash.hashCode() : 0;
  }
  
  public boolean matches(String paramString) {
    return (this.hash != null && this.hash.equals(paramString));
  }
  
  public boolean matches(PublicKey paramPublicKey) {
    return matches(toHash(paramPublicKey));
  }
  
  public boolean matches(X509Certificate paramX509Certificate) {
    return matches(paramX509Certificate.getPublicKey());
  }
  
  public String toString() {
    return "PublicKeyHash{hash='" + this.hash + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\MDOPublicKeyHash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */