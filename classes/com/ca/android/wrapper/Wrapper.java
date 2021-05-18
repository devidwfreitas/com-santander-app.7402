package com.ca.android.wrapper;

import com.ca.android.wrapper.config.CommonConfig;
import com.ca.android.wrapper.config.WrapConfig;
import com.ca.android.wrapper.tools.APKExtractor;
import com.ca.android.wrapper.tools.APKSigner;
import com.ca.android.wrapper.tools.SDKGenerator;
import com.ca.android.wrapper.tools.SmaliParser;
import com.ca.android.wrapper.util.FileUtil;
import com.ca.android.wrapper.util.Logger;
import java.beans.PropertyChangeListener;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.TreeSet;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteStreamHandler;
import org.apache.commons.exec.PumpStreamHandler;
import org.apache.commons.io.FileUtils;

public class Wrapper {
  public static String emmHome;
  
  private static Logger logger = Logger.getLogger();
  
  private File apkFile = null;
  
  private CommonConfig commonConfig = null;
  
  private File mdoPlistFile = null;
  
  static {
    emmHome = null;
  }
  
  private int calculateTotalDexs(long[] paramArrayOflong) {
    double d1 = 1.0D;
    double d2 = (paramArrayOflong[0] + paramArrayOflong[1]);
    if (d2 > 65536.0D)
      d1 = Math.ceil(d2 / 65536.0D); 
    return (int)d1;
  }
  
  private void cleanUp() {
    FileUtil.deleteDir(this.commonConfig.getTempFolder());
  }
  
  public static String doWrap(WrapConfig paramWrapConfig) {
    String str3 = paramWrapConfig.getRulesFile();
    boolean bool = paramWrapConfig.isVerbose();
    PropertyChangeListener propertyChangeListener = paramWrapConfig.getListener();
    String str2 = paramWrapConfig.getBuildType();
    String str1 = str2;
    if (!"debug".equals(str2)) {
      str1 = str2;
      if (!"release".equals(str2))
        str1 = "release"; 
    } 
    if (bool) {
      Logger logger = Logger.getLogger();
      logger.enableDebug();
      logger.enableInfo();
    } 
    Wrapper wrapper = new Wrapper();
    WrapperStatusBean wrapperStatusBean = new WrapperStatusBean();
    wrapperStatusBean.addPropertyChangeListener(new WrapperStatusListener());
    if (propertyChangeListener != null)
      wrapperStatusBean.addPropertyChangeListener(propertyChangeListener); 
    paramWrapConfig.setBean(wrapperStatusBean);
    try {
      if (!wrapper.initializeConfigurations(paramWrapConfig, str3, str1)) {
        logger.severe("Wrapping Failure : Cannot read configuration");
        return "FAILURE";
      } 
      if (wrapper.generateSDK()) {
        wrapper.startWrapping(paramWrapConfig);
        return "SUCCESS";
      } 
      logger.severe("Wrapping Failure : SDK Generation failed. Wrapping did not start");
      return "SUCCESS";
    } catch (Exception exception) {
      logger.severe("Wrapping Failure :  Wrapping unsuccessful");
      throw exception;
    } finally {
      wrapper.cleanUp();
    } 
  }
  
  private boolean generateSDK() {
    return (new SDKGenerator()).generateSDK(this.commonConfig);
  }
  
  private long getDexMethodCount(String paramString) {
    String str = this.commonConfig.get("TOOLS_DIR");
    CommandLine commandLine = new CommandLine("java");
    commandLine.addArgument("-jar");
    commandLine.addArgument(str + "dex-method-counts.jar", false);
    commandLine.addArgument(paramString, false);
    DefaultExecutor defaultExecutor = new DefaultExecutor();
    ExecuteStreamHandler executeStreamHandler = defaultExecutor.getStreamHandler();
    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
    defaultExecutor.setStreamHandler((ExecuteStreamHandler)new PumpStreamHandler(byteArrayOutputStream));
    executeStreamHandler.setProcessOutputStream(System.in);
    defaultExecutor.execute(commandLine);
    String[] arrayOfString = byteArrayOutputStream.toString().split("\n");
    return Long.valueOf(arrayOfString[arrayOfString.length - 1].split(":")[1].replaceAll("[^0-9]", "")).longValue();
  }
  
  private long[] getDexMethodCounts() {
    return new long[] { getDexMethodCount(this.apkFile.getAbsolutePath()), getDexMethodCount(this.commonConfig.get("SDK_APK")) };
  }
  
  private String getTargetDexDir(String paramString, int paramInt) {
    TreeSet<String> treeSet = new TreeSet();
    File[] arrayOfFile = (new File(paramString)).listFiles();
    int k = arrayOfFile.length;
    int j = 0;
    int i = 0;
    while (j < k) {
      File file = arrayOfFile[j];
      if (file.isDirectory() && file.getName().contains("smali")) {
        treeSet.add(file.getName());
        i++;
      } 
      j++;
    } 
    String str = treeSet.last();
    paramInt -= i;
    if (paramInt == 1) {
      if (!"smali".equals(str)) {
        paramInt = Integer.valueOf(str.substring("smali_classes".length())).intValue();
      } else {
        paramInt = 1;
      } 
      str = "smali_classes" + (paramInt + 1);
      (new File(paramString + "/" + str)).mkdir();
      paramString = str;
      this.commonConfig.putProperty("sdkDirectory", paramString);
      return paramString;
    } 
    paramString = str;
    if (paramInt > 1)
      throw new RuntimeException("Apk should have " + (paramInt - 1) + "dex but found only " + i); 
    this.commonConfig.putProperty("sdkDirectory", paramString);
    return paramString;
  }
  
  private boolean initializeConfigurations(WrapConfig paramWrapConfig, String paramString1, String paramString2) {
    this.commonConfig = new CommonConfig();
    boolean bool = this.commonConfig.initialize(emmHome, paramString1, paramString2);
    if (paramWrapConfig.getSignConfig() != null)
      paramWrapConfig.getSignConfig().setEmmHome(CommonConfig.productHome); 
    if (!bool) {
      logger.severe("Exiting, Reading config failed!");
      return false;
    } 
    return true;
  }
  
  private boolean integrateSDK(boolean paramBoolean, int paramInt) {
    File file1 = new File(this.commonConfig.get("SDK_DIR") + "smali/com/");
    String str1 = this.commonConfig.getTempFolder().getAbsolutePath();
    String str2 = getTargetDexDir(str1 + File.separator + "apktoolExtract", paramInt);
    File file2 = new File(str1 + File.separator + "apktoolExtract" + "/" + str2 + "/com/");
    this.commonConfig.sdkSmaliDir = str1 + File.separator + "apktoolExtract" + "/" + str2 + "/";
    try {
      FileUtils.copyDirectory(file1, file2);
      file1 = new File(str1 + File.separator + "apktoolExtract" + "/assets/conf/" + this.mdoPlistFile.getName());
      try {
        FileUtils.copyFile(this.mdoPlistFile, file1);
        if (!paramBoolean) {
          File file = new File(str1 + File.separator + "apktoolExtract" + "/assets/CaMDOInterceptor.js");
          try {
            FileUtils.copyFile(new File(this.commonConfig.get("SDK_DIR") + "assets/CaMDOInterceptor.js"), file);
            return true;
          } catch (IOException iOException) {
            logger.severe(iOException.getMessage());
            return false;
          } 
        } 
        return true;
      } catch (IOException iOException) {
        logger.severe(iOException.getMessage());
        return false;
      } 
    } catch (IOException iOException) {
      logger.severe(iOException.getMessage());
      return false;
    } 
  }
  
  private String startWrapping(WrapConfig paramWrapConfig) {
    String str2 = paramWrapConfig.getApkFile();
    String str3 = paramWrapConfig.getPlistFile();
    paramWrapConfig.getListener();
    boolean bool2 = paramWrapConfig.isNores();
    boolean bool3 = paramWrapConfig.getSignConfig().isNoSign();
    boolean bool1 = paramWrapConfig.isDisableJsInterception();
    WrapperStatusBean wrapperStatusBean = paramWrapConfig.getBean();
    this.apkFile = new File(str2);
    if (!this.apkFile.exists()) {
      logger.severe("Exiting, Provided APK File does not exist." + str2);
      throw new Exception("Exiting, Provided APK File does not exist" + str2);
    } 
    this.mdoPlistFile = new File(str3);
    if (!this.mdoPlistFile.exists()) {
      logger.severe("Exiting, Provided MDO Plist File does not exist");
      throw new Exception("Exiting, Provided MDO Plist File does not exist");
    } 
    wrapperStatusBean.setWrappingStatus("Step 1 of 4: Extracting Target APK: " + this.apkFile.getName());
    wrapperStatusBean.setWrappingStep(WrapperStatusBean$WrappingStep.APK_EXTRACTION);
    APKExtractor aPKExtractor = new APKExtractor(this.apkFile, bool2);
    if (!aPKExtractor.extractAPKUsingAPKTool(this.commonConfig, paramWrapConfig.isVerbose())) {
      logger.severe("Exiting, APK Extraction failed!");
      throw new Exception("Exiting, APK Extraction failed!");
    } 
    logger.info("APK Extraction Completed!");
    SmaliParser smaliParser = new SmaliParser(this.apkFile);
    wrapperStatusBean.setWrappingStatus("Step 2 of 4: Instrumenting");
    wrapperStatusBean.setWrappingStep(WrapperStatusBean$WrappingStep.INSTRUMENTATION);
    if (!smaliParser.instrument(this.commonConfig)) {
      logger.severe("Exiting, Smali manipulation failed!");
      throw new Exception("Exiting, Smali manipulation failed!");
    } 
    logger.info("Smali manipulation Completed!");
    bool1 = integrateSDK(bool1, calculateTotalDexs(getDexMethodCounts()));
    if (!bool1) {
      logger.severe("Exiting, SDK Integration failed!");
      throw new Exception("Exiting, SDK Integration failed!");
    } 
    logger.info("SDK Integration Completed!");
    logger.info("Processing custom overrides");
    smaliParser.processCustomReplacements();
    if (!bool2) {
      bool1 = aPKExtractor.processManifestChanges(this.commonConfig);
      if (!bool1) {
        logger.severe("Exiting, AndroidManifest Binary to Text failed!");
        throw new Exception("Exiting, AndroidManifest Binary to Text failed!!");
      } 
      logger.info("AndroidManifest.xml permission modification Completed!");
    } else {
      System.out.println("resources not extracted. Won't modify AndroidManifest.xml");
    } 
    wrapperStatusBean.setWrappingStatus("Step 3 of 4: Packaging instrumented APK.");
    wrapperStatusBean.setWrappingStep(WrapperStatusBean$WrappingStep.PACK);
    String str1 = aPKExtractor.packageAPKUsingAPKTool(this.commonConfig, wrapperStatusBean, paramWrapConfig.isVerbose());
    bool2 = bool1;
    if (str1 != null) {
      if (str1.equalsIgnoreCase("NORES-RETRY")) {
        wrapperStatusBean.setWrappingStatus("\n");
        wrapperStatusBean.setWrappingStatus("Retrying Wrapping with nores Option.");
        wrapperStatusBean.setWrappingStatus("-------------------");
        paramWrapConfig.setNores(true);
        doWrap(paramWrapConfig);
        return "SUCCESS";
      } 
      bool2 = bool1;
      if (str1.equalsIgnoreCase("ERROR")) {
        wrapperStatusBean.setWrappingStatus("Wrapping Failure : : Error in packaging APK");
        bool2 = false;
      } 
    } 
    if (!bool2) {
      logger.severe("Exiting, Packaging using apktool failed!");
      throw new Exception("Exiting, Packaging using apktool failed!");
    } 
    logger.info("Packing with apktool Completed!");
    APKSigner aPKSigner = new APKSigner(this.apkFile);
    if (!bool3) {
      wrapperStatusBean.setWrappingStatus("Step 4 of 4: Signing APK with certificate.");
      wrapperStatusBean.setWrappingStep(WrapperStatusBean$WrappingStep.SIGN);
      if (!aPKSigner.sign(this.commonConfig, paramWrapConfig.getSignConfig())) {
        logger.severe("Exiting, Signing APK failed!");
        throw new Exception("Exiting, Signing APK failed!");
      } 
      logger.info("Signing APK Completed!");
    } else {
      wrapperStatusBean.setWrappingStatus("Not signing the APK file since -nosign is passed in");
      wrapperStatusBean.setWrappingStep(WrapperStatusBean$WrappingStep.SIGN);
      String str = this.commonConfig.getTempFolder().getAbsolutePath();
      (new File(str + File.separator + "manifest_modded_" + this.apkFile.getName())).renameTo(new File(str + File.separator + "signed_" + this.apkFile.getName()));
    } 
    if (!aPKSigner.align(this.commonConfig, paramWrapConfig.getOutputFileName())) {
      logger.severe("Exiting, Align APK failed!");
      throw new Exception("Exiting, Align APK failed!");
    } 
    logger.info("Align APK Completed!");
    wrapperStatusBean.setWrappingStatus("Wrapping Success : " + "Smart Containerization completed successfully. Please sign with your enterprise certificate and deploy!");
    return "SUCCESS";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\Wrapper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */