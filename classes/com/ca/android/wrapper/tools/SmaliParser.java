package com.ca.android.wrapper.tools;

import com.ca.android.wrapper.config.CommonConfig;
import com.ca.android.wrapper.config.ReplacementElement;
import com.ca.android.wrapper.config.WrapperMethodInsertElement;
import com.ca.android.wrapper.util.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.regex.Pattern;
import org.apache.commons.io.FileUtils;

public class SmaliParser {
  private static final String ANDROID_APP_INSTRUMENTATION_FILE = "android.xml";
  
  private static final String CAMDOCALLBACK_CLIENT_FILE;
  
  private static final String CAMDOINTEGRATION_CLIENT_FILE = "com" + File.separator + "ca" + File.separator + "integration" + File.separator + "CaMDOIntegration";
  
  private static final String CORDOVA_APP_INSTRUMENTATION_FILE = "android-cordova.xml";
  
  private static final Pattern methodReturnPattern;
  
  private int THREAD_MAX_SIZE = 10;
  
  private File apkFile;
  
  private String callbackAppJava = null;
  
  private String callbackClientJava = null;
  
  private CommonConfig commonConfig = null;
  
  private DecimalFormat df = new DecimalFormat();
  
  private String fromIntegrationReplace = "Lcom/ca/android/app/CaMDOIntegration";
  
  private String integrationAppJava = null;
  
  private String integrationClientJava = null;
  
  private Logger logger = Logger.getLogger();
  
  ArrayList<String> specialFiles = new ArrayList<String>();
  
  private String toIntegrationReplace = "Lcom/ca/integration/CaMDOIntegration";
  
  static {
    CAMDOCALLBACK_CLIENT_FILE = "com" + File.separator + "ca" + File.separator + "integration" + File.separator + "CaMDOCallback";
    methodReturnPattern = Pattern.compile("return\\-*");
  }
  
  public SmaliParser(File paramFile) {
    this.apkFile = paramFile;
    this.df.setMaximumFractionDigits(2);
  }
  
  private boolean autoDetect(CommonConfig paramCommonConfig) {
    boolean bool = false;
    String str = paramCommonConfig.get("SMALI_REPLACEMENT_FILE");
    if ("AUTO_DETECT".equals(str.trim())) {
      this.logger.debug("Auto-detecting App's Instrumentation file");
      File[] arrayOfFile = (new File(paramCommonConfig.getTempFolder().getAbsolutePath() + File.separator + "apktoolExtract")).listFiles();
      int j = arrayOfFile.length;
      int i = 0;
      boolean bool1;
      for (bool1 = false; i < j; bool1 = bool2) {
        File file = arrayOfFile[i];
        boolean bool3 = file.getName().startsWith("smali");
        boolean bool2 = bool1;
        if (!bool1) {
          bool2 = bool1;
          if (file.isDirectory()) {
            bool2 = bool1;
            if (bool3)
              bool2 = checkCordovaApp(file.getAbsolutePath()); 
          } 
        } 
        bool1 = bool;
        if (!bool) {
          bool1 = bool;
          if (file.isDirectory()) {
            bool1 = bool;
            if (bool3)
              bool1 = checkCrossWalkApp(file.getAbsolutePath()); 
          } 
        } 
        i++;
        bool = bool1;
      } 
      if (bool)
        paramCommonConfig.putProperty("isCrossWalk", "true"); 
      this.logger.debug("App is cordova based app : " + bool1);
      if (bool1) {
        String str1 = paramCommonConfig.get("CONF_DIR") + "android-cordova.xml";
        this.logger.debug("Wrapper is using Instrumentation file :" + str1);
        return paramCommonConfig.parseXML(str1);
      } 
      str = paramCommonConfig.get("CONF_DIR") + "android.xml";
      this.logger.debug("Wrapper is using Instrumentation file :" + str);
      return paramCommonConfig.parseXML(str);
    } 
    return paramCommonConfig.parseXML(str);
  }
  
  private boolean checkCordovaApp(String paramString) {
    return (new File(paramString + File.separator + "org" + File.separator + "apache" + File.separator + "cordova")).exists();
  }
  
  private boolean checkCrossWalkApp(String paramString) {
    return (new File(paramString + File.separator + "org" + File.separator + "xwalk" + File.separator + "core" + File.separator + "internal")).exists();
  }
  
  private List<String> collectFiles(String paramString) {
    ArrayList<String> arrayList = new ArrayList();
    if (paramString.endsWith(".smali")) {
      arrayList.add(this.commonConfig.sdkSmaliDir + paramString);
      return arrayList;
    } 
    File[] arrayOfFile = (new File(this.commonConfig.sdkSmaliDir + paramString)).listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    while (true) {
      if (i < j) {
        File file = arrayOfFile[i];
        if (file.isFile() && file.getName().endsWith(".smali"))
          arrayList.add(file.getAbsolutePath()); 
        i++;
        continue;
      } 
      return arrayList;
    } 
  }
  
  private Collection<String> getAllSmaliDirs(String paramString) {
    TreeSet<String> treeSet = new TreeSet();
    for (File file : (new File(paramString)).listFiles()) {
      if (file.isDirectory() && file.getName().contains("smali"))
        treeSet.add(file.getName()); 
    } 
    return treeSet;
  }
  
  private void insertWrapperMethod(String paramString1, File paramFile, WrapperMethodInsertElement paramWrapperMethodInsertElement, String paramString2) {
    // Byte code:
    //   0: aload_3
    //   1: invokevirtual getFromMethod : ()Ljava/lang/String;
    //   4: astore #10
    //   6: aload_3
    //   7: invokevirtual getToMethod : ()Ljava/lang/String;
    //   10: astore #8
    //   12: aload_3
    //   13: invokevirtual getCopyDirFrom : ()Ljava/lang/String;
    //   16: astore #7
    //   18: aload #7
    //   20: astore #6
    //   22: aload #7
    //   24: ifnull -> 56
    //   27: new java/lang/StringBuilder
    //   30: dup
    //   31: invokespecial <init> : ()V
    //   34: getstatic com/ca/android/wrapper/config/CommonConfig.productHome : Ljava/lang/String;
    //   37: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: getstatic java/io/File.separator : Ljava/lang/String;
    //   43: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: aload #7
    //   48: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: invokevirtual toString : ()Ljava/lang/String;
    //   54: astore #6
    //   56: aload_3
    //   57: invokevirtual getCopyDirTo : ()Ljava/lang/String;
    //   60: astore #9
    //   62: aload #9
    //   64: astore #7
    //   66: aload #9
    //   68: ifnull -> 108
    //   71: aload #9
    //   73: ldc_w '$SDK_SMALI_DIR'
    //   76: aload_1
    //   77: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   80: astore_1
    //   81: new java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial <init> : ()V
    //   88: aload #4
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: getstatic java/io/File.separator : Ljava/lang/String;
    //   96: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: aload_1
    //   100: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: invokevirtual toString : ()Ljava/lang/String;
    //   106: astore #7
    //   108: aload_3
    //   109: invokevirtual getWrapperMethodSmalicode : ()Ljava/lang/String;
    //   112: ldc_w '&lt;'
    //   115: ldc_w '<'
    //   118: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   121: ldc_w '&gt;'
    //   124: ldc_w '>'
    //   127: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   130: astore #4
    //   132: aload #6
    //   134: ifnull -> 167
    //   137: aload #7
    //   139: ifnull -> 167
    //   142: new java/io/File
    //   145: dup
    //   146: aload #6
    //   148: invokespecial <init> : (Ljava/lang/String;)V
    //   151: astore_1
    //   152: new java/io/File
    //   155: dup
    //   156: aload #7
    //   158: invokespecial <init> : (Ljava/lang/String;)V
    //   161: astore_3
    //   162: aload_1
    //   163: aload_3
    //   164: invokestatic copyDirectory : (Ljava/io/File;Ljava/io/File;)V
    //   167: new java/io/BufferedReader
    //   170: dup
    //   171: new java/io/FileReader
    //   174: dup
    //   175: aload_2
    //   176: invokespecial <init> : (Ljava/io/File;)V
    //   179: invokespecial <init> : (Ljava/io/Reader;)V
    //   182: astore #7
    //   184: new java/util/ArrayList
    //   187: dup
    //   188: invokespecial <init> : ()V
    //   191: astore #6
    //   193: iconst_0
    //   194: istore #5
    //   196: aload #7
    //   198: invokevirtual readLine : ()Ljava/lang/String;
    //   201: astore_3
    //   202: aload_3
    //   203: ifnull -> 381
    //   206: aload_3
    //   207: astore_1
    //   208: aload_3
    //   209: invokevirtual trim : ()Ljava/lang/String;
    //   212: aload #10
    //   214: invokevirtual equals : (Ljava/lang/Object;)Z
    //   217: ifeq -> 226
    //   220: iconst_1
    //   221: istore #5
    //   223: aload #8
    //   225: astore_1
    //   226: iload #5
    //   228: ifeq -> 333
    //   231: aload_1
    //   232: ldc_w '.end method'
    //   235: invokevirtual equals : (Ljava/lang/Object;)Z
    //   238: ifeq -> 333
    //   241: aload #6
    //   243: aload_1
    //   244: invokeinterface add : (Ljava/lang/Object;)Z
    //   249: pop
    //   250: aload #6
    //   252: aload #4
    //   254: invokeinterface add : (Ljava/lang/Object;)Z
    //   259: pop
    //   260: iconst_0
    //   261: istore #5
    //   263: goto -> 196
    //   266: astore #6
    //   268: aload #6
    //   270: invokevirtual printStackTrace : ()V
    //   273: aload_0
    //   274: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   277: new java/lang/StringBuilder
    //   280: dup
    //   281: invokespecial <init> : ()V
    //   284: ldc_w ' Copy failed from:'
    //   287: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: aload_1
    //   291: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   294: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   297: ldc_w ' to='
    //   300: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   303: aload_3
    //   304: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   307: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: ldc_w 'Exception='
    //   313: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: aload #6
    //   318: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   321: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: invokevirtual toString : ()Ljava/lang/String;
    //   327: invokevirtual severe : (Ljava/lang/String;)V
    //   330: goto -> 167
    //   333: aload #6
    //   335: aload_1
    //   336: invokeinterface add : (Ljava/lang/Object;)Z
    //   341: pop
    //   342: goto -> 196
    //   345: astore_1
    //   346: aload_1
    //   347: invokevirtual printStackTrace : ()V
    //   350: aload_0
    //   351: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   354: new java/lang/StringBuilder
    //   357: dup
    //   358: invokespecial <init> : ()V
    //   361: ldc_w 'Exception while modifying smali file :'
    //   364: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_1
    //   368: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   371: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: invokevirtual toString : ()Ljava/lang/String;
    //   377: invokevirtual severe : (Ljava/lang/String;)V
    //   380: return
    //   381: aload #7
    //   383: invokevirtual close : ()V
    //   386: new java/io/PrintWriter
    //   389: dup
    //   390: aload_2
    //   391: invokespecial <init> : (Ljava/io/File;)V
    //   394: astore_1
    //   395: aload #6
    //   397: invokeinterface iterator : ()Ljava/util/Iterator;
    //   402: astore_2
    //   403: aload_2
    //   404: invokeinterface hasNext : ()Z
    //   409: ifeq -> 428
    //   412: aload_1
    //   413: aload_2
    //   414: invokeinterface next : ()Ljava/lang/Object;
    //   419: checkcast java/lang/String
    //   422: invokevirtual println : (Ljava/lang/String;)V
    //   425: goto -> 403
    //   428: aload_1
    //   429: invokevirtual close : ()V
    //   432: return
    // Exception table:
    //   from	to	target	type
    //   162	167	266	java/io/IOException
    //   167	193	345	java/io/IOException
    //   196	202	345	java/io/IOException
    //   208	220	345	java/io/IOException
    //   231	260	345	java/io/IOException
    //   333	342	345	java/io/IOException
    //   381	403	345	java/io/IOException
    //   403	425	345	java/io/IOException
    //   428	432	345	java/io/IOException
  }
  
  private void insertWrapperMethods(String paramString, CommonConfig paramCommonConfig) {
    String str;
    List list = paramCommonConfig.getWrapperMethodElements();
    Collection<String> collection = getAllSmaliDirs(paramString);
    int i = collection.size();
    if (i > 1) {
      str = "smali_classes" + i;
    } else {
      str = "smali";
    } 
    for (WrapperMethodInsertElement wrapperMethodInsertElement : list) {
      String str1 = paramString + File.separator + wrapperMethodInsertElement.getTargetFilePath();
      Iterator<String> iterator = collection.iterator();
      while (iterator.hasNext()) {
        File file = new File(str1.replace("$SMALI_DIR", iterator.next()));
        if (file.exists())
          insertWrapperMethod(str, file, wrapperMethodInsertElement, paramString); 
      } 
    } 
  }
  
  private void replaceCallbackFile() {
    // Byte code:
    //   0: aload_0
    //   1: aload_0
    //   2: getfield commonConfig : Lcom/ca/android/wrapper/config/CommonConfig;
    //   5: ldc_w 'appCallbackFile'
    //   8: invokevirtual get : (Ljava/lang/String;)Ljava/lang/String;
    //   11: putfield callbackAppJava : Ljava/lang/String;
    //   14: aload_0
    //   15: getfield callbackClientJava : Ljava/lang/String;
    //   18: ifnull -> 172
    //   21: aload_0
    //   22: getfield callbackAppJava : Ljava/lang/String;
    //   25: ifnull -> 172
    //   28: new java/io/File
    //   31: dup
    //   32: aload_0
    //   33: getfield callbackAppJava : Ljava/lang/String;
    //   36: invokespecial <init> : (Ljava/lang/String;)V
    //   39: astore_2
    //   40: new java/io/File
    //   43: dup
    //   44: aload_0
    //   45: getfield callbackClientJava : Ljava/lang/String;
    //   48: invokespecial <init> : (Ljava/lang/String;)V
    //   51: astore #4
    //   53: aload_2
    //   54: aload #4
    //   56: invokestatic copyFile : (Ljava/io/File;Ljava/io/File;)V
    //   59: new java/io/BufferedReader
    //   62: dup
    //   63: new java/io/FileReader
    //   66: dup
    //   67: aload #4
    //   69: invokespecial <init> : (Ljava/io/File;)V
    //   72: invokespecial <init> : (Ljava/io/Reader;)V
    //   75: astore #6
    //   77: new java/util/ArrayList
    //   80: dup
    //   81: invokespecial <init> : ()V
    //   84: astore #5
    //   86: aload #6
    //   88: invokevirtual readLine : ()Ljava/lang/String;
    //   91: astore_3
    //   92: aload_3
    //   93: ifnull -> 238
    //   96: aload_3
    //   97: astore_2
    //   98: aload_3
    //   99: invokevirtual trim : ()Ljava/lang/String;
    //   102: aload_0
    //   103: getfield fromIntegrationReplace : Ljava/lang/String;
    //   106: invokevirtual contains : (Ljava/lang/CharSequence;)Z
    //   109: ifeq -> 125
    //   112: aload_3
    //   113: aload_0
    //   114: getfield fromIntegrationReplace : Ljava/lang/String;
    //   117: aload_0
    //   118: getfield toIntegrationReplace : Ljava/lang/String;
    //   121: invokevirtual replace : (Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   124: astore_2
    //   125: aload #5
    //   127: aload_2
    //   128: invokeinterface add : (Ljava/lang/Object;)Z
    //   133: pop
    //   134: goto -> 86
    //   137: astore_2
    //   138: aload_2
    //   139: invokevirtual printStackTrace : ()V
    //   142: aload_0
    //   143: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   146: new java/lang/StringBuilder
    //   149: dup
    //   150: invokespecial <init> : ()V
    //   153: ldc_w 'Exception while modifying smali file :'
    //   156: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload_2
    //   160: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   163: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: invokevirtual toString : ()Ljava/lang/String;
    //   169: invokevirtual severe : (Ljava/lang/String;)V
    //   172: return
    //   173: astore_3
    //   174: aload_3
    //   175: invokevirtual printStackTrace : ()V
    //   178: aload_0
    //   179: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   182: new java/lang/StringBuilder
    //   185: dup
    //   186: invokespecial <init> : ()V
    //   189: ldc_w 'Callback Copy failed from:'
    //   192: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   199: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc_w ' to='
    //   205: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: aload #4
    //   210: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   213: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc_w 'Exception='
    //   219: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: aload_3
    //   223: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   226: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: invokevirtual toString : ()Ljava/lang/String;
    //   232: invokevirtual severe : (Ljava/lang/String;)V
    //   235: goto -> 59
    //   238: aload #6
    //   240: invokevirtual close : ()V
    //   243: new java/io/PrintWriter
    //   246: dup
    //   247: aload #4
    //   249: invokespecial <init> : (Ljava/io/File;)V
    //   252: astore_2
    //   253: aload #5
    //   255: invokeinterface iterator : ()Ljava/util/Iterator;
    //   260: astore_3
    //   261: aload_3
    //   262: invokeinterface hasNext : ()Z
    //   267: ifeq -> 286
    //   270: aload_2
    //   271: aload_3
    //   272: invokeinterface next : ()Ljava/lang/Object;
    //   277: checkcast java/lang/String
    //   280: invokevirtual println : (Ljava/lang/String;)V
    //   283: goto -> 261
    //   286: aload_2
    //   287: invokevirtual close : ()V
    //   290: new java/io/File
    //   293: dup
    //   294: new java/lang/StringBuilder
    //   297: dup
    //   298: invokespecial <init> : ()V
    //   301: aload_0
    //   302: getfield commonConfig : Lcom/ca/android/wrapper/config/CommonConfig;
    //   305: invokevirtual getTempFolder : ()Ljava/io/File;
    //   308: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   311: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: getstatic java/io/File.separator : Ljava/lang/String;
    //   317: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: ldc_w 'sdk'
    //   323: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: getstatic java/io/File.separator : Ljava/lang/String;
    //   329: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: ldc 'smali'
    //   334: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: getstatic java/io/File.separator : Ljava/lang/String;
    //   340: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: getstatic com/ca/android/wrapper/tools/SmaliParser.CAMDOCALLBACK_CLIENT_FILE : Ljava/lang/String;
    //   346: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: ldc '.smali'
    //   351: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: invokevirtual toString : ()Ljava/lang/String;
    //   357: invokespecial <init> : (Ljava/lang/String;)V
    //   360: astore_2
    //   361: aload #4
    //   363: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   366: aload_2
    //   367: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   370: invokevirtual equals : (Ljava/lang/Object;)Z
    //   373: istore_1
    //   374: iload_1
    //   375: ifne -> 172
    //   378: aload_2
    //   379: invokevirtual delete : ()Z
    //   382: pop
    //   383: return
    //   384: astore_3
    //   385: aload_0
    //   386: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   389: new java/lang/StringBuilder
    //   392: dup
    //   393: invokespecial <init> : ()V
    //   396: ldc_w 'Error in deleting SDK  CAMdoCallBack file '
    //   399: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: aload_3
    //   403: invokevirtual getLocalizedMessage : ()Ljava/lang/String;
    //   406: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: ldc_w ' file:- '
    //   412: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   415: aload_2
    //   416: invokevirtual append : (Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   419: invokevirtual toString : ()Ljava/lang/String;
    //   422: invokevirtual severe : (Ljava/lang/String;)V
    //   425: return
    // Exception table:
    //   from	to	target	type
    //   53	59	173	java/io/IOException
    //   59	86	137	java/io/IOException
    //   86	92	137	java/io/IOException
    //   98	125	137	java/io/IOException
    //   125	134	137	java/io/IOException
    //   238	261	137	java/io/IOException
    //   261	283	137	java/io/IOException
    //   286	374	137	java/io/IOException
    //   378	383	384	java/lang/Exception
    //   378	383	137	java/io/IOException
    //   385	425	137	java/io/IOException
  }
  
  private void replaceIntegrationFile() {
    this.integrationAppJava = this.commonConfig.get("appIntegrationFile");
    if (this.integrationClientJava != null && this.integrationAppJava != null) {
      File file1 = new File(this.integrationAppJava);
      File file2 = new File(this.integrationClientJava);
      try {
        FileUtils.copyFile(file1, file2);
      } catch (IOException iOException) {
        iOException.printStackTrace();
        this.logger.severe("Integration Copy failed from:" + file1.getAbsolutePath() + " to=" + file2.getAbsolutePath() + "Exception=" + iOException.getLocalizedMessage());
      } 
      try {
        BufferedReader bufferedReader = new BufferedReader(new FileReader(file2));
        ArrayList<String> arrayList = new ArrayList();
        while (true) {
          String str = bufferedReader.readLine();
          if (str != null) {
            String str1 = str;
            if (str.trim().contains(this.fromIntegrationReplace))
              str1 = str.replace(this.fromIntegrationReplace, this.toIntegrationReplace); 
            arrayList.add(str1);
            continue;
          } 
          bufferedReader.close();
          PrintWriter printWriter = new PrintWriter(file2);
          Iterator<String> iterator = arrayList.iterator();
          while (iterator.hasNext())
            printWriter.println(iterator.next()); 
          printWriter.close();
          return;
        } 
      } catch (IOException iOException) {
        iOException.printStackTrace();
        this.logger.severe("Exception while modifying smali file :" + iOException.getLocalizedMessage());
      } 
    } 
  }
  
  public void addSpecialz(String paramString, ArrayList<String> paramArrayList) {
    for (ReplacementElement replacementElement : this.commonConfig.getSpecialReplaceDataList()) {
      if (paramString != null && paramString.contains(replacementElement.getFile()))
        paramArrayList.add(paramString); 
    } 
  }
  
  public void getFileNames(String paramString, ArrayList<String> paramArrayList1, ArrayList<String> paramArrayList2) {
    File[] arrayOfFile = (new File(paramString)).listFiles();
    int i;
    for (i = 0; i < arrayOfFile.length; i++) {
      if (arrayOfFile[i].isDirectory()) {
        File[] arrayOfFile1 = arrayOfFile[i].listFiles();
        int j;
        for (j = 0; j < arrayOfFile1.length; j++) {
          if (arrayOfFile1[j].toString().endsWith(".smali")) {
            paramArrayList1.add(arrayOfFile1[j].toString());
            if (arrayOfFile1[j].getAbsolutePath().contains(CAMDOINTEGRATION_CLIENT_FILE))
              this.integrationClientJava = arrayOfFile1[j].getAbsolutePath(); 
            if (arrayOfFile1[j].getAbsolutePath().contains(CAMDOCALLBACK_CLIENT_FILE))
              this.callbackClientJava = arrayOfFile1[j].getAbsolutePath(); 
          } 
          if (arrayOfFile1[j].isDirectory())
            getFileNames(arrayOfFile1[j].getAbsolutePath(), paramArrayList1, paramArrayList2); 
        } 
      } else if (arrayOfFile[i].toString().endsWith(".smali")) {
        if (arrayOfFile[i].getAbsolutePath().contains(CAMDOINTEGRATION_CLIENT_FILE))
          this.integrationClientJava = arrayOfFile[i].getAbsolutePath(); 
        if (arrayOfFile[i].getAbsolutePath().contains(CAMDOCALLBACK_CLIENT_FILE))
          this.callbackClientJava = arrayOfFile[i].getAbsolutePath(); 
        paramArrayList1.add(arrayOfFile[i].toString());
      } 
    } 
  }
  
  public boolean instrument(CommonConfig paramCommonConfig) {
    ExecutorService executorService;
    String str;
    ArrayList<String> arrayList;
    try {
      if (!autoDetect(paramCommonConfig)) {
        this.logger.severe("Exiting, Reading Instrumentation file failed!");
        return false;
      } 
      this.commonConfig = paramCommonConfig;
      executorService = Executors.newFixedThreadPool(this.THREAD_MAX_SIZE);
      arrayList = new ArrayList();
      str = paramCommonConfig.getTempFolder().getAbsolutePath();
      getFileNames(str + File.separator + "apktoolExtract", arrayList, this.specialFiles);
      arrayList.size();
      List<List<String>> list = splitList(arrayList, this.THREAD_MAX_SIZE);
      arrayList = new ArrayList<String>();
      Iterator<List<String>> iterator = list.iterator();
      while (iterator.hasNext())
        arrayList.add((String)executorService.submit(new SmaliReplaceTask(paramCommonConfig, iterator.next()))); 
    } catch (Exception exception) {
      exception.printStackTrace();
      this.logger.severe(exception.getMessage());
      return false;
    } 
    for (Future<String> future : arrayList) {
      try {
        String str1 = future.get();
        System.out.print(".");
      } catch (Exception exception1) {
        exception1.printStackTrace();
        this.logger.severe(exception1.getMessage());
      } 
    } 
    executorService.shutdown();
    this.logger.debug("Inserting Wrapper Methods....");
    insertWrapperMethods(str + File.separator + "apktoolExtract", (CommonConfig)exception);
    this.logger.debug("Replacing Integration Smali .....");
    replaceIntegrationFile();
    replaceCallbackFile();
    System.out.print("Done Instrumenting.\n");
    return true;
  }
  
  public void processCustomReplacements() {
    boolean bool;
    this.commonConfig.configureStubs();
    if (this.commonConfig.getProperty("isCrossWalk") != null) {
      bool = true;
    } else {
      bool = false;
    } 
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (ReplacementElement replacementElement : this.commonConfig.getSpecialReplaceDataList()) {
      String str = replacementElement.getFile();
      List<ReplacementElement> list2 = (List)hashMap.get(str);
      List<ReplacementElement> list1 = list2;
      if (list2 == null) {
        list1 = new ArrayList();
        hashMap.put(str, list1);
      } 
      list1.add(replacementElement);
    } 
    for (String str : hashMap.keySet()) {
      if ((str.contains("JSCaMDOIntegration") && bool) || !str.contains("JSCaMDOIntegration")) {
        List<ReplacementElement> list = (List)hashMap.get(str);
        Iterator<String> iterator = collectFiles(str).iterator();
        while (iterator.hasNext())
          ReplaceUtil.processSpecial(iterator.next(), list, this.commonConfig.isMultiDex); 
      } 
    } 
  }
  
  public <T> List<List<T>> splitList(List<T> paramList, int paramInt) {
    ArrayList<List<T>> arrayList = new ArrayList();
    int k = paramList.size() / paramInt;
    int j = paramList.size();
    int m = paramList.size();
    int i = 0;
    paramInt = j % paramInt;
    while (i < m) {
      if (paramInt > 0) {
        paramInt--;
        j = k + 1;
      } else {
        j = k;
      } 
      arrayList.add(new ArrayList(paramList.subList(i, Math.min(m, i + j))));
      i = j + i;
    } 
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\tools\SmaliParser.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */