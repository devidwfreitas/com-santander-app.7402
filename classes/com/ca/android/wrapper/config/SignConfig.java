package com.ca.android.wrapper.config;

import com.ca.android.wrapper.util.Logger;
import java.io.File;

public class SignConfig {
  private static String CONF;
  
  private static String JAR_SIGNER_PROPERTIES;
  
  private static String MDO_KEYSTORE;
  
  public static SignConfig defaultConfig;
  
  private static Logger logger = Logger.getLogger();
  
  private String alias;
  
  private String digestAlgorithm;
  
  private String emmHome = null;
  
  private String keyPassword;
  
  private String keyStoreFilePath;
  
  private boolean noSign;
  
  private boolean noTsa;
  
  private String signatureAlgorithm;
  
  private String signingProperties;
  
  private String storePassword;
  
  static {
    JAR_SIGNER_PROPERTIES = "jarsigner.properties";
    CONF = "conf";
    MDO_KEYSTORE = "mdo.keystore";
    defaultConfig = null;
  }
  
  public SignConfig(String paramString, boolean paramBoolean) {
    this.signingProperties = paramString;
    this.noSign = paramBoolean;
    if (paramString != null && !paramBoolean)
      initializeProperties(); 
  }
  
  public static SignConfig getDefault() {
    if (defaultConfig == null) {
      logger.debug(CommonConfig.productHome + File.separator + CONF + File.separator + JAR_SIGNER_PROPERTIES);
      defaultConfig = new SignConfig(CommonConfig.productHome + File.separator + CONF + File.separator + JAR_SIGNER_PROPERTIES, false);
      defaultConfig.setKeyStoreFilePath(CommonConfig.productHome + File.separator + CONF + File.separator + MDO_KEYSTORE);
    } 
    return defaultConfig;
  }
  
  public static boolean isValid(SignConfig paramSignConfig) {
    return !(paramSignConfig == null || paramSignConfig.getKeyStoreFilePath() == null || paramSignConfig.getKeyPassword() == null || paramSignConfig.getSignatureAlgorithm() == null);
  }
  
  public static boolean noKeyStoreFilePath(String paramString) {
    return (paramString == null || (paramString != null && paramString.contains("$EMMHOME")));
  }
  
  public String getAlias() {
    return this.alias;
  }
  
  public String getDigestAlgorithm() {
    return this.digestAlgorithm;
  }
  
  public String getEmmHome() {
    return this.emmHome;
  }
  
  public String getKeyPassword() {
    return this.keyPassword;
  }
  
  public String getKeyStoreFilePath() {
    return noKeyStoreFilePath(this.keyStoreFilePath) ? (CommonConfig.productHome + File.separator + CONF + File.separator + MDO_KEYSTORE) : this.keyStoreFilePath;
  }
  
  public String getSignatureAlgorithm() {
    return this.signatureAlgorithm;
  }
  
  public String getSigningProperties() {
    return this.signingProperties;
  }
  
  public String getStorePassword() {
    return this.storePassword;
  }
  
  public void initializeProperties() {
    // Byte code:
    //   0: new java/util/Properties
    //   3: dup
    //   4: invokespecial <init> : ()V
    //   7: astore_3
    //   8: new java/io/FileInputStream
    //   11: dup
    //   12: aload_0
    //   13: getfield signingProperties : Ljava/lang/String;
    //   16: invokespecial <init> : (Ljava/lang/String;)V
    //   19: astore_2
    //   20: aload_2
    //   21: astore_1
    //   22: aload_3
    //   23: aload_2
    //   24: invokevirtual load : (Ljava/io/InputStream;)V
    //   27: aload_2
    //   28: astore_1
    //   29: aload_0
    //   30: aload_3
    //   31: ldc 'noTsa'
    //   33: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   36: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Boolean;
    //   39: invokevirtual booleanValue : ()Z
    //   42: putfield noTsa : Z
    //   45: aload_2
    //   46: astore_1
    //   47: aload_0
    //   48: aload_3
    //   49: ldc 'keyStoreFilePath'
    //   51: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   54: putfield keyStoreFilePath : Ljava/lang/String;
    //   57: aload_2
    //   58: astore_1
    //   59: aload_0
    //   60: aload_3
    //   61: ldc 'keyPassword'
    //   63: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   66: putfield keyPassword : Ljava/lang/String;
    //   69: aload_2
    //   70: astore_1
    //   71: aload_0
    //   72: aload_3
    //   73: ldc 'storePassword'
    //   75: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   78: putfield storePassword : Ljava/lang/String;
    //   81: aload_2
    //   82: astore_1
    //   83: aload_0
    //   84: aload_3
    //   85: ldc 'alias'
    //   87: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   90: putfield alias : Ljava/lang/String;
    //   93: aload_2
    //   94: astore_1
    //   95: aload_0
    //   96: aload_3
    //   97: ldc 'signatureAlgorithm'
    //   99: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   102: putfield signatureAlgorithm : Ljava/lang/String;
    //   105: aload_2
    //   106: astore_1
    //   107: aload_0
    //   108: aload_3
    //   109: ldc 'digestAlgorithm'
    //   111: invokevirtual getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   114: putfield digestAlgorithm : Ljava/lang/String;
    //   117: aload_2
    //   118: ifnull -> 125
    //   121: aload_2
    //   122: invokevirtual close : ()V
    //   125: return
    //   126: astore_1
    //   127: aload_1
    //   128: invokevirtual printStackTrace : ()V
    //   131: return
    //   132: astore_3
    //   133: aconst_null
    //   134: astore_2
    //   135: aload_2
    //   136: astore_1
    //   137: aload_3
    //   138: invokevirtual printStackTrace : ()V
    //   141: aload_2
    //   142: ifnull -> 125
    //   145: aload_2
    //   146: invokevirtual close : ()V
    //   149: return
    //   150: astore_1
    //   151: aload_1
    //   152: invokevirtual printStackTrace : ()V
    //   155: return
    //   156: astore_2
    //   157: aconst_null
    //   158: astore_1
    //   159: aload_1
    //   160: ifnull -> 167
    //   163: aload_1
    //   164: invokevirtual close : ()V
    //   167: aload_2
    //   168: athrow
    //   169: astore_1
    //   170: aload_1
    //   171: invokevirtual printStackTrace : ()V
    //   174: goto -> 167
    //   177: astore_2
    //   178: goto -> 159
    //   181: astore_3
    //   182: goto -> 135
    // Exception table:
    //   from	to	target	type
    //   8	20	132	java/io/IOException
    //   8	20	156	finally
    //   22	27	181	java/io/IOException
    //   22	27	177	finally
    //   29	45	181	java/io/IOException
    //   29	45	177	finally
    //   47	57	181	java/io/IOException
    //   47	57	177	finally
    //   59	69	181	java/io/IOException
    //   59	69	177	finally
    //   71	81	181	java/io/IOException
    //   71	81	177	finally
    //   83	93	181	java/io/IOException
    //   83	93	177	finally
    //   95	105	181	java/io/IOException
    //   95	105	177	finally
    //   107	117	181	java/io/IOException
    //   107	117	177	finally
    //   121	125	126	java/io/IOException
    //   137	141	177	finally
    //   145	149	150	java/io/IOException
    //   163	167	169	java/io/IOException
  }
  
  public boolean isNoSign() {
    return this.noSign;
  }
  
  public boolean isNoTsa() {
    return this.noTsa;
  }
  
  public void setAlias(String paramString) {
    this.alias = paramString;
  }
  
  public void setDigestAlgorithm(String paramString) {
    this.digestAlgorithm = paramString;
  }
  
  public void setEmmHome(String paramString) {
    this.emmHome = paramString;
  }
  
  public void setKeyPassword(String paramString) {
    this.keyPassword = paramString;
  }
  
  public void setKeyStoreFilePath(String paramString) {
    if (noKeyStoreFilePath(paramString)) {
      this.keyStoreFilePath = CommonConfig.productHome + File.separator + CONF + File.separator + MDO_KEYSTORE;
      return;
    } 
    this.keyStoreFilePath = paramString;
  }
  
  public void setNoSign(boolean paramBoolean) {
    this.noSign = paramBoolean;
  }
  
  public void setNoTsa(boolean paramBoolean) {
    this.noTsa = paramBoolean;
  }
  
  public void setSignatureAlgorithm(String paramString) {
    this.signatureAlgorithm = paramString;
  }
  
  public void setSigningProperties(String paramString) {
    this.signingProperties = paramString;
  }
  
  public void setStorePassword(String paramString) {
    this.storePassword = paramString;
  }
  
  public String toString() {
    return "SignConfig{keyStoreFilePath='" + this.keyStoreFilePath + '\'' + ", keyPassword='" + this.keyPassword + '\'' + ", storePassword='" + this.storePassword + '\'' + ", alias='" + this.alias + '\'' + ", signatureAlgorithm='" + this.signatureAlgorithm + '\'' + ", digestAlgorithm='" + this.digestAlgorithm + '\'' + ", noTsa=" + this.noTsa + ", noSign=" + this.noSign + ", signingProperties='" + this.signingProperties + '\'' + '}';
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\config\SignConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */