package com.ca.android.wrapper.config;

import com.ca.android.wrapper.util.Logger;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class CommonConfig {
  public static final String ALIGNED = "wrapped_";
  
  public static final String APKTOOL_EXTRACT_DIR = "apktoolExtract";
  
  private static final String CLASS_REPLACEMENT_NODE = "classReplacement";
  
  public static final String CONF_DIR = "CONF_DIR";
  
  public static final String KEYSTORE_FILE = "CERTIFICATE_DIR";
  
  public static final String MANIFEST_MODDED = "manifest_modded_";
  
  public static final String MODDED = "modded_";
  
  public static final String OS_NAME = "OSNAME";
  
  public static final int OUTPUT_APK_DIR = 2;
  
  public static final int OUTPUT_SMALI_DIR = 1;
  
  private static final String REGEX_REPLACEMENT_NODE = "regexReplacement";
  
  public static final String SDK_APK = "SDK_APK";
  
  public static final String SDK_DIR = "SDK_DIR";
  
  public static final String SIGNED = "signed_";
  
  public static final String SMALI_REPLACEMENT_FILE = "SMALI_REPLACEMENT_FILE";
  
  private static final String SPECIAL_REPLACEMENT_NODE = "specialReplacement";
  
  public static final int TEMP_APK_DIR = 4;
  
  public static final int TEMP_DIR = 3;
  
  public static final String TOOLS_DIR = "TOOLS_DIR";
  
  private static final String WRAPPER_METHOD_INSERT_NODE = "wrapperMethodInsert";
  
  private static final String XML_ATTRIBUTE_TARGETFILE = "targetFile";
  
  private static final String XML_NODE_FILE = "file";
  
  private static final String XML_NODE_FROM = "from";
  
  private static final String XML_NODE_INSERT_AFTER = "insertAfter";
  
  private static final String XML_NODE_INSERT_WHAT = "insertWhat";
  
  private static final String XML_NODE_MATCHER = "matcher";
  
  private static final String XML_NODE_METHODTYPE_FROM = "methodFrom";
  
  private static final String XML_NODE_METHODTYPE_TO = "methodTo";
  
  private static final String XML_NODE_PATTERN = "pattern";
  
  private static final String XML_NODE_SKIP_FILE = "skipFile";
  
  private static final String XML_NODE_TO = "to";
  
  private static final String XML_NODE_WRAPPER_METHOD = "wrapperMethod";
  
  public static List<String> allPermissions;
  
  public static String originalManifestContent;
  
  public static String productHome;
  
  private List<ReplacementElement> classReplaceData;
  
  public boolean isMultiDex = false;
  
  private Logger logger = Logger.getLogger();
  
  private HashMap<String, String> prop;
  
  private List<ReplacementElement> regexReplaceData;
  
  public String sdkSmaliDir = "";
  
  private List<ReplacementElement> specialReplaceData;
  
  private File tempFolder = null;
  
  private List<WrapperMethodInsertElement> wrapperMethodElements;
  
  public static String getProductHomeFromSystemEnv() {
    // Byte code:
    //   0: ldc 'ca.emm.home'
    //   2: invokestatic getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   5: astore_1
    //   6: aload_1
    //   7: ifnull -> 19
    //   10: aload_1
    //   11: astore_0
    //   12: aload_1
    //   13: invokevirtual length : ()I
    //   16: ifgt -> 25
    //   19: ldc 'CA_EMM_HOME'
    //   21: invokestatic getenv : (Ljava/lang/String;)Ljava/lang/String;
    //   24: astore_0
    //   25: aload_0
    //   26: astore_1
    //   27: aload_0
    //   28: ldc '/'
    //   30: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   33: ifne -> 67
    //   36: aload_0
    //   37: astore_1
    //   38: aload_0
    //   39: ldc '\'
    //   41: invokevirtual endsWith : (Ljava/lang/String;)Z
    //   44: ifne -> 67
    //   47: new java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial <init> : ()V
    //   54: aload_0
    //   55: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc '/'
    //   60: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual toString : ()Ljava/lang/String;
    //   66: astore_1
    //   67: aload_1
    //   68: areturn
  }
  
  private boolean processIStubSmali(File paramFile) {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore #7
    //   5: aconst_null
    //   6: astore #6
    //   8: new java/io/BufferedReader
    //   11: dup
    //   12: new java/io/FileReader
    //   15: dup
    //   16: aload_1
    //   17: invokespecial <init> : (Ljava/io/File;)V
    //   20: invokespecial <init> : (Ljava/io/Reader;)V
    //   23: astore #8
    //   25: aconst_null
    //   26: astore_2
    //   27: aconst_null
    //   28: astore #6
    //   30: aconst_null
    //   31: astore #5
    //   33: aload #6
    //   35: astore #4
    //   37: aload #5
    //   39: astore_3
    //   40: aload #8
    //   42: invokevirtual readLine : ()Ljava/lang/String;
    //   45: astore #9
    //   47: aload #9
    //   49: ifnull -> 203
    //   52: aload_3
    //   53: ifnonnull -> 98
    //   56: ldc '.class public.*abstract.* L(.*);'
    //   58: invokestatic compile : (Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   61: aload #9
    //   63: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   66: astore #9
    //   68: aload_3
    //   69: astore #5
    //   71: aload #4
    //   73: astore #6
    //   75: aload #9
    //   77: invokevirtual matches : ()Z
    //   80: ifeq -> 33
    //   83: aload #9
    //   85: iconst_1
    //   86: invokevirtual group : (I)Ljava/lang/String;
    //   89: astore #5
    //   91: aload #4
    //   93: astore #6
    //   95: goto -> 33
    //   98: aload #4
    //   100: ifnonnull -> 144
    //   103: ldc '.*forClass = "(.*)"'
    //   105: invokestatic compile : (Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   108: aload #9
    //   110: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   113: astore #9
    //   115: aload_3
    //   116: astore #5
    //   118: aload #4
    //   120: astore #6
    //   122: aload #9
    //   124: invokevirtual matches : ()Z
    //   127: ifeq -> 33
    //   130: aload #9
    //   132: iconst_1
    //   133: invokevirtual group : (I)Ljava/lang/String;
    //   136: astore #6
    //   138: aload_3
    //   139: astore #5
    //   141: goto -> 33
    //   144: aload_3
    //   145: astore #5
    //   147: aload #4
    //   149: astore #6
    //   151: aload_2
    //   152: ifnonnull -> 33
    //   155: ldc '.*id = "(.*)"'
    //   157: invokestatic compile : (Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   160: aload #9
    //   162: invokevirtual matcher : (Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   165: astore #9
    //   167: aload_3
    //   168: astore #5
    //   170: aload #4
    //   172: astore #6
    //   174: aload #9
    //   176: invokevirtual matches : ()Z
    //   179: ifeq -> 33
    //   182: aload #9
    //   184: iconst_1
    //   185: invokevirtual group : (I)Ljava/lang/String;
    //   188: astore #5
    //   190: aload #5
    //   192: astore_2
    //   193: aload_3
    //   194: astore #5
    //   196: aload #4
    //   198: astore #6
    //   200: goto -> 33
    //   203: aload_2
    //   204: astore #5
    //   206: aload_3
    //   207: astore #6
    //   209: aload #4
    //   211: astore #7
    //   213: aload #8
    //   215: ifnull -> 237
    //   218: iconst_0
    //   219: ifeq -> 448
    //   222: aload #8
    //   224: invokevirtual close : ()V
    //   227: aload #4
    //   229: astore #7
    //   231: aload_3
    //   232: astore #6
    //   234: aload_2
    //   235: astore #5
    //   237: aload #6
    //   239: ifnull -> 538
    //   242: aload #7
    //   244: ifnull -> 538
    //   247: new java/lang/StringBuilder
    //   250: dup
    //   251: invokespecial <init> : ()V
    //   254: ldc 'L'
    //   256: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: aload #6
    //   261: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: ldc ';'
    //   266: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: invokevirtual toString : ()Ljava/lang/String;
    //   272: astore_3
    //   273: new java/lang/StringBuilder
    //   276: dup
    //   277: invokespecial <init> : ()V
    //   280: ldc 'L'
    //   282: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: aload #7
    //   287: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: ldc ';'
    //   292: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: invokevirtual toString : ()Ljava/lang/String;
    //   298: astore #4
    //   300: new com/ca/android/wrapper/config/ReplacementElement
    //   303: dup
    //   304: invokespecial <init> : ()V
    //   307: astore_2
    //   308: aload_2
    //   309: ldc 'specialReplacement'
    //   311: invokevirtual setType : (Ljava/lang/String;)V
    //   314: aload #5
    //   316: astore_1
    //   317: aload #5
    //   319: ifnonnull -> 325
    //   322: ldc 'istub'
    //   324: astore_1
    //   325: aload_2
    //   326: aload_1
    //   327: invokevirtual setReplaceFor : (Ljava/lang/String;)V
    //   330: aload_2
    //   331: invokevirtual getPatterns : ()Ljava/util/List;
    //   334: aload_3
    //   335: invokeinterface add : (Ljava/lang/Object;)Z
    //   340: pop
    //   341: aload_2
    //   342: aload_3
    //   343: invokevirtual setReplaceFrom : (Ljava/lang/String;)V
    //   346: aload_2
    //   347: aload #4
    //   349: invokevirtual setReplaceTo : (Ljava/lang/String;)V
    //   352: aload_2
    //   353: ldc_w 'com/ca/android/app'
    //   356: invokevirtual setFile : (Ljava/lang/String;)V
    //   359: aload_0
    //   360: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   363: new java/lang/StringBuilder
    //   366: dup
    //   367: invokespecial <init> : ()V
    //   370: ldc_w 'Adding IStub replacement for '
    //   373: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: aload #6
    //   378: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: ldc_w ' => '
    //   384: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: aload #7
    //   389: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   392: invokevirtual toString : ()Ljava/lang/String;
    //   395: invokevirtual debug : (Ljava/lang/String;)V
    //   398: aload_0
    //   399: getfield specialReplaceData : Ljava/util/List;
    //   402: aload_2
    //   403: invokeinterface add : (Ljava/lang/Object;)Z
    //   408: pop
    //   409: iconst_1
    //   410: ireturn
    //   411: astore #5
    //   413: new java/lang/NullPointerException
    //   416: dup
    //   417: invokespecial <init> : ()V
    //   420: athrow
    //   421: astore #5
    //   423: aload_0
    //   424: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   427: aload #5
    //   429: invokevirtual getMessage : ()Ljava/lang/String;
    //   432: invokevirtual debug : (Ljava/lang/String;)V
    //   435: aload_2
    //   436: astore #5
    //   438: aload_3
    //   439: astore #6
    //   441: aload #4
    //   443: astore #7
    //   445: goto -> 237
    //   448: aload #8
    //   450: invokevirtual close : ()V
    //   453: aload_2
    //   454: astore #5
    //   456: aload_3
    //   457: astore #6
    //   459: aload #4
    //   461: astore #7
    //   463: goto -> 237
    //   466: astore #5
    //   468: aload_0
    //   469: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   472: aload #5
    //   474: invokevirtual getMessage : ()Ljava/lang/String;
    //   477: invokevirtual debug : (Ljava/lang/String;)V
    //   480: aload_2
    //   481: astore #5
    //   483: aload_3
    //   484: astore #6
    //   486: aload #4
    //   488: astore #7
    //   490: goto -> 237
    //   493: astore #6
    //   495: aload #6
    //   497: athrow
    //   498: astore #5
    //   500: aload #8
    //   502: ifnull -> 515
    //   505: aload #6
    //   507: ifnull -> 530
    //   510: aload #8
    //   512: invokevirtual close : ()V
    //   515: aload #5
    //   517: athrow
    //   518: astore #7
    //   520: aload #6
    //   522: aload #7
    //   524: invokevirtual addSuppressed : (Ljava/lang/Throwable;)V
    //   527: goto -> 515
    //   530: aload #8
    //   532: invokevirtual close : ()V
    //   535: goto -> 515
    //   538: aload #6
    //   540: ifnull -> 573
    //   543: aload_0
    //   544: getfield logger : Lcom/ca/android/wrapper/util/Logger;
    //   547: new java/lang/StringBuilder
    //   550: dup
    //   551: invokespecial <init> : ()V
    //   554: ldc_w 'The MAAStub annotation was not found for '
    //   557: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   560: aload_1
    //   561: invokevirtual getName : ()Ljava/lang/String;
    //   564: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   567: invokevirtual toString : ()Ljava/lang/String;
    //   570: invokevirtual debug : (Ljava/lang/String;)V
    //   573: iconst_0
    //   574: ireturn
    //   575: astore #5
    //   577: aconst_null
    //   578: astore #4
    //   580: aconst_null
    //   581: astore_3
    //   582: goto -> 468
    //   585: astore #5
    //   587: aconst_null
    //   588: astore #4
    //   590: aconst_null
    //   591: astore_3
    //   592: aload #6
    //   594: astore_2
    //   595: goto -> 423
    //   598: astore #5
    //   600: aload #7
    //   602: astore #6
    //   604: goto -> 500
    // Exception table:
    //   from	to	target	type
    //   8	25	585	java/io/FileNotFoundException
    //   8	25	575	java/io/IOException
    //   40	47	493	java/lang/Throwable
    //   40	47	598	finally
    //   56	68	493	java/lang/Throwable
    //   56	68	598	finally
    //   75	91	493	java/lang/Throwable
    //   75	91	598	finally
    //   103	115	493	java/lang/Throwable
    //   103	115	598	finally
    //   122	138	493	java/lang/Throwable
    //   122	138	598	finally
    //   155	167	493	java/lang/Throwable
    //   155	167	598	finally
    //   174	190	493	java/lang/Throwable
    //   174	190	598	finally
    //   222	227	411	java/lang/Throwable
    //   222	227	421	java/io/FileNotFoundException
    //   222	227	466	java/io/IOException
    //   413	421	421	java/io/FileNotFoundException
    //   413	421	466	java/io/IOException
    //   448	453	421	java/io/FileNotFoundException
    //   448	453	466	java/io/IOException
    //   495	498	498	finally
    //   510	515	518	java/lang/Throwable
    //   510	515	421	java/io/FileNotFoundException
    //   510	515	466	java/io/IOException
    //   515	518	421	java/io/FileNotFoundException
    //   515	518	466	java/io/IOException
    //   520	527	421	java/io/FileNotFoundException
    //   520	527	466	java/io/IOException
    //   530	535	421	java/io/FileNotFoundException
    //   530	535	466	java/io/IOException
  }
  
  private void processIStubsDir(File paramFile) {
    for (File file : paramFile.listFiles()) {
      if (file.isDirectory()) {
        processIStubsDir(file);
      } else if (file.getName().endsWith(".smali") && processIStubSmali(file)) {
        file.delete();
      } 
    } 
  }
  
  private static List<String> sdkRequiredPermissions() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("android.permission.INTERNET");
    arrayList.add("android.permission.ACCESS_NETWORK_STATE");
    arrayList.add("android.permission.ACCESS_WIFI_STATE");
    arrayList.add("android.permission.ACCESS_COARSE_LOCATION");
    return arrayList;
  }
  
  private void setClassReplacementList(NodeList paramNodeList) {
    int i = 0;
    while (true) {
      if (i < paramNodeList.getLength()) {
        Node node = paramNodeList.item(i);
        if (node.getNodeType() == 1) {
          Element element = (Element)node;
          ReplacementElement replacementElement = new ReplacementElement();
          replacementElement.setType("classReplacement");
          replacementElement.setReplaceFrom(element.getAttribute("id"));
          try {
            replacementElement.setReplaceFrom(element.getElementsByTagName("from").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setReplaceTo(element.getElementsByTagName("to").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setSkipFiles(element.getElementsByTagName("skipFile").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setInsertAfter(element.getElementsByTagName("insertAfter").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setInsertWhat(element.getElementsByTagName("insertWhat").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setMethodFrom(element.getElementsByTagName("methodFrom").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setMethodTo(element.getElementsByTagName("methodTo").item(0).getTextContent());
          } catch (Exception exception) {}
          this.classReplaceData.add(replacementElement);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  private void setRegexReplacementList(NodeList paramNodeList) {
    int i = 0;
    while (true) {
      if (i < paramNodeList.getLength()) {
        Node node = paramNodeList.item(i);
        if (node.getNodeType() == 1) {
          Element element = (Element)node;
          ReplacementElement replacementElement = new ReplacementElement();
          replacementElement.setType("regexReplacement");
          replacementElement.setReplaceFrom(element.getAttribute("id"));
          NodeList nodeList = ((Element)node).getElementsByTagName("pattern");
          for (int j = 0; j < nodeList.getLength(); j++) {
            Node node1 = nodeList.item(j);
            if (node1.getNodeType() == 1) {
              String str = ((Element)node1).getTextContent();
              replacementElement.getPatterns().add(str);
            } 
          } 
          try {
            replacementElement.setReplaceFrom(element.getElementsByTagName("from").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setReplaceTo(element.getElementsByTagName("to").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setMatcher(element.getElementsByTagName("matcher").item(0).getTextContent());
          } catch (Exception exception) {}
          this.regexReplaceData.add(replacementElement);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  private void setSpecialReplacementList(NodeList paramNodeList) {
    int i = 0;
    while (true) {
      if (i < paramNodeList.getLength()) {
        Node node = paramNodeList.item(i);
        if (node.getNodeType() == 1) {
          Element element = (Element)node;
          ReplacementElement replacementElement = new ReplacementElement();
          replacementElement.setType("specialReplacement");
          replacementElement.setReplaceFrom(element.getAttribute("id"));
          NodeList nodeList = ((Element)node).getElementsByTagName("pattern");
          for (int j = 0; j < nodeList.getLength(); j++) {
            Node node1 = nodeList.item(j);
            if (node1.getNodeType() == 1) {
              String str = ((Element)node1).getTextContent();
              replacementElement.getPatterns().add(str);
            } 
          } 
          try {
            replacementElement.setReplaceFrom(element.getElementsByTagName("from").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setReplaceTo(element.getElementsByTagName("to").item(0).getTextContent());
          } catch (Exception exception) {}
          try {
            replacementElement.setFile(element.getElementsByTagName("file").item(0).getTextContent());
          } catch (Exception exception) {}
          this.specialReplaceData.add(replacementElement);
        } 
        i++;
        continue;
      } 
      return;
    } 
  }
  
  public void configureStubs() {
    String str = getProperty("sdkDirectory");
    if (str != null)
      processIStubsDir(new File(getTempFolder(), "apktoolExtract" + File.separator + str + File.separator + "com" + File.separator + "ca" + File.separator + "android" + File.separator + "integrations")); 
  }
  
  public void deInitialize() {
    try {
      this.classReplaceData = null;
      this.prop = null;
      this.tempFolder = null;
      return;
    } catch (Exception exception) {
      this.logger.severe(exception.getMessage());
      return;
    } 
  }
  
  public String get(int paramInt) {
    switch (paramInt) {
      default:
        return null;
      case 1:
        return getTempFolder().getAbsolutePath() + "/smali/";
      case 2:
        return getTempFolder().getAbsolutePath() + "/apk/";
      case 3:
        break;
    } 
    return getTempFolder().getAbsolutePath() + "/temp/";
  }
  
  public String get(String paramString) {
    return this.prop.get(paramString);
  }
  
  public List<ReplacementElement> getClassReplacementList() {
    return this.classReplaceData;
  }
  
  public String getProperty(String paramString) {
    return (this.prop != null) ? this.prop.get(paramString) : null;
  }
  
  public List<ReplacementElement> getRegexReplacementList() {
    return this.regexReplaceData;
  }
  
  public List<ReplacementElement> getSpecialReplaceDataList() {
    return this.specialReplaceData;
  }
  
  public File getTempFolder() {
    return this.tempFolder;
  }
  
  public List<WrapperMethodInsertElement> getWrapperMethodElements() {
    return this.wrapperMethodElements;
  }
  
  public boolean initialize(String paramString1, String paramString2, String paramString3) {
    allPermissions = sdkRequiredPermissions();
    if (paramString1 != null)
      productHome = paramString1; 
    if (productHome == null || productHome.length() <= 0)
      productHome = System.getProperty("ca.emm.home"); 
    if (productHome == null || productHome.length() <= 0)
      productHome = System.getenv("CA_EMM_HOME"); 
    if (productHome == null || productHome.length() <= 0) {
      this.logger.severe("CA_EMM_HOME not set properly. Please set the CA_EMM_HOME & then retry");
      return false;
    } 
    if (!productHome.endsWith("/") && !productHome.endsWith("\\"))
      productHome += "/"; 
    try {
      this.classReplaceData = new ArrayList<ReplacementElement>();
      this.regexReplaceData = new ArrayList<ReplacementElement>();
      this.specialReplaceData = new ArrayList<ReplacementElement>();
      try {
        Random random = new Random();
        this.tempFolder = File.createTempFile("AndroidWrapper_", Long.toString(System.nanoTime()) + "___" + random.nextInt(9999999));
        this.tempFolder.delete();
        this.tempFolder.mkdir();
        this.prop = new HashMap<String, String>();
        this.prop.put("CONF_DIR", productHome + "conf/");
        this.prop.put("TOOLS_DIR", productHome + "bin/android/");
        this.prop.put("SDK_APK", productHome + "lib/android/container-" + paramString3 + ".apk");
        this.prop.put("SDK_DIR", getTempFolder().getAbsolutePath() + "/sdk/");
        this.prop.put("SMALI_REPLACEMENT_FILE", paramString2);
        String str = System.getProperties().getProperty("os.name");
        if (str.startsWith("Mac")) {
          this.prop.put("OSNAME", "macosx");
        } else if (str.startsWith("Linux")) {
          this.prop.put("OSNAME", "linux");
        } else {
          this.prop.put("OSNAME", "windows");
        } 
      } catch (FileNotFoundException fileNotFoundException) {
        this.logger.severe("Config file not present");
        fileNotFoundException.printStackTrace();
      } 
    } catch (Exception exception) {
      this.logger.severe(exception.getMessage());
    } 
    return true;
  }
  
  public boolean parseXML(String paramString) {
    if (paramString == null || paramString.length() <= 0) {
      this.logger.severe("Smali Replacement XML File not configured!");
      return false;
    } 
    try {
      File file = new File(paramString);
      if (!file.exists()) {
        this.logger.severe("Smali Replacement XML File not found!");
        return false;
      } 
      Document document = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(file);
      document.getDocumentElement().normalize();
      NodeList nodeList1 = document.getElementsByTagName("classReplacement");
      NodeList nodeList2 = document.getElementsByTagName("regexReplacement");
      NodeList nodeList3 = document.getElementsByTagName("specialReplacement");
      NodeList nodeList4 = document.getElementsByTagName("wrapperMethodInsert");
      setClassReplacementList(nodeList1);
      setRegexReplacementList(nodeList2);
      setSpecialReplacementList(nodeList3);
      setWrapperMethodInserts(nodeList4);
      return true;
    } catch (ParserConfigurationException parserConfigurationException) {
      this.logger.severe(parserConfigurationException.getMessage());
      return false;
    } catch (SAXException sAXException) {
      this.logger.severe(sAXException.getMessage());
      return false;
    } catch (IOException iOException) {
      this.logger.severe(iOException.getMessage());
      return false;
    } 
  }
  
  public void putProperty(String paramString1, String paramString2) {
    if (this.prop != null)
      this.prop.put(paramString1, paramString2); 
  }
  
  public void setWrapperMethodInserts(NodeList paramNodeList) {
    this.wrapperMethodElements = new ArrayList<WrapperMethodInsertElement>();
    for (int i = 0; i < paramNodeList.getLength(); i++) {
      Node node = paramNodeList.item(i);
      if (node.getNodeType() == 1) {
        Element element = (Element)node;
        WrapperMethodInsertElement wrapperMethodInsertElement = new WrapperMethodInsertElement();
        wrapperMethodInsertElement.setId(element.getAttribute("id"));
        wrapperMethodInsertElement.setTargetFilePath(element.getAttribute("targetFile").replace("/", File.separator));
        wrapperMethodInsertElement.setFromMethod(element.getElementsByTagName("from").item(0).getTextContent());
        wrapperMethodInsertElement.setToMethod(element.getElementsByTagName("to").item(0).getTextContent());
        wrapperMethodInsertElement.setWrapperMethodSmalicode(element.getElementsByTagName("wrapperMethod").item(0).getTextContent());
        NodeList nodeList = element.getElementsByTagName("copyDir");
        if (nodeList != null && nodeList.getLength() == 1) {
          nodeList = nodeList.item(0).getChildNodes();
          for (int j = 0; j < nodeList.getLength(); j++) {
            Node node1 = nodeList.item(j);
            if (node1.getNodeName().equals("from")) {
              wrapperMethodInsertElement.setCopyDirFrom(node1.getTextContent());
            } else if (node1.getNodeName().equals("to")) {
              wrapperMethodInsertElement.setCopyDirTo(node1.getTextContent());
            } 
          } 
        } 
        this.wrapperMethodElements.add(wrapperMethodInsertElement);
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\config\CommonConfig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */