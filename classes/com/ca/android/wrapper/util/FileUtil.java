package com.ca.android.wrapper.util;

import java.io.File;
import org.apache.commons.exec.CommandLine;
import org.apache.commons.exec.DefaultExecuteResultHandler;
import org.apache.commons.exec.DefaultExecutor;
import org.apache.commons.exec.ExecuteResultHandler;

public class FileUtil {
  private static Logger logger = Logger.getLogger();
  
  public static void copyFolder(File paramFile1, File paramFile2) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aconst_null
    //   4: astore #4
    //   6: iconst_0
    //   7: istore_2
    //   8: aload_0
    //   9: invokevirtual isDirectory : ()Z
    //   12: ifeq -> 92
    //   15: aload_1
    //   16: invokevirtual exists : ()Z
    //   19: ifne -> 27
    //   22: aload_1
    //   23: invokevirtual mkdir : ()Z
    //   26: pop
    //   27: aload_0
    //   28: invokevirtual list : ()[Ljava/lang/String;
    //   31: astore #6
    //   33: aload #6
    //   35: arraylength
    //   36: istore_3
    //   37: iload_2
    //   38: iload_3
    //   39: if_icmpge -> 78
    //   42: aload #6
    //   44: iload_2
    //   45: aaload
    //   46: astore #7
    //   48: new java/io/File
    //   51: dup
    //   52: aload_0
    //   53: aload #7
    //   55: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   58: new java/io/File
    //   61: dup
    //   62: aload_1
    //   63: aload #7
    //   65: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   68: invokestatic copyFolder : (Ljava/io/File;Ljava/io/File;)V
    //   71: iload_2
    //   72: iconst_1
    //   73: iadd
    //   74: istore_2
    //   75: goto -> 37
    //   78: aconst_null
    //   79: astore_0
    //   80: aload #4
    //   82: astore_1
    //   83: aload_0
    //   84: invokevirtual close : ()V
    //   87: aload_1
    //   88: invokevirtual close : ()V
    //   91: return
    //   92: new java/io/FileInputStream
    //   95: dup
    //   96: aload_0
    //   97: invokespecial <init> : (Ljava/io/File;)V
    //   100: astore_0
    //   101: new java/io/FileOutputStream
    //   104: dup
    //   105: aload_1
    //   106: invokespecial <init> : (Ljava/io/File;)V
    //   109: astore #4
    //   111: sipush #1024
    //   114: newarray byte
    //   116: astore_1
    //   117: aload_0
    //   118: aload_1
    //   119: invokevirtual read : ([B)I
    //   122: istore_2
    //   123: iload_2
    //   124: ifle -> 215
    //   127: aload #4
    //   129: aload_1
    //   130: iconst_0
    //   131: iload_2
    //   132: invokevirtual write : ([BII)V
    //   135: goto -> 117
    //   138: astore_1
    //   139: aload #4
    //   141: astore_1
    //   142: aload_0
    //   143: invokevirtual close : ()V
    //   146: aload_1
    //   147: invokevirtual close : ()V
    //   150: return
    //   151: astore_0
    //   152: return
    //   153: astore_1
    //   154: aconst_null
    //   155: astore_0
    //   156: aconst_null
    //   157: astore #4
    //   159: aload_0
    //   160: invokevirtual close : ()V
    //   163: aload #4
    //   165: invokevirtual close : ()V
    //   168: aload_1
    //   169: athrow
    //   170: astore_0
    //   171: goto -> 87
    //   174: astore_0
    //   175: return
    //   176: astore_0
    //   177: goto -> 146
    //   180: astore_0
    //   181: goto -> 163
    //   184: astore_0
    //   185: goto -> 168
    //   188: astore_1
    //   189: aconst_null
    //   190: astore #4
    //   192: goto -> 159
    //   195: astore_1
    //   196: goto -> 159
    //   199: astore_0
    //   200: aconst_null
    //   201: astore_0
    //   202: aload #5
    //   204: astore_1
    //   205: goto -> 142
    //   208: astore_1
    //   209: aload #5
    //   211: astore_1
    //   212: goto -> 142
    //   215: aload #4
    //   217: astore_1
    //   218: goto -> 83
    // Exception table:
    //   from	to	target	type
    //   8	27	199	java/lang/Exception
    //   8	27	153	finally
    //   27	37	199	java/lang/Exception
    //   27	37	153	finally
    //   48	71	199	java/lang/Exception
    //   48	71	153	finally
    //   83	87	170	java/io/IOException
    //   87	91	174	java/io/IOException
    //   92	101	199	java/lang/Exception
    //   92	101	153	finally
    //   101	111	208	java/lang/Exception
    //   101	111	188	finally
    //   111	117	138	java/lang/Exception
    //   111	117	195	finally
    //   117	123	138	java/lang/Exception
    //   117	123	195	finally
    //   127	135	138	java/lang/Exception
    //   127	135	195	finally
    //   142	146	176	java/io/IOException
    //   146	150	151	java/io/IOException
    //   159	163	180	java/io/IOException
    //   163	168	184	java/io/IOException
  }
  
  public static boolean createDir(String paramString) {
    File file = new File(paramString);
    return !file.exists() ? file.mkdir() : true;
  }
  
  public static boolean createDir(String paramString1, String paramString2) {
    try {
      paramString2 = "mkdir " + paramString1 + "/" + paramString2;
      logger.info("Command :" + paramString2);
      DefaultExecuteResultHandler defaultExecuteResultHandler = new DefaultExecuteResultHandler();
      CommandLine commandLine = CommandLine.parse(paramString2);
      (new DefaultExecutor()).execute(commandLine, (ExecuteResultHandler)defaultExecuteResultHandler);
      defaultExecuteResultHandler.waitFor();
      return true;
    } catch (Exception exception) {
      logger.severe(exception.getMessage());
      return false;
    } 
  }
  
  public static void deleteDir(File paramFile) {
    if (paramFile == null || !paramFile.exists())
      return; 
    for (File file : paramFile.listFiles()) {
      if (file.isDirectory())
        deleteDir(file); 
      file.delete();
    } 
    paramFile.delete();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\ca\android\wrappe\\util\FileUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */