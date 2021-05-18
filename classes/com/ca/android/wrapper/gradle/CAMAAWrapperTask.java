package com.ca.android.wrapper.gradle;

import org.gradle.api.DefaultTask;
import org.gradle.api.tasks.TaskAction;

public class CAMAAWrapperTask extends DefaultTask {
  static final String APK_PATH = "apkFilePath";
  
  static final String BUILD_TYPE = "buildType";
  
  static final String CA_EMM_HOME = "CA_EMM_HOME";
  
  static final String DEFAULT_KEY_STORE_FILE = "conf/mdo.keystore";
  
  static final String DISABLE_JS_INTERCEPTION = "disablejsinterception";
  
  static final String EMM_HOME = "emmHome";
  
  static final String KEY_STORE_PATH = "keyStoreFilePath";
  
  public static final String NAME = "maaWrapperTask";
  
  static final String NO_RES = "noResFlag";
  
  static final String NO_SIGN = "noSignFlag";
  
  static final String OUTPUT_FILENAME = "outputFileName";
  
  static final String PLIST_PATH = "plistFilePath";
  
  static final String SIGN_PROPERTIES_PATH = "signConfig";
  
  static final String VERBOSE = "verboseFlag";
  
  @TaskAction
  public void wrapperTask() {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: invokevirtual getExtensions : ()Lorg/gradle/api/plugins/ExtensionContainer;
    //   6: invokeinterface getExtraProperties : ()Lorg/gradle/api/plugins/ExtraPropertiesExtension;
    //   11: invokeinterface getProperties : ()Ljava/util/Map;
    //   16: astore #6
    //   18: aload #6
    //   20: ldc 'apkFilePath'
    //   22: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   27: checkcast java/lang/String
    //   30: astore #7
    //   32: aload #6
    //   34: ldc 'plistFilePath'
    //   36: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   41: checkcast java/lang/String
    //   44: astore #8
    //   46: aload #6
    //   48: ldc 'buildType'
    //   50: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   55: checkcast java/lang/String
    //   58: astore #9
    //   60: aload #6
    //   62: ldc 'signConfig'
    //   64: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   69: checkcast java/lang/String
    //   72: astore #10
    //   74: aload #6
    //   76: ldc 'disablejsinterception'
    //   78: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   83: checkcast java/lang/String
    //   86: invokestatic valueOf : (Ljava/lang/String;)Ljava/lang/Boolean;
    //   89: invokevirtual booleanValue : ()Z
    //   92: istore #4
    //   94: aload #6
    //   96: ldc 'outputFileName'
    //   98: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   103: checkcast java/lang/String
    //   106: astore #11
    //   108: aload #6
    //   110: ldc 'emmHome'
    //   112: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   117: ifnull -> 407
    //   120: aload #6
    //   122: ldc 'emmHome'
    //   124: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   129: checkcast java/lang/String
    //   132: astore #5
    //   134: aload #6
    //   136: ldc 'verboseFlag'
    //   138: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   143: checkcast java/lang/Boolean
    //   146: astore #12
    //   148: aload #12
    //   150: ifnull -> 402
    //   153: aload #12
    //   155: invokevirtual booleanValue : ()Z
    //   158: istore_1
    //   159: aload #6
    //   161: ldc 'noResFlag'
    //   163: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   168: checkcast java/lang/Boolean
    //   171: astore #12
    //   173: aload #12
    //   175: ifnull -> 397
    //   178: aload #12
    //   180: invokevirtual booleanValue : ()Z
    //   183: istore_2
    //   184: aload #6
    //   186: ldc 'noSignFlag'
    //   188: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   193: checkcast java/lang/Boolean
    //   196: astore #6
    //   198: aload #6
    //   200: ifnull -> 209
    //   203: aload #6
    //   205: invokevirtual booleanValue : ()Z
    //   208: istore_3
    //   209: aload #5
    //   211: ifnull -> 226
    //   214: aload #5
    //   216: invokevirtual trim : ()Ljava/lang/String;
    //   219: invokevirtual length : ()I
    //   222: iconst_1
    //   223: if_icmpge -> 394
    //   226: ldc 'ca.emm.home'
    //   228: invokestatic getProperty : (Ljava/lang/String;)Ljava/lang/String;
    //   231: astore #5
    //   233: aload #5
    //   235: ifnull -> 254
    //   238: aload #5
    //   240: astore #6
    //   242: aload #5
    //   244: invokevirtual trim : ()Ljava/lang/String;
    //   247: invokevirtual length : ()I
    //   250: iconst_1
    //   251: if_icmpge -> 261
    //   254: ldc 'CA_EMM_HOME'
    //   256: invokestatic getenv : (Ljava/lang/String;)Ljava/lang/String;
    //   259: astore #6
    //   261: aload #6
    //   263: putstatic com/ca/android/wrapper/Wrapper.emmHome : Ljava/lang/String;
    //   266: new com/ca/android/wrapper/config/WrapConfig
    //   269: dup
    //   270: invokespecial <init> : ()V
    //   273: astore #5
    //   275: aload #5
    //   277: aload #7
    //   279: invokevirtual setApkFile : (Ljava/lang/String;)V
    //   282: aload #5
    //   284: aload #8
    //   286: invokevirtual setPlistFile : (Ljava/lang/String;)V
    //   289: aload #5
    //   291: ldc 'AUTO_DETECT'
    //   293: invokevirtual setRulesFile : (Ljava/lang/String;)V
    //   296: aload #5
    //   298: aload #9
    //   300: invokevirtual setBuildType : (Ljava/lang/String;)V
    //   303: aload #5
    //   305: iload #4
    //   307: invokevirtual setDisableJsInterception : (Z)V
    //   310: aload #5
    //   312: iload_2
    //   313: invokevirtual setNores : (Z)V
    //   316: aload #5
    //   318: iload_1
    //   319: invokevirtual setVerbose : (Z)V
    //   322: aload #5
    //   324: new com/ca/android/wrapper/config/SignConfig
    //   327: dup
    //   328: aload #10
    //   330: iload_3
    //   331: invokespecial <init> : (Ljava/lang/String;Z)V
    //   334: invokevirtual setSignConfig : (Lcom/ca/android/wrapper/config/SignConfig;)V
    //   337: aload #5
    //   339: aload #11
    //   341: invokevirtual setOutputFileName : (Ljava/lang/String;)V
    //   344: aload #5
    //   346: invokestatic doWrap : (Lcom/ca/android/wrapper/config/WrapConfig;)Ljava/lang/String;
    //   349: pop
    //   350: return
    //   351: astore #5
    //   353: aload #5
    //   355: invokevirtual printStackTrace : ()V
    //   358: new org/gradle/api/GradleException
    //   361: dup
    //   362: new java/lang/StringBuilder
    //   365: dup
    //   366: invokespecial <init> : ()V
    //   369: ldc 'Wrapping unsuccesful : Reason : '
    //   371: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   374: aload #5
    //   376: invokevirtual getMessage : ()Ljava/lang/String;
    //   379: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: ldc ' Detailed Exception Above'
    //   384: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   387: invokevirtual toString : ()Ljava/lang/String;
    //   390: invokespecial <init> : (Ljava/lang/String;)V
    //   393: athrow
    //   394: goto -> 233
    //   397: iconst_0
    //   398: istore_2
    //   399: goto -> 184
    //   402: iconst_0
    //   403: istore_1
    //   404: goto -> 159
    //   407: aconst_null
    //   408: astore #5
    //   410: goto -> 134
    // Exception table:
    //   from	to	target	type
    //   261	350	351	java/lang/Exception
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrapper\gradle\CAMAAWrapperTask.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */