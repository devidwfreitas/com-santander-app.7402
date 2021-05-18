package com.ca.org.acra.util;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.UUID;

public class Installation {
  private static final String INSTALLATION = "ACRA-INSTALLATION";
  
  private static String sID;
  
  public static String id(Context paramContext) {
    // Byte code:
    //   0: ldc com/ca/org/acra/util/Installation
    //   2: monitorenter
    //   3: getstatic com/ca/org/acra/util/Installation.sID : Ljava/lang/String;
    //   6: ifnonnull -> 41
    //   9: new java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokevirtual getFilesDir : ()Ljava/io/File;
    //   17: ldc 'ACRA-INSTALLATION'
    //   19: invokespecial <init> : (Ljava/io/File;Ljava/lang/String;)V
    //   22: astore_1
    //   23: aload_1
    //   24: invokevirtual exists : ()Z
    //   27: ifne -> 34
    //   30: aload_1
    //   31: invokestatic writeInstallationFile : (Ljava/io/File;)V
    //   34: aload_1
    //   35: invokestatic readInstallationFile : (Ljava/io/File;)Ljava/lang/String;
    //   38: putstatic com/ca/org/acra/util/Installation.sID : Ljava/lang/String;
    //   41: getstatic com/ca/org/acra/util/Installation.sID : Ljava/lang/String;
    //   44: astore_0
    //   45: ldc com/ca/org/acra/util/Installation
    //   47: monitorexit
    //   48: aload_0
    //   49: areturn
    //   50: astore_1
    //   51: getstatic com/ca/org/acra/ACRA.LOG_TAG : Ljava/lang/String;
    //   54: new java/lang/StringBuilder
    //   57: dup
    //   58: invokespecial <init> : ()V
    //   61: ldc 'Couldn't retrieve InstallationId for '
    //   63: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: aload_0
    //   67: invokevirtual getPackageName : ()Ljava/lang/String;
    //   70: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual toString : ()Ljava/lang/String;
    //   76: aload_1
    //   77: invokestatic w : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   80: pop
    //   81: ldc 'Couldn't retrieve InstallationId'
    //   83: astore_0
    //   84: goto -> 45
    //   87: astore_1
    //   88: getstatic com/ca/org/acra/ACRA.LOG_TAG : Ljava/lang/String;
    //   91: new java/lang/StringBuilder
    //   94: dup
    //   95: invokespecial <init> : ()V
    //   98: ldc 'Couldn't retrieve InstallationId for '
    //   100: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload_0
    //   104: invokevirtual getPackageName : ()Ljava/lang/String;
    //   107: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual toString : ()Ljava/lang/String;
    //   113: aload_1
    //   114: invokestatic w : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   117: pop
    //   118: ldc 'Couldn't retrieve InstallationId'
    //   120: astore_0
    //   121: goto -> 45
    //   124: astore_0
    //   125: ldc com/ca/org/acra/util/Installation
    //   127: monitorexit
    //   128: aload_0
    //   129: athrow
    // Exception table:
    //   from	to	target	type
    //   3	23	124	finally
    //   23	34	50	java/io/IOException
    //   23	34	87	java/lang/RuntimeException
    //   23	34	124	finally
    //   34	41	50	java/io/IOException
    //   34	41	87	java/lang/RuntimeException
    //   34	41	124	finally
    //   41	45	124	finally
    //   51	81	124	finally
    //   88	118	124	finally
  }
  
  private static String readInstallationFile(File paramFile) throws IOException {
    RandomAccessFile randomAccessFile = new RandomAccessFile(paramFile, "r");
    null = new byte[(int)randomAccessFile.length()];
    try {
      randomAccessFile.readFully(null);
      return new String(null);
    } finally {
      randomAccessFile.close();
    } 
  }
  
  private static void writeInstallationFile(File paramFile) throws IOException {
    FileOutputStream fileOutputStream = new FileOutputStream(paramFile);
    try {
      fileOutputStream.write(UUID.randomUUID().toString().getBytes());
      return;
    } finally {
      fileOutputStream.close();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\org\acr\\util\Installation.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */