package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.WrapperStatusBean;
import com.ca.android.wrapper.config.CommonConfig;
import com.ca.android.wrapper.util.Logger;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecuteResultHandler;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteResultHandler;
import org.apache.commons.exec.ExecuteStreamHandler;
import org.apache.commons.exec.PumpStreamHandler;
import org.apache.commons.io.FileUtils;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class APKExtractor {
  private static Logger logger = Logger.getLogger();
  
  private File apkFile;
  
  private String foundFilePath = null;
  
  private boolean noRes;
  
  public APKExtractor(File paramFile, boolean paramBoolean) {
    this.apkFile = paramFile;
    this.noRes = paramBoolean;
  }
  
  private void addAAPTtoPath(String paramString) {
    DefaultExecuteResultHandler defaultExecuteResultHandler = new DefaultExecuteResultHandler();
    CommandLine commandLine = new CommandLine("export PATH=$PATH:" + paramString);
    (new DefaultExecutor()).execute(commandLine, (ExecuteResultHandler)defaultExecuteResultHandler);
    defaultExecuteResultHandler.waitFor();
  }
  
  private void adjustPermissions(File paramFile, String paramString) {
    String str;
    boolean bool = paramString.contains("<uses-permission");
    StringBuffer stringBuffer = new StringBuffer();
    for (String str1 : CommonConfig.allPermissions) {
      if (paramString.indexOf(str1) == -1)
        stringBuffer.append("    <uses-permission android:name=\"" + str1 + "\" />\n"); 
    } 
    if (bool) {
      str = "<uses-permission";
    } else {
      str = "    <application";
    } 
    stringBuffer.append("    " + str);
    FileUtils.writeStringToFile(paramFile, paramString.replaceFirst(str, stringBuffer.toString()));
  }
  
  private boolean checkIfFailedOfResources(String paramString) {
    return (paramString.contains("brut.androlib.Androlib.buildResources") && paramString.contains("AndrolibResources.java") && paramString.contains("brut.androlib.AndrolibException"));
  }
  
  protected static int executeCommand(String[] paramArrayOfString) {
    BufferedReader bufferedReader;
    try {
      StringBuffer stringBuffer = new StringBuffer();
      int j = paramArrayOfString.length;
      for (int i = 0; i < j; i++) {
        String str1 = paramArrayOfString[i];
        stringBuffer.append(str1 + " ");
      } 
      logger.debug("Running command:" + stringBuffer.toString());
      String str = System.getProperty("user.dir");
      logger.debug("Current  dir using System:" + str);
      Process process = Runtime.getRuntime().exec(paramArrayOfString);
      bufferedReader = new BufferedReader(new InputStreamReader(process.getErrorStream()));
      BufferedReader bufferedReader1 = new BufferedReader(new InputStreamReader(process.getInputStream()));
      while (true) {
        String str1 = bufferedReader1.readLine();
        if (str1 != null) {
          System.out.println(str1);
          continue;
        } 
        break;
      } 
    } catch (Throwable throwable) {
      throwable.printStackTrace();
      return -1;
    } 
    while (true) {
      String str = bufferedReader.readLine();
      if (str != null) {
        System.out.println(str);
        continue;
      } 
      return throwable.waitFor();
    } 
  }
  
  private void findIntegrationAppFile(CommonConfig paramCommonConfig, String paramString) {
    searchFiles(new File(paramString), "com" + File.separator + "ca" + File.separator + "android" + File.separator + "app" + File.separator + "CaMDOIntegration");
    paramCommonConfig.putProperty("appIntegrationFile", this.foundFilePath);
    searchFiles(new File(paramString), "com" + File.separator + "ca" + File.separator + "integration" + File.separator + "CaMDOCallback");
    paramCommonConfig.putProperty("appCallbackFile", this.foundFilePath);
  }
  
  private List<String> getMissingPermissions() {
    ArrayList<String> arrayList = new ArrayList();
    String str = CommonConfig.originalManifestContent;
    for (String str1 : CommonConfig.allPermissions) {
      if (str.indexOf(str1) == -1)
        arrayList.add(str1); 
    } 
    return arrayList;
  }
  
  private void searchFiles(File paramFile, String paramString) {
    for (File file : paramFile.listFiles()) {
      if (file.isDirectory()) {
        searchFiles(file, paramString);
      } else if (file.getName().endsWith(".smali") && file.getAbsolutePath().contains(paramString)) {
        this.foundFilePath = file.getAbsolutePath();
      } 
    } 
  }
  
  public void changeApplication(String paramString) {
    boolean bool2 = false;
    Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(paramString);
    Element element = (Element)document.getElementsByTagName("application").item(0);
    boolean bool1 = bool2;
    if (element.getAttribute("android:name") != null) {
      bool1 = bool2;
      if (!element.getAttribute("android:name").trim().equalsIgnoreCase(""))
        bool1 = true; 
    } 
    if (!bool1) {
      element.setAttribute("android:name", "com.ca.android.app.CaMDOApplication");
      output(document, paramString);
    } 
  }
  
  public boolean extractAPKUsingAPKTool(CommonConfig paramCommonConfig, boolean paramBoolean) {
    try {
      String str2 = paramCommonConfig.get("TOOLS_DIR");
      String str1 = paramCommonConfig.getTempFolder().getAbsolutePath();
      DefaultExecuteResultHandler defaultExecuteResultHandler = new DefaultExecuteResultHandler();
      CommandLine commandLine = new CommandLine("java");
      commandLine.addArgument("-jar");
      commandLine.addArgument(str2 + "apktool.jar", false);
      if (!paramBoolean)
        commandLine.addArgument("-q"); 
      commandLine.addArgument("d");
      commandLine.addArgument("-p");
      commandLine.addArgument(str1 + File.separator + "tmpDex" + File.separator);
      if (this.noRes)
        commandLine.addArgument("-r"); 
      commandLine.addArgument(this.apkFile.getAbsolutePath(), false);
      commandLine.addArgument("-o");
      commandLine.addArgument(str1 + File.separator + "apktoolExtract");
      logger.info(commandLine.toString());
      (new DefaultExecutor()).execute(commandLine, (ExecuteResultHandler)defaultExecuteResultHandler);
      defaultExecuteResultHandler.waitFor();
      return true;
    } catch (Exception exception) {
      exception.printStackTrace();
      logger.severe(exception.getMessage());
      return false;
    } 
  }
  
  public boolean extractSDKAPKUsingAPKTool(CommonConfig paramCommonConfig) {
    try {
      String str1 = paramCommonConfig.get("TOOLS_DIR");
      String str2 = paramCommonConfig.getTempFolder().getAbsolutePath();
      DefaultExecuteResultHandler defaultExecuteResultHandler = new DefaultExecuteResultHandler();
      CommandLine commandLine = new CommandLine("java");
      commandLine.addArgument("-jar");
      commandLine.addArgument(str1 + "apktool.jar", false);
      commandLine.addArgument("-q");
      commandLine.addArgument("-p");
      commandLine.addArgument(str2 + File.separator + "catmpDex" + File.separator);
      commandLine.addArgument("d");
      commandLine.addArgument(this.apkFile.getAbsolutePath(), false);
      commandLine.addArgument("-o");
      commandLine.addArgument(str2 + File.separator + "sdk");
      logger.info(commandLine.toString());
      (new DefaultExecutor()).execute(commandLine, (ExecuteResultHandler)defaultExecuteResultHandler);
      defaultExecuteResultHandler.waitFor();
      findIntegrationAppFile(paramCommonConfig, str2 + File.separator + "sdk");
      return true;
    } catch (Exception exception) {
      exception.printStackTrace();
      logger.severe(exception.getMessage());
      return false;
    } 
  }
  
  public final void output(Document paramDocument, String paramString) {
    try {
      Transformer transformer = TransformerFactory.newInstance().newTransformer();
      transformer.setOutputProperty("encoding", "UTF-8");
      transformer.setOutputProperty("indent", "yes");
      FileWriter fileWriter = new FileWriter(paramString, false);
    } finally {
      paramDocument = null;
    } 
    if (paramString != null)
      paramString.close(); 
    throw paramDocument;
  }
  
  public String packageAPKUsingAPKTool(CommonConfig paramCommonConfig, WrapperStatusBean paramWrapperStatusBean, boolean paramBoolean) {
    try {
      String str2 = paramCommonConfig.get("TOOLS_DIR");
      paramCommonConfig.get("OSNAME");
      String str1 = paramCommonConfig.getTempFolder().getAbsolutePath();
      String str3 = str1 + File.separator + "manifest_modded_" + this.apkFile.getName();
      DefaultExecuteResultHandler defaultExecuteResultHandler = new DefaultExecuteResultHandler();
      CommandLine commandLine = new CommandLine("java");
      commandLine.addArgument("-jar");
      commandLine.addArgument(str2 + "apktool.jar", false);
      if (!paramBoolean)
        commandLine.addArgument("-q"); 
      commandLine.addArgument("-p");
      commandLine.addArgument(str1 + File.separator + "tmpDex" + File.separator);
      commandLine.addArgument("b");
      commandLine.addArgument(str1 + File.separator + "apktoolExtract");
      commandLine.addArgument("-o");
      commandLine.addArgument(str3, false);
      logger.info(commandLine.toString());
      ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
      PumpStreamHandler pumpStreamHandler = new PumpStreamHandler(byteArrayOutputStream);
      DefaultExecutor defaultExecutor = new DefaultExecutor();
      defaultExecutor.setWorkingDirectory(new File(str1));
      defaultExecutor.setStreamHandler((ExecuteStreamHandler)pumpStreamHandler);
      defaultExecutor.execute(commandLine, (ExecuteResultHandler)defaultExecuteResultHandler);
      defaultExecuteResultHandler.waitFor();
      str1 = byteArrayOutputStream.toString();
      if (paramBoolean)
        System.out.println(str1); 
      if (checkIfFailedOfResources(str1)) {
        paramWrapperStatusBean.setWrappingStatus("\n");
        paramWrapperStatusBean.setWrappingStatus("ERROR:Resources Packaging Failed");
        List<String> list = getMissingPermissions();
        int i = list.size();
        if (paramBoolean) {
          paramWrapperStatusBean.setWrappingStatus("---------------------------------------------------------");
          paramWrapperStatusBean.setWrappingStatus(str1);
          paramWrapperStatusBean.setWrappingStatus("---------------------------------------------------------");
        } 
        if (i != 0) {
          paramWrapperStatusBean.setWrappingStatus("Missing Permissions ");
          paramWrapperStatusBean.setWrappingStatus("-------------------");
          Iterator<String> iterator = list.iterator();
          while (iterator.hasNext())
            paramWrapperStatusBean.setWrappingStatus(iterator.next()); 
          paramWrapperStatusBean.setWrappingStatus("-------------------");
          return "ERROR";
        } 
      } else {
        return "SUCCESS";
      } 
    } catch (Exception exception) {
      logger.severe(exception.getMessage());
      return "ERROR";
    } 
    return "NORES-RETRY";
  }
  
  public boolean processManifestChanges(CommonConfig paramCommonConfig) {
    try {
      String str1 = paramCommonConfig.getTempFolder().getAbsolutePath();
      File file = new File(str1 + "/apktoolExtract/AndroidManifest.xml");
      String str2 = FileUtils.readFileToString(file);
      if (CommonConfig.originalManifestContent == null)
        CommonConfig.originalManifestContent = str2; 
      adjustPermissions(file, str2);
      return true;
    } catch (Exception exception) {
      logger.severe(exception.getMessage());
      return false;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\APKExtractor.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */