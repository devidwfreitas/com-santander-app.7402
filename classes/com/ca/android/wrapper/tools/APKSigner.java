package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.config.CommonConfig;
import com.ca.android.wrapper.config.SignConfig;
import com.ca.android.wrapper.util.Logger;
import java.io.File;

public class APKSigner {
  private File apkFile;
  
  private Logger logger = Logger.getLogger();
  
  public APKSigner(File paramFile) {
    this.apkFile = paramFile;
  }
  
  public boolean align(CommonConfig paramCommonConfig, String paramString) {
    this.logger.info("APK Align Started");
    try {
      String str2 = paramCommonConfig.get("TOOLS_DIR");
      String str4 = paramCommonConfig.get("OSNAME");
      String str1 = paramCommonConfig.getTempFolder().getAbsolutePath();
      String str3 = str1 + File.separator;
      str4 = str2 + File.separator + str4 + File.separator + "zipalign";
      String str5 = this.apkFile.getAbsolutePath().replace(this.apkFile.getName(), "");
      str2 = str5 + "wrapped_" + this.apkFile.getName();
      str1 = str2;
      if (paramString != null) {
        str1 = str2;
        if (paramString.trim().length() > 0)
          str1 = str5 + paramString; 
      } 
      if (APKExtractor.executeCommand(new String[] { str4, "-f", "4", str3 + "signed_" + this.apkFile.getName(), str1 }) != 0)
        throw new Exception("zipalign failed ..."); 
    } catch (Exception exception) {
      this.logger.severe(exception.getMessage());
      return false;
    } 
    System.out.println("Wrapped APK file is located at:" + exception);
    return true;
  }
  
  public boolean sign(CommonConfig paramCommonConfig, SignConfig paramSignConfig) {
    File file;
    this.logger.info("APK Signing Started");
    try {
      String str11 = paramCommonConfig.getTempFolder().getAbsolutePath();
      File file1 = new File(str11 + File.separator + "signed_" + this.apkFile.getName());
      file = new File(str11 + File.separator + "manifest_modded_" + this.apkFile.getName());
      if (!SignConfig.isValid(paramSignConfig)) {
        this.logger.debug("Using default configuration of jarsigner....." + paramSignConfig.getSigningProperties());
        paramSignConfig = SignConfig.getDefault();
      } else {
        this.logger.debug("Using user passed in jarsigner " + paramSignConfig.getSigningProperties());
      } 
      String str1 = paramSignConfig.getSignatureAlgorithm();
      String str2 = paramSignConfig.getDigestAlgorithm();
      String str3 = paramSignConfig.getKeyStoreFilePath();
      String str4 = str11 + File.separator + "manifest_modded_" + this.apkFile.getName();
      String str5 = paramSignConfig.getAlias();
      String str6 = paramSignConfig.getKeyPassword();
      String str7 = paramSignConfig.getStorePassword();
      String str8 = paramSignConfig.getSignatureAlgorithm();
      String str9 = paramSignConfig.getDigestAlgorithm();
      String str10 = paramSignConfig.getKeyStoreFilePath();
      str11 = str11 + File.separator + "manifest_modded_" + this.apkFile.getName();
      String str12 = paramSignConfig.getAlias();
      String str13 = paramSignConfig.getKeyPassword();
      String str14 = paramSignConfig.getStorePassword();
      if (paramSignConfig.isNoTsa()) {
        this.logger.info("APK Signing: Signing the jar without TSA option based on user request.");
        if (APKExtractor.executeCommand(new String[] { 
              "jarsigner", "-sigalg", str8, "-digestalg", str9, "-keystore", str10, str11, str12, "-keypass", 
              str13, "-storepass", str14 }) != 0)
          throw new Exception("jar signing failed..."); 
      } else if (APKExtractor.executeCommand(new String[] { 
            "jarsigner", "-tsa", "http://timestamp.digicert.com", "-sigalg", str1, "-digestalg", str2, "-keystore", str3, str4, 
            str5, "-keypass", str6, "-storepass", str7 }) != 0) {
        throw new Exception("jar signing failed...");
      } 
    } catch (Exception exception) {
      this.logger.severe(exception.getMessage());
      return false;
    } 
    file.renameTo((File)exception);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\APKSigner.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */