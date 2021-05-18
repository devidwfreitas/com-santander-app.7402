package org.apache.commons.io.output;

import java.io.File;
import java.io.IOException;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

public class LockableFileWriter extends Writer {
  private static final String LCK = ".lck";
  
  private final File lockFile;
  
  private final Writer out;
  
  public LockableFileWriter(File paramFile) {
    this(paramFile, false, (String)null);
  }
  
  public LockableFileWriter(File paramFile, String paramString) {
    this(paramFile, paramString, false, (String)null);
  }
  
  public LockableFileWriter(File paramFile, String paramString1, boolean paramBoolean, String paramString2) {
    this(paramFile, Charsets.toCharset(paramString1), paramBoolean, paramString2);
  }
  
  public LockableFileWriter(File paramFile, Charset paramCharset) {
    this(paramFile, paramCharset, false, (String)null);
  }
  
  public LockableFileWriter(File paramFile, Charset paramCharset, boolean paramBoolean, String paramString) {
    File file2 = paramFile.getAbsoluteFile();
    if (file2.getParentFile() != null)
      FileUtils.forceMkdir(file2.getParentFile()); 
    if (file2.isDirectory())
      throw new IOException("File specified is a directory"); 
    String str = paramString;
    if (paramString == null)
      str = System.getProperty("java.io.tmpdir"); 
    File file1 = new File(str);
    FileUtils.forceMkdir(file1);
    testLockDir(file1);
    this.lockFile = new File(file1, file2.getName() + ".lck");
    createLock();
    this.out = initWriter(file2, paramCharset, paramBoolean);
  }
  
  public LockableFileWriter(File paramFile, boolean paramBoolean) {
    this(paramFile, paramBoolean, (String)null);
  }
  
  public LockableFileWriter(File paramFile, boolean paramBoolean, String paramString) {
    this(paramFile, Charset.defaultCharset(), paramBoolean, paramString);
  }
  
  public LockableFileWriter(String paramString) {
    this(paramString, false, (String)null);
  }
  
  public LockableFileWriter(String paramString, boolean paramBoolean) {
    this(paramString, paramBoolean, (String)null);
  }
  
  public LockableFileWriter(String paramString1, boolean paramBoolean, String paramString2) {
    this(new File(paramString1), paramBoolean, paramString2);
  }
  
  private void createLock() {
    // Byte code:
    //   0: ldc org/apache/commons/io/output/LockableFileWriter
    //   2: monitorenter
    //   3: aload_0
    //   4: getfield lockFile : Ljava/io/File;
    //   7: invokevirtual createNewFile : ()Z
    //   10: ifne -> 57
    //   13: new java/io/IOException
    //   16: dup
    //   17: new java/lang/StringBuilder
    //   20: dup
    //   21: invokespecial <init> : ()V
    //   24: ldc 'Can't write file, lock '
    //   26: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: aload_0
    //   30: getfield lockFile : Ljava/io/File;
    //   33: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   36: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: ldc ' exists'
    //   41: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual toString : ()Ljava/lang/String;
    //   47: invokespecial <init> : (Ljava/lang/String;)V
    //   50: athrow
    //   51: astore_1
    //   52: ldc org/apache/commons/io/output/LockableFileWriter
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    //   57: aload_0
    //   58: getfield lockFile : Ljava/io/File;
    //   61: invokevirtual deleteOnExit : ()V
    //   64: ldc org/apache/commons/io/output/LockableFileWriter
    //   66: monitorexit
    //   67: return
    // Exception table:
    //   from	to	target	type
    //   3	51	51	finally
    //   52	55	51	finally
    //   57	67	51	finally
  }
  
  private Writer initWriter(File paramFile, Charset paramCharset, boolean paramBoolean) {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual exists : ()Z
    //   4: istore #4
    //   6: new java/io/FileOutputStream
    //   9: dup
    //   10: aload_1
    //   11: invokevirtual getAbsolutePath : ()Ljava/lang/String;
    //   14: iload_3
    //   15: invokespecial <init> : (Ljava/lang/String;Z)V
    //   18: astore #5
    //   20: new java/io/OutputStreamWriter
    //   23: dup
    //   24: aload #5
    //   26: aload_2
    //   27: invokestatic toCharset : (Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    //   30: invokespecial <init> : (Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    //   33: astore_2
    //   34: aload_2
    //   35: areturn
    //   36: astore_2
    //   37: aconst_null
    //   38: astore #5
    //   40: aconst_null
    //   41: invokestatic closeQuietly : (Ljava/io/Writer;)V
    //   44: aload #5
    //   46: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   49: aload_0
    //   50: getfield lockFile : Ljava/io/File;
    //   53: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   56: pop
    //   57: iload #4
    //   59: ifne -> 67
    //   62: aload_1
    //   63: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   66: pop
    //   67: aload_2
    //   68: athrow
    //   69: astore_2
    //   70: aconst_null
    //   71: astore #5
    //   73: aconst_null
    //   74: invokestatic closeQuietly : (Ljava/io/Writer;)V
    //   77: aload #5
    //   79: invokestatic closeQuietly : (Ljava/io/OutputStream;)V
    //   82: aload_0
    //   83: getfield lockFile : Ljava/io/File;
    //   86: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   89: pop
    //   90: iload #4
    //   92: ifne -> 100
    //   95: aload_1
    //   96: invokestatic deleteQuietly : (Ljava/io/File;)Z
    //   99: pop
    //   100: aload_2
    //   101: athrow
    //   102: astore_2
    //   103: goto -> 73
    //   106: astore_2
    //   107: goto -> 40
    // Exception table:
    //   from	to	target	type
    //   6	20	36	java/io/IOException
    //   6	20	69	java/lang/RuntimeException
    //   20	34	106	java/io/IOException
    //   20	34	102	java/lang/RuntimeException
  }
  
  private void testLockDir(File paramFile) {
    if (!paramFile.exists())
      throw new IOException("Could not find lockDir: " + paramFile.getAbsolutePath()); 
    if (!paramFile.canWrite())
      throw new IOException("Could not write to lockDir: " + paramFile.getAbsolutePath()); 
  }
  
  public void close() {
    try {
      this.out.close();
      return;
    } finally {
      this.lockFile.delete();
    } 
  }
  
  public void flush() {
    this.out.flush();
  }
  
  public void write(int paramInt) {
    this.out.write(paramInt);
  }
  
  public void write(String paramString) {
    this.out.write(paramString);
  }
  
  public void write(String paramString, int paramInt1, int paramInt2) {
    this.out.write(paramString, paramInt1, paramInt2);
  }
  
  public void write(char[] paramArrayOfchar) {
    this.out.write(paramArrayOfchar);
  }
  
  public void write(char[] paramArrayOfchar, int paramInt1, int paramInt2) {
    this.out.write(paramArrayOfchar, paramInt1, paramInt2);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\output\LockableFileWriter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */