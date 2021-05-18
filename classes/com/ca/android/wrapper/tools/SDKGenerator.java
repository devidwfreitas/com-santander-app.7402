package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.config.CommonConfig;
import com.ca.android.wrapper.util.Logger;
import java.io.File;

public class SDKGenerator {
  private Logger logger = Logger.getLogger();
  
  public boolean generateSDK(CommonConfig paramCommonConfig) {
    File file;
    try {
      String str = paramCommonConfig.get("SDK_APK");
      this.logger.info("Using container file:" + str);
      file = new File(str);
      if (!file.exists()) {
        this.logger.severe("Exiting, Provided SDK APK File does not exist. " + file);
        throw new Exception("Exiting, Provided SDK APK File does not exist. " + file);
      } 
    } catch (Exception exception) {
      this.logger.severe(exception.getMessage());
      return false;
    } 
    boolean bool = (new APKExtractor(file, false)).extractSDKAPKUsingAPKTool((CommonConfig)exception);
    if (!bool) {
      this.logger.severe("Exiting, SDK APK Extraction failed!");
      throw new Exception("Exiting, SDK APK Extraction failed!");
    } 
    this.logger.info("SDK APK Extraction Completed!");
    return bool;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\SDKGenerator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */