package org.apache.commons.io;

import com.ca.android.app.CaMDOHTTPClient;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URL;
import java.net.URLConnection;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.zip.CRC32;
import java.util.zip.CheckedInputStream;
import java.util.zip.Checksum;
import org.apache.commons.io.filefilter.DirectoryFileFilter;
import org.apache.commons.io.filefilter.FalseFileFilter;
import org.apache.commons.io.filefilter.FileFilterUtils;
import org.apache.commons.io.filefilter.IOFileFilter;
import org.apache.commons.io.filefilter.SuffixFileFilter;
import org.apache.commons.io.filefilter.TrueFileFilter;

public class FileUtils {
  public static final File[] EMPTY_FILE_ARRAY;
  
  private static final long FILE_COPY_BUFFER_SIZE = 31457280L;
  
  public static final long ONE_EB = 1152921504606846976L;
  
  public static final BigInteger ONE_EB_BI;
  
  public static final long ONE_GB = 1073741824L;
  
  public static final BigInteger ONE_GB_BI;
  
  public static final long ONE_KB = 1024L;
  
  public static final BigInteger ONE_KB_BI = BigInteger.valueOf(1024L);
  
  public static final long ONE_MB = 1048576L;
  
  public static final BigInteger ONE_MB_BI = ONE_KB_BI.multiply(ONE_KB_BI);
  
  public static final long ONE_PB = 1125899906842624L;
  
  public static final BigInteger ONE_PB_BI;
  
  public static final long ONE_TB = 1099511627776L;
  
  public static final BigInteger ONE_TB_BI;
  
  public static final BigInteger ONE_YB;
  
  public static final BigInteger ONE_ZB;
  
  private static final Charset UTF8;
  
  static {
    ONE_GB_BI = ONE_KB_BI.multiply(ONE_MB_BI);
    ONE_TB_BI = ONE_KB_BI.multiply(ONE_GB_BI);
    ONE_PB_BI = ONE_KB_BI.multiply(ONE_TB_BI);
    ONE_EB_BI = ONE_KB_BI.multiply(ONE_PB_BI);
    ONE_ZB = BigInteger.valueOf(1024L).multiply(BigInteger.valueOf(1152921504606846976L));
    ONE_YB = ONE_KB_BI.multiply(ONE_ZB);
    EMPTY_FILE_ARRAY = new File[0];
    UTF8 = Charset.forName("UTF-8");
  }
  
  public static String byteCountToDisplaySize(long paramLong) {
    return byteCountToDisplaySize(BigInteger.valueOf(paramLong));
  }
  
  public static String byteCountToDisplaySize(BigInteger paramBigInteger) {
    return (paramBigInteger.divide(ONE_EB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_EB_BI)) + " EB") : ((paramBigInteger.divide(ONE_PB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_PB_BI)) + " PB") : ((paramBigInteger.divide(ONE_TB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_TB_BI)) + " TB") : ((paramBigInteger.divide(ONE_GB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_GB_BI)) + " GB") : ((paramBigInteger.divide(ONE_MB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_MB_BI)) + " MB") : ((paramBigInteger.divide(ONE_KB_BI).compareTo(BigInteger.ZERO) > 0) ? (String.valueOf(paramBigInteger.divide(ONE_KB_BI)) + " KB") : (String.valueOf(paramBigInteger) + " bytes"))))));
  }
  
  private static void checkDirectory(File paramFile) {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist"); 
    if (!paramFile.isDirectory())
      throw new IllegalArgumentException(paramFile + " is not a directory"); 
  }
  
  public static Checksum checksum(File paramFile, Checksum paramChecksum) {
    if (paramFile.isDirectory())
      throw new IllegalArgumentException("Checksums can't be computed on directories"); 
    try {
      CheckedInputStream checkedInputStream = new CheckedInputStream(new FileInputStream(paramFile), paramChecksum);
    } finally {
      paramFile = null;
    } 
    IOUtils.closeQuietly((InputStream)paramChecksum);
    throw paramFile;
  }
  
  public static long checksumCRC32(File paramFile) {
    CRC32 cRC32 = new CRC32();
    checksum(paramFile, cRC32);
    return cRC32.getValue();
  }
  
  public static void cleanDirectory(File paramFile) {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist"); 
    if (!paramFile.isDirectory())
      throw new IllegalArgumentException(paramFile + " is not a directory"); 
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IOException("Failed to list contents of " + paramFile); 
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    while (true) {
      if (i < j) {
        File file = arrayOfFile[i];
        try {
          forceDelete(file);
        } catch (IOException iOException) {}
        i++;
        continue;
      } 
      if (iOException != null)
        throw iOException; 
      break;
    } 
  }
  
  private static void cleanDirectoryOnExit(File paramFile) {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist"); 
    if (!paramFile.isDirectory())
      throw new IllegalArgumentException(paramFile + " is not a directory"); 
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      throw new IOException("Failed to list contents of " + paramFile); 
    int j = arrayOfFile.length;
    paramFile = null;
    int i = 0;
    while (true) {
      if (i < j) {
        File file = arrayOfFile[i];
        try {
          forceDeleteOnExit(file);
        } catch (IOException iOException) {}
        i++;
        continue;
      } 
      if (iOException != null)
        throw iOException; 
      break;
    } 
  }
  
  public static boolean contentEquals(File paramFile1, File paramFile2) {
    FileInputStream fileInputStream = null;
    boolean bool = paramFile1.exists();
    if (bool == paramFile2.exists()) {
      if (!bool)
        return true; 
      if (paramFile1.isDirectory() || paramFile2.isDirectory())
        throw new IOException("Can't compare directories, only files"); 
      if (paramFile1.length() == paramFile2.length()) {
        Exception exception;
        if (paramFile1.getCanonicalFile().equals(paramFile2.getCanonicalFile()))
          return true; 
        try {
          Exception exception1;
          FileInputStream fileInputStream1 = new FileInputStream(paramFile1);
        } finally {
          paramFile1 = null;
        } 
        IOUtils.closeQuietly((InputStream)exception);
        IOUtils.closeQuietly((InputStream)paramFile2);
        throw paramFile1;
      } 
    } 
    return false;
  }
  
  public static boolean contentEqualsIgnoreEOL(File paramFile1, File paramFile2, String paramString) {
    InputStreamReader inputStreamReader2 = null;
    InputStreamReader inputStreamReader1 = null;
    boolean bool2 = true;
    boolean bool = paramFile1.exists();
    if (bool != paramFile2.exists())
      return false; 
    boolean bool1 = bool2;
    if (bool) {
      if (paramFile1.isDirectory() || paramFile2.isDirectory())
        throw new IOException("Can't compare directories, only files"); 
      bool1 = bool2;
      if (!paramFile1.getCanonicalFile().equals(paramFile2.getCanonicalFile())) {
        InputStreamReader inputStreamReader3;
        InputStreamReader inputStreamReader4;
        InputStreamReader inputStreamReader5;
        if (paramString == null) {
          try {
            inputStreamReader5 = new InputStreamReader(new FileInputStream(paramFile1));
            inputStreamReader1 = inputStreamReader2;
            inputStreamReader3 = inputStreamReader5;
          } finally {
            paramFile2 = null;
          } 
        } else {
          InputStreamReader inputStreamReader = new InputStreamReader(new FileInputStream(paramFile1), (String)inputStreamReader5);
          inputStreamReader1 = inputStreamReader2;
          inputStreamReader3 = inputStreamReader;
          inputStreamReader4 = new InputStreamReader(new FileInputStream(paramFile2), (String)inputStreamReader5);
          inputStreamReader5 = inputStreamReader;
          inputStreamReader1 = inputStreamReader4;
          inputStreamReader3 = inputStreamReader5;
        } 
        IOUtils.closeQuietly(inputStreamReader3);
        IOUtils.closeQuietly(inputStreamReader1);
        throw inputStreamReader4;
      } 
    } 
    return bool1;
  }
  
  public static File[] convertFileCollectionToFileArray(Collection<File> paramCollection) {
    return paramCollection.<File>toArray(new File[paramCollection.size()]);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2) {
    copyDirectory(paramFile1, paramFile2, true);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter) {
    copyDirectory(paramFile1, paramFile2, paramFileFilter, true);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter, boolean paramBoolean) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (!paramFile1.exists())
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist"); 
    if (!paramFile1.isDirectory())
      throw new IOException("Source '" + paramFile1 + "' exists but is not a directory"); 
    if (paramFile1.getCanonicalPath().equals(paramFile2.getCanonicalPath()))
      throw new IOException("Source '" + paramFile1 + "' and destination '" + paramFile2 + "' are the same"); 
    ArrayList<String> arrayList2 = null;
    ArrayList<String> arrayList1 = arrayList2;
    if (paramFile2.getCanonicalPath().startsWith(paramFile1.getCanonicalPath())) {
      File[] arrayOfFile;
      if (paramFileFilter == null) {
        arrayOfFile = paramFile1.listFiles();
      } else {
        arrayOfFile = paramFile1.listFiles(paramFileFilter);
      } 
      arrayList1 = arrayList2;
      if (arrayOfFile != null) {
        arrayList1 = arrayList2;
        if (arrayOfFile.length > 0) {
          arrayList2 = new ArrayList(arrayOfFile.length);
          int j = arrayOfFile.length;
          int i = 0;
          while (true) {
            arrayList1 = arrayList2;
            if (i < j) {
              arrayList2.add((new File(paramFile2, arrayOfFile[i].getName())).getCanonicalPath());
              i++;
              continue;
            } 
            break;
          } 
        } 
      } 
    } 
    doCopyDirectory(paramFile1, paramFile2, paramFileFilter, paramBoolean, arrayList1);
  }
  
  public static void copyDirectory(File paramFile1, File paramFile2, boolean paramBoolean) {
    copyDirectory(paramFile1, paramFile2, null, paramBoolean);
  }
  
  public static void copyDirectoryToDirectory(File paramFile1, File paramFile2) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile1.exists() && !paramFile1.isDirectory())
      throw new IllegalArgumentException("Source '" + paramFile2 + "' is not a directory"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (paramFile2.exists() && !paramFile2.isDirectory())
      throw new IllegalArgumentException("Destination '" + paramFile2 + "' is not a directory"); 
    copyDirectory(paramFile1, new File(paramFile2, paramFile1.getName()), true);
  }
  
  public static long copyFile(File paramFile, OutputStream paramOutputStream) {
    FileInputStream fileInputStream = new FileInputStream(paramFile);
    try {
      return IOUtils.copyLarge(fileInputStream, paramOutputStream);
    } finally {
      fileInputStream.close();
    } 
  }
  
  public static void copyFile(File paramFile1, File paramFile2) {
    copyFile(paramFile1, paramFile2, true);
  }
  
  public static void copyFile(File paramFile1, File paramFile2, boolean paramBoolean) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (!paramFile1.exists())
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist"); 
    if (paramFile1.isDirectory())
      throw new IOException("Source '" + paramFile1 + "' exists but is a directory"); 
    if (paramFile1.getCanonicalPath().equals(paramFile2.getCanonicalPath()))
      throw new IOException("Source '" + paramFile1 + "' and destination '" + paramFile2 + "' are the same"); 
    File file = paramFile2.getParentFile();
    if (file != null && !file.mkdirs() && !file.isDirectory())
      throw new IOException("Destination '" + file + "' directory cannot be created"); 
    if (paramFile2.exists() && !paramFile2.canWrite())
      throw new IOException("Destination '" + paramFile2 + "' exists but is read-only"); 
    doCopyFile(paramFile1, paramFile2, paramBoolean);
  }
  
  public static void copyFileToDirectory(File paramFile1, File paramFile2) {
    copyFileToDirectory(paramFile1, paramFile2, true);
  }
  
  public static void copyFileToDirectory(File paramFile1, File paramFile2, boolean paramBoolean) {
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (paramFile2.exists() && !paramFile2.isDirectory())
      throw new IllegalArgumentException("Destination '" + paramFile2 + "' is not a directory"); 
    copyFile(paramFile1, new File(paramFile2, paramFile1.getName()), paramBoolean);
  }
  
  public static void copyInputStreamToFile(InputStream paramInputStream, File paramFile) {
    try {
      FileOutputStream fileOutputStream = openOutputStream(paramFile);
    } finally {
      IOUtils.closeQuietly(paramInputStream);
    } 
  }
  
  public static void copyURLToFile(URL paramURL, File paramFile) {
    copyInputStreamToFile(paramURL.openStream(), paramFile);
  }
  
  public static void copyURLToFile(URL paramURL, File paramFile, int paramInt1, int paramInt2) {
    URLConnection uRLConnection = CaMDOHTTPClient.openConnection(paramURL);
    uRLConnection.setConnectTimeout(paramInt1);
    uRLConnection.setReadTimeout(paramInt2);
    copyInputStreamToFile(uRLConnection.getInputStream(), paramFile);
  }
  
  static String decodeUrl(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: astore #6
    //   3: aload_0
    //   4: ifnull -> 267
    //   7: aload_0
    //   8: astore #6
    //   10: aload_0
    //   11: bipush #37
    //   13: invokevirtual indexOf : (I)I
    //   16: iflt -> 267
    //   19: aload_0
    //   20: invokevirtual length : ()I
    //   23: istore #4
    //   25: new java/lang/StringBuffer
    //   28: dup
    //   29: invokespecial <init> : ()V
    //   32: astore #6
    //   34: iload #4
    //   36: invokestatic allocate : (I)Ljava/nio/ByteBuffer;
    //   39: astore #7
    //   41: iconst_0
    //   42: istore_1
    //   43: iload_1
    //   44: iload #4
    //   46: if_icmpge -> 260
    //   49: iload_1
    //   50: istore_2
    //   51: aload_0
    //   52: iload_1
    //   53: invokevirtual charAt : (I)C
    //   56: bipush #37
    //   58: if_icmpne -> 202
    //   61: iload_1
    //   62: istore_3
    //   63: iload_3
    //   64: istore_1
    //   65: aload #7
    //   67: aload_0
    //   68: iload_3
    //   69: iconst_1
    //   70: iadd
    //   71: iload_3
    //   72: iconst_3
    //   73: iadd
    //   74: invokevirtual substring : (II)Ljava/lang/String;
    //   77: bipush #16
    //   79: invokestatic parseInt : (Ljava/lang/String;I)I
    //   82: i2b
    //   83: invokevirtual put : (B)Ljava/nio/ByteBuffer;
    //   86: pop
    //   87: iload_3
    //   88: iconst_3
    //   89: iadd
    //   90: istore_2
    //   91: iload_2
    //   92: iload #4
    //   94: if_icmpge -> 115
    //   97: iload_2
    //   98: istore_1
    //   99: aload_0
    //   100: iload_2
    //   101: invokevirtual charAt : (I)C
    //   104: istore #5
    //   106: iload_2
    //   107: istore_3
    //   108: iload #5
    //   110: bipush #37
    //   112: if_icmpeq -> 63
    //   115: iload_2
    //   116: istore_1
    //   117: aload #7
    //   119: invokevirtual position : ()I
    //   122: ifle -> 43
    //   125: aload #7
    //   127: invokevirtual flip : ()Ljava/nio/Buffer;
    //   130: pop
    //   131: aload #6
    //   133: getstatic org/apache/commons/io/FileUtils.UTF8 : Ljava/nio/charset/Charset;
    //   136: aload #7
    //   138: invokevirtual decode : (Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    //   141: invokevirtual toString : ()Ljava/lang/String;
    //   144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   147: pop
    //   148: aload #7
    //   150: invokevirtual clear : ()Ljava/nio/Buffer;
    //   153: pop
    //   154: iload_2
    //   155: istore_1
    //   156: goto -> 43
    //   159: astore #8
    //   161: iload_1
    //   162: istore_2
    //   163: aload #7
    //   165: invokevirtual position : ()I
    //   168: ifle -> 202
    //   171: aload #7
    //   173: invokevirtual flip : ()Ljava/nio/Buffer;
    //   176: pop
    //   177: aload #6
    //   179: getstatic org/apache/commons/io/FileUtils.UTF8 : Ljava/nio/charset/Charset;
    //   182: aload #7
    //   184: invokevirtual decode : (Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    //   187: invokevirtual toString : ()Ljava/lang/String;
    //   190: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   193: pop
    //   194: aload #7
    //   196: invokevirtual clear : ()Ljava/nio/Buffer;
    //   199: pop
    //   200: iload_1
    //   201: istore_2
    //   202: aload #6
    //   204: aload_0
    //   205: iload_2
    //   206: invokevirtual charAt : (I)C
    //   209: invokevirtual append : (C)Ljava/lang/StringBuffer;
    //   212: pop
    //   213: iload_2
    //   214: iconst_1
    //   215: iadd
    //   216: istore_1
    //   217: goto -> 43
    //   220: astore_0
    //   221: aload #7
    //   223: invokevirtual position : ()I
    //   226: ifle -> 258
    //   229: aload #7
    //   231: invokevirtual flip : ()Ljava/nio/Buffer;
    //   234: pop
    //   235: aload #6
    //   237: getstatic org/apache/commons/io/FileUtils.UTF8 : Ljava/nio/charset/Charset;
    //   240: aload #7
    //   242: invokevirtual decode : (Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    //   245: invokevirtual toString : ()Ljava/lang/String;
    //   248: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   251: pop
    //   252: aload #7
    //   254: invokevirtual clear : ()Ljava/nio/Buffer;
    //   257: pop
    //   258: aload_0
    //   259: athrow
    //   260: aload #6
    //   262: invokevirtual toString : ()Ljava/lang/String;
    //   265: astore #6
    //   267: aload #6
    //   269: areturn
    // Exception table:
    //   from	to	target	type
    //   65	87	159	java/lang/RuntimeException
    //   65	87	220	finally
    //   99	106	159	java/lang/RuntimeException
    //   99	106	220	finally
  }
  
  public static void deleteDirectory(File paramFile) {
    if (paramFile.exists()) {
      if (!isSymlink(paramFile))
        cleanDirectory(paramFile); 
      if (!paramFile.delete())
        throw new IOException("Unable to delete directory " + paramFile + "."); 
    } 
  }
  
  private static void deleteDirectoryOnExit(File paramFile) {
    if (paramFile.exists()) {
      paramFile.deleteOnExit();
      if (!isSymlink(paramFile)) {
        cleanDirectoryOnExit(paramFile);
        return;
      } 
    } 
  }
  
  public static boolean deleteQuietly(File paramFile) {
    if (paramFile == null)
      return false; 
    try {
      if (paramFile.isDirectory())
        cleanDirectory(paramFile); 
    } catch (Exception exception) {}
    try {
      return paramFile.delete();
    } catch (Exception exception) {
      return false;
    } 
  }
  
  public static boolean directoryContains(File paramFile1, File paramFile2) {
    if (paramFile1 == null)
      throw new IllegalArgumentException("Directory must not be null"); 
    if (!paramFile1.isDirectory())
      throw new IllegalArgumentException("Not a directory: " + paramFile1); 
    return (paramFile2 != null && paramFile1.exists() && paramFile2.exists()) ? FilenameUtils.directoryContains(paramFile1.getCanonicalPath(), paramFile2.getCanonicalPath()) : false;
  }
  
  private static void doCopyDirectory(File paramFile1, File paramFile2, FileFilter paramFileFilter, boolean paramBoolean, List<String> paramList) {
    File[] arrayOfFile;
    if (paramFileFilter == null) {
      arrayOfFile = paramFile1.listFiles();
    } else {
      arrayOfFile = paramFile1.listFiles(paramFileFilter);
    } 
    if (arrayOfFile == null)
      throw new IOException("Failed to list contents of " + paramFile1); 
    if (paramFile2.exists()) {
      if (!paramFile2.isDirectory())
        throw new IOException("Destination '" + paramFile2 + "' exists but is not a directory"); 
    } else if (!paramFile2.mkdirs() && !paramFile2.isDirectory()) {
      throw new IOException("Destination '" + paramFile2 + "' directory cannot be created");
    } 
    if (!paramFile2.canWrite())
      throw new IOException("Destination '" + paramFile2 + "' cannot be written to"); 
    int j = arrayOfFile.length;
    for (int i = 0; i < j; i++) {
      File file1 = arrayOfFile[i];
      File file2 = new File(paramFile2, file1.getName());
      if (paramList == null || !paramList.contains(file1.getCanonicalPath()))
        if (file1.isDirectory()) {
          doCopyDirectory(file1, file2, paramFileFilter, paramBoolean, paramList);
        } else {
          doCopyFile(file1, file2, paramBoolean);
        }  
    } 
    if (paramBoolean)
      paramFile2.setLastModified(paramFile1.lastModified()); 
  }
  
  private static void doCopyFile(File paramFile1, File paramFile2, boolean paramBoolean) {
    OutputStream outputStream;
    InputStream inputStream;
    FileChannel fileChannel1;
    FileChannel fileChannel2 = null;
    if (paramFile2.exists() && paramFile2.isDirectory())
      throw new IOException("Destination '" + paramFile2 + "' exists but is a directory"); 
    try {
    
    } finally {
      paramFile1 = null;
      paramFile2 = null;
      outputStream = null;
      inputStream = null;
    } 
    IOUtils.closeQuietly((Closeable)paramFile2);
    IOUtils.closeQuietly(outputStream);
    IOUtils.closeQuietly(fileChannel1);
    IOUtils.closeQuietly(inputStream);
    throw paramFile1;
  }
  
  public static void forceDelete(File paramFile) {
    if (paramFile.isDirectory()) {
      deleteDirectory(paramFile);
      return;
    } 
    boolean bool = paramFile.exists();
    if (!paramFile.delete()) {
      if (!bool)
        throw new FileNotFoundException("File does not exist: " + paramFile); 
      throw new IOException("Unable to delete file: " + paramFile);
    } 
  }
  
  public static void forceDeleteOnExit(File paramFile) {
    if (paramFile.isDirectory()) {
      deleteDirectoryOnExit(paramFile);
      return;
    } 
    paramFile.deleteOnExit();
  }
  
  public static void forceMkdir(File paramFile) {
    if (paramFile.exists()) {
      if (!paramFile.isDirectory())
        throw new IOException("File " + paramFile + " exists and is " + "not a directory. Unable to create directory."); 
    } else if (!paramFile.mkdirs() && !paramFile.isDirectory()) {
      throw new IOException("Unable to create directory " + paramFile);
    } 
  }
  
  public static File getFile(File paramFile, String... paramVarArgs) {
    if (paramFile == null)
      throw new NullPointerException("directorydirectory must not be null"); 
    if (paramVarArgs == null)
      throw new NullPointerException("names must not be null"); 
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++)
      paramFile = new File(paramFile, paramVarArgs[i]); 
    return paramFile;
  }
  
  public static File getFile(String... paramVarArgs) {
    if (paramVarArgs == null)
      throw new NullPointerException("names must not be null"); 
    int j = paramVarArgs.length;
    File file = null;
    for (int i = 0; i < j; i++) {
      String str = paramVarArgs[i];
      if (file == null) {
        file = new File(str);
      } else {
        file = new File(file, str);
      } 
    } 
    return file;
  }
  
  public static File getTempDirectory() {
    return new File(getTempDirectoryPath());
  }
  
  public static String getTempDirectoryPath() {
    return System.getProperty("java.io.tmpdir");
  }
  
  public static File getUserDirectory() {
    return new File(getUserDirectoryPath());
  }
  
  public static String getUserDirectoryPath() {
    return System.getProperty("user.home");
  }
  
  private static void innerListFiles(Collection<File> paramCollection, File paramFile, IOFileFilter paramIOFileFilter, boolean paramBoolean) {
    File[] arrayOfFile = paramFile.listFiles((FileFilter)paramIOFileFilter);
    if (arrayOfFile != null) {
      int j = arrayOfFile.length;
      for (int i = 0; i < j; i++) {
        File file = arrayOfFile[i];
        if (file.isDirectory()) {
          if (paramBoolean)
            paramCollection.add(file); 
          innerListFiles(paramCollection, file, paramIOFileFilter, paramBoolean);
        } else {
          paramCollection.add(file);
        } 
      } 
    } 
  }
  
  public static boolean isFileNewer(File paramFile, long paramLong) {
    if (paramFile == null)
      throw new IllegalArgumentException("No specified file"); 
    return (paramFile.exists() && paramFile.lastModified() > paramLong);
  }
  
  public static boolean isFileNewer(File paramFile1, File paramFile2) {
    if (paramFile2 == null)
      throw new IllegalArgumentException("No specified reference file"); 
    if (!paramFile2.exists())
      throw new IllegalArgumentException("The reference file '" + paramFile2 + "' doesn't exist"); 
    return isFileNewer(paramFile1, paramFile2.lastModified());
  }
  
  public static boolean isFileNewer(File paramFile, Date paramDate) {
    if (paramDate == null)
      throw new IllegalArgumentException("No specified date"); 
    return isFileNewer(paramFile, paramDate.getTime());
  }
  
  public static boolean isFileOlder(File paramFile, long paramLong) {
    if (paramFile == null)
      throw new IllegalArgumentException("No specified file"); 
    return (paramFile.exists() && paramFile.lastModified() < paramLong);
  }
  
  public static boolean isFileOlder(File paramFile1, File paramFile2) {
    if (paramFile2 == null)
      throw new IllegalArgumentException("No specified reference file"); 
    if (!paramFile2.exists())
      throw new IllegalArgumentException("The reference file '" + paramFile2 + "' doesn't exist"); 
    return isFileOlder(paramFile1, paramFile2.lastModified());
  }
  
  public static boolean isFileOlder(File paramFile, Date paramDate) {
    if (paramDate == null)
      throw new IllegalArgumentException("No specified date"); 
    return isFileOlder(paramFile, paramDate.getTime());
  }
  
  public static boolean isSymlink(File paramFile) {
    if (paramFile == null)
      throw new NullPointerException("File must not be null"); 
    if (FilenameUtils.isSystemWindows())
      return false; 
    if (paramFile.getParent() != null)
      paramFile = new File(paramFile.getParentFile().getCanonicalFile(), paramFile.getName()); 
    return !paramFile.getCanonicalFile().equals(paramFile.getAbsoluteFile());
  }
  
  public static Iterator<File> iterateFiles(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    return listFiles(paramFile, paramIOFileFilter1, paramIOFileFilter2).iterator();
  }
  
  public static Iterator<File> iterateFiles(File paramFile, String[] paramArrayOfString, boolean paramBoolean) {
    return listFiles(paramFile, paramArrayOfString, paramBoolean).iterator();
  }
  
  public static Iterator<File> iterateFilesAndDirs(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    return listFilesAndDirs(paramFile, paramIOFileFilter1, paramIOFileFilter2).iterator();
  }
  
  public static LineIterator lineIterator(File paramFile) {
    return lineIterator(paramFile, null);
  }
  
  public static LineIterator lineIterator(File paramFile, String paramString) {
    FileInputStream fileInputStream2 = null;
    FileInputStream fileInputStream1 = null;
    try {
      FileInputStream fileInputStream = openInputStream(paramFile);
      fileInputStream1 = fileInputStream;
      fileInputStream2 = fileInputStream;
      return IOUtils.lineIterator(fileInputStream, paramString);
    } catch (IOException iOException) {
      IOUtils.closeQuietly(fileInputStream1);
      throw iOException;
    } catch (RuntimeException runtimeException) {
      IOUtils.closeQuietly(fileInputStream2);
      throw runtimeException;
    } 
  }
  
  public static Collection<File> listFiles(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    validateListFilesParameters(paramFile, paramIOFileFilter1);
    paramIOFileFilter1 = setUpEffectiveFileFilter(paramIOFileFilter1);
    paramIOFileFilter2 = setUpEffectiveDirFilter(paramIOFileFilter2);
    LinkedList<File> linkedList = new LinkedList();
    innerListFiles(linkedList, paramFile, FileFilterUtils.or(new IOFileFilter[] { paramIOFileFilter1, paramIOFileFilter2 }, ), false);
    return linkedList;
  }
  
  public static Collection<File> listFiles(File paramFile, String[] paramArrayOfString, boolean paramBoolean) {
    IOFileFilter iOFileFilter1;
    SuffixFileFilter suffixFileFilter;
    if (paramArrayOfString == null) {
      iOFileFilter1 = TrueFileFilter.INSTANCE;
    } else {
      suffixFileFilter = new SuffixFileFilter(toSuffixes((String[])iOFileFilter1));
    } 
    if (paramBoolean) {
      IOFileFilter iOFileFilter = TrueFileFilter.INSTANCE;
      return listFiles(paramFile, (IOFileFilter)suffixFileFilter, iOFileFilter);
    } 
    IOFileFilter iOFileFilter2 = FalseFileFilter.INSTANCE;
    return listFiles(paramFile, (IOFileFilter)suffixFileFilter, iOFileFilter2);
  }
  
  public static Collection<File> listFilesAndDirs(File paramFile, IOFileFilter paramIOFileFilter1, IOFileFilter paramIOFileFilter2) {
    validateListFilesParameters(paramFile, paramIOFileFilter1);
    paramIOFileFilter1 = setUpEffectiveFileFilter(paramIOFileFilter1);
    paramIOFileFilter2 = setUpEffectiveDirFilter(paramIOFileFilter2);
    LinkedList<File> linkedList = new LinkedList();
    if (paramFile.isDirectory())
      linkedList.add(paramFile); 
    innerListFiles(linkedList, paramFile, FileFilterUtils.or(new IOFileFilter[] { paramIOFileFilter1, paramIOFileFilter2 }, ), true);
    return linkedList;
  }
  
  public static void moveDirectory(File paramFile1, File paramFile2) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (!paramFile1.exists())
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist"); 
    if (!paramFile1.isDirectory())
      throw new IOException("Source '" + paramFile1 + "' is not a directory"); 
    if (paramFile2.exists())
      throw new FileExistsException("Destination '" + paramFile2 + "' already exists"); 
    if (!paramFile1.renameTo(paramFile2)) {
      if (paramFile2.getCanonicalPath().startsWith(paramFile1.getCanonicalPath()))
        throw new IOException("Cannot move directory: " + paramFile1 + " to a subdirectory of itself: " + paramFile2); 
      copyDirectory(paramFile1, paramFile2);
      deleteDirectory(paramFile1);
      if (paramFile1.exists())
        throw new IOException("Failed to delete original directory '" + paramFile1 + "' after copy to '" + paramFile2 + "'"); 
    } 
  }
  
  public static void moveDirectoryToDirectory(File paramFile1, File paramFile2, boolean paramBoolean) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination directory must not be null"); 
    if (!paramFile2.exists() && paramBoolean)
      paramFile2.mkdirs(); 
    if (!paramFile2.exists())
      throw new FileNotFoundException("Destination directory '" + paramFile2 + "' does not exist [createDestDir=" + paramBoolean + "]"); 
    if (!paramFile2.isDirectory())
      throw new IOException("Destination '" + paramFile2 + "' is not a directory"); 
    moveDirectory(paramFile1, new File(paramFile2, paramFile1.getName()));
  }
  
  public static void moveFile(File paramFile1, File paramFile2) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (!paramFile1.exists())
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist"); 
    if (paramFile1.isDirectory())
      throw new IOException("Source '" + paramFile1 + "' is a directory"); 
    if (paramFile2.exists())
      throw new FileExistsException("Destination '" + paramFile2 + "' already exists"); 
    if (paramFile2.isDirectory())
      throw new IOException("Destination '" + paramFile2 + "' is a directory"); 
    if (!paramFile1.renameTo(paramFile2)) {
      copyFile(paramFile1, paramFile2);
      if (!paramFile1.delete()) {
        deleteQuietly(paramFile2);
        throw new IOException("Failed to delete original file '" + paramFile1 + "' after copy to '" + paramFile2 + "'");
      } 
    } 
  }
  
  public static void moveFileToDirectory(File paramFile1, File paramFile2, boolean paramBoolean) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination directory must not be null"); 
    if (!paramFile2.exists() && paramBoolean)
      paramFile2.mkdirs(); 
    if (!paramFile2.exists())
      throw new FileNotFoundException("Destination directory '" + paramFile2 + "' does not exist [createDestDir=" + paramBoolean + "]"); 
    if (!paramFile2.isDirectory())
      throw new IOException("Destination '" + paramFile2 + "' is not a directory"); 
    moveFile(paramFile1, new File(paramFile2, paramFile1.getName()));
  }
  
  public static void moveToDirectory(File paramFile1, File paramFile2, boolean paramBoolean) {
    if (paramFile1 == null)
      throw new NullPointerException("Source must not be null"); 
    if (paramFile2 == null)
      throw new NullPointerException("Destination must not be null"); 
    if (!paramFile1.exists())
      throw new FileNotFoundException("Source '" + paramFile1 + "' does not exist"); 
    if (paramFile1.isDirectory()) {
      moveDirectoryToDirectory(paramFile1, paramFile2, paramBoolean);
      return;
    } 
    moveFileToDirectory(paramFile1, paramFile2, paramBoolean);
  }
  
  public static FileInputStream openInputStream(File paramFile) {
    if (paramFile.exists()) {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory"); 
      if (!paramFile.canRead())
        throw new IOException("File '" + paramFile + "' cannot be read"); 
    } else {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    } 
    return new FileInputStream(paramFile);
  }
  
  public static FileOutputStream openOutputStream(File paramFile) {
    return openOutputStream(paramFile, false);
  }
  
  public static FileOutputStream openOutputStream(File paramFile, boolean paramBoolean) {
    if (paramFile.exists()) {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory"); 
      if (!paramFile.canWrite())
        throw new IOException("File '" + paramFile + "' cannot be written to"); 
    } else {
      File file = paramFile.getParentFile();
      if (file != null && !file.mkdirs() && !file.isDirectory())
        throw new IOException("Directory '" + file + "' could not be created"); 
    } 
    return new FileOutputStream(paramFile, paramBoolean);
  }
  
  public static byte[] readFileToByteArray(File paramFile) {
    FileInputStream fileInputStream = null;
    try {
      FileInputStream fileInputStream1 = openInputStream(paramFile);
      fileInputStream = fileInputStream1;
      return IOUtils.toByteArray(fileInputStream1, paramFile.length());
    } finally {
      IOUtils.closeQuietly(fileInputStream);
    } 
  }
  
  public static String readFileToString(File paramFile) {
    return readFileToString(paramFile, Charset.defaultCharset());
  }
  
  public static String readFileToString(File paramFile, String paramString) {
    return readFileToString(paramFile, Charsets.toCharset(paramString));
  }
  
  public static String readFileToString(File paramFile, Charset paramCharset) {
    FileInputStream fileInputStream = null;
    try {
      FileInputStream fileInputStream1 = openInputStream(paramFile);
      fileInputStream = fileInputStream1;
      return IOUtils.toString(fileInputStream1, Charsets.toCharset(paramCharset));
    } finally {
      IOUtils.closeQuietly(fileInputStream);
    } 
  }
  
  public static List<String> readLines(File paramFile) {
    return readLines(paramFile, Charset.defaultCharset());
  }
  
  public static List<String> readLines(File paramFile, String paramString) {
    return readLines(paramFile, Charsets.toCharset(paramString));
  }
  
  public static List<String> readLines(File paramFile, Charset paramCharset) {
    FileInputStream fileInputStream = null;
    try {
      FileInputStream fileInputStream1 = openInputStream(paramFile);
      fileInputStream = fileInputStream1;
      return IOUtils.readLines(fileInputStream1, Charsets.toCharset(paramCharset));
    } finally {
      IOUtils.closeQuietly(fileInputStream);
    } 
  }
  
  private static IOFileFilter setUpEffectiveDirFilter(IOFileFilter paramIOFileFilter) {
    return (paramIOFileFilter == null) ? FalseFileFilter.INSTANCE : FileFilterUtils.and(new IOFileFilter[] { paramIOFileFilter, DirectoryFileFilter.INSTANCE });
  }
  
  private static IOFileFilter setUpEffectiveFileFilter(IOFileFilter paramIOFileFilter) {
    return FileFilterUtils.and(new IOFileFilter[] { paramIOFileFilter, FileFilterUtils.notFileFilter(DirectoryFileFilter.INSTANCE) });
  }
  
  public static long sizeOf(File paramFile) {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist"); 
    return paramFile.isDirectory() ? sizeOfDirectory(paramFile) : paramFile.length();
  }
  
  public static BigInteger sizeOfAsBigInteger(File paramFile) {
    if (!paramFile.exists())
      throw new IllegalArgumentException(paramFile + " does not exist"); 
    return paramFile.isDirectory() ? sizeOfDirectoryAsBigInteger(paramFile) : BigInteger.valueOf(paramFile.length());
  }
  
  public static long sizeOfDirectory(File paramFile) {
    checkDirectory(paramFile);
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      return 0L; 
    int j = arrayOfFile.length;
    int i = 0;
    long l = 0L;
    while (true) {
      long l1 = l;
      if (i < j) {
        File file = arrayOfFile[i];
        l1 = l;
        try {
          if (!isSymlink(file)) {
            l1 = sizeOf(file);
            l += l1;
            l1 = l;
            if (l >= 0L) {
              l1 = l;
            } else {
              return l1;
            } 
          } 
        } catch (IOException iOException) {
          l1 = l;
        } 
        i++;
        l = l1;
        continue;
      } 
      return l1;
    } 
  }
  
  public static BigInteger sizeOfDirectoryAsBigInteger(File paramFile) {
    checkDirectory(paramFile);
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile == null)
      return BigInteger.ZERO; 
    BigInteger bigInteger = BigInteger.ZERO;
    int j = arrayOfFile.length;
    int i = 0;
    while (true) {
      BigInteger bigInteger1 = bigInteger;
      if (i < j) {
        File file = arrayOfFile[i];
        bigInteger1 = bigInteger;
        try {
          if (!isSymlink(file))
            bigInteger1 = bigInteger.add(BigInteger.valueOf(sizeOf(file))); 
        } catch (IOException iOException) {
          bigInteger1 = bigInteger;
        } 
        i++;
        bigInteger = bigInteger1;
        continue;
      } 
      return bigInteger1;
    } 
  }
  
  public static File toFile(URL paramURL) {
    return (paramURL == null || !"file".equalsIgnoreCase(paramURL.getProtocol())) ? null : new File(decodeUrl(paramURL.getFile().replace('/', File.separatorChar)));
  }
  
  public static File[] toFiles(URL[] paramArrayOfURL) {
    if (paramArrayOfURL == null || paramArrayOfURL.length == 0)
      return EMPTY_FILE_ARRAY; 
    File[] arrayOfFile = new File[paramArrayOfURL.length];
    for (int i = 0; i < paramArrayOfURL.length; i++) {
      URL uRL = paramArrayOfURL[i];
      if (uRL != null) {
        if (!uRL.getProtocol().equals("file"))
          throw new IllegalArgumentException("URL could not be converted to a File: " + uRL); 
        arrayOfFile[i] = toFile(uRL);
      } 
    } 
    return arrayOfFile;
  }
  
  private static String[] toSuffixes(String[] paramArrayOfString) {
    String[] arrayOfString = new String[paramArrayOfString.length];
    for (int i = 0; i < paramArrayOfString.length; i++)
      arrayOfString[i] = "." + paramArrayOfString[i]; 
    return arrayOfString;
  }
  
  public static URL[] toURLs(File[] paramArrayOfFile) {
    URL[] arrayOfURL = new URL[paramArrayOfFile.length];
    for (int i = 0; i < arrayOfURL.length; i++)
      arrayOfURL[i] = paramArrayOfFile[i].toURI().toURL(); 
    return arrayOfURL;
  }
  
  public static void touch(File paramFile) {
    if (!paramFile.exists())
      IOUtils.closeQuietly(openOutputStream(paramFile)); 
    if (!paramFile.setLastModified(System.currentTimeMillis()))
      throw new IOException("Unable to set the last modification time for " + paramFile); 
  }
  
  private static void validateListFilesParameters(File paramFile, IOFileFilter paramIOFileFilter) {
    if (!paramFile.isDirectory())
      throw new IllegalArgumentException("Parameter 'directory' is not a directory"); 
    if (paramIOFileFilter == null)
      throw new NullPointerException("Parameter 'fileFilter' is null"); 
  }
  
  public static boolean waitFor(File paramFile, int paramInt) {
    int i = 0;
    int j = 0;
    while (true) {
      if (!paramFile.exists()) {
        if (i >= 10) {
          if (j > paramInt)
            return false; 
          j++;
          i = 0;
        } else {
          i++;
        } 
        try {
          Thread.sleep(100L);
          continue;
        } catch (InterruptedException interruptedException) {
          continue;
        } catch (Exception exception) {}
      } 
      return true;
    } 
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence) {
    write(paramFile, paramCharSequence, Charset.defaultCharset(), false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, String paramString) {
    write(paramFile, paramCharSequence, paramString, false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, String paramString, boolean paramBoolean) {
    write(paramFile, paramCharSequence, Charsets.toCharset(paramString), paramBoolean);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, Charset paramCharset) {
    write(paramFile, paramCharSequence, paramCharset, false);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, Charset paramCharset, boolean paramBoolean) {
    if (paramCharSequence == null) {
      paramCharSequence = null;
    } else {
      paramCharSequence = paramCharSequence.toString();
    } 
    writeStringToFile(paramFile, (String)paramCharSequence, paramCharset, paramBoolean);
  }
  
  public static void write(File paramFile, CharSequence paramCharSequence, boolean paramBoolean) {
    write(paramFile, paramCharSequence, Charset.defaultCharset(), paramBoolean);
  }
  
  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfbyte) {
    writeByteArrayToFile(paramFile, paramArrayOfbyte, false);
  }
  
  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfbyte, boolean paramBoolean) {
    FileOutputStream fileOutputStream = null;
    try {
      FileOutputStream fileOutputStream1 = openOutputStream(paramFile, paramBoolean);
      fileOutputStream = fileOutputStream1;
      fileOutputStream1.write(paramArrayOfbyte);
      fileOutputStream = fileOutputStream1;
      fileOutputStream1.close();
      return;
    } finally {
      IOUtils.closeQuietly(fileOutputStream);
    } 
  }
  
  public static void writeLines(File paramFile, String paramString, Collection<?> paramCollection) {
    writeLines(paramFile, paramString, paramCollection, null, false);
  }
  
  public static void writeLines(File paramFile, String paramString1, Collection<?> paramCollection, String paramString2) {
    writeLines(paramFile, paramString1, paramCollection, paramString2, false);
  }
  
  public static void writeLines(File paramFile, String paramString1, Collection<?> paramCollection, String paramString2, boolean paramBoolean) {
    FileOutputStream fileOutputStream = null;
    try {
      FileOutputStream fileOutputStream1 = openOutputStream(paramFile, paramBoolean);
      fileOutputStream = fileOutputStream1;
      BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(fileOutputStream1);
      fileOutputStream = fileOutputStream1;
      IOUtils.writeLines(paramCollection, paramString2, bufferedOutputStream, paramString1);
      fileOutputStream = fileOutputStream1;
      bufferedOutputStream.flush();
      fileOutputStream = fileOutputStream1;
      fileOutputStream1.close();
      return;
    } finally {
      IOUtils.closeQuietly(fileOutputStream);
    } 
  }
  
  public static void writeLines(File paramFile, String paramString, Collection<?> paramCollection, boolean paramBoolean) {
    writeLines(paramFile, paramString, paramCollection, null, paramBoolean);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection) {
    writeLines(paramFile, null, paramCollection, null, false);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, String paramString) {
    writeLines(paramFile, null, paramCollection, paramString, false);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, String paramString, boolean paramBoolean) {
    writeLines(paramFile, null, paramCollection, paramString, paramBoolean);
  }
  
  public static void writeLines(File paramFile, Collection<?> paramCollection, boolean paramBoolean) {
    writeLines(paramFile, null, paramCollection, null, paramBoolean);
  }
  
  public static void writeStringToFile(File paramFile, String paramString) {
    writeStringToFile(paramFile, paramString, Charset.defaultCharset(), false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString1, String paramString2) {
    writeStringToFile(paramFile, paramString1, paramString2, false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString1, String paramString2, boolean paramBoolean) {
    writeStringToFile(paramFile, paramString1, Charsets.toCharset(paramString2), paramBoolean);
  }
  
  public static void writeStringToFile(File paramFile, String paramString, Charset paramCharset) {
    writeStringToFile(paramFile, paramString, paramCharset, false);
  }
  
  public static void writeStringToFile(File paramFile, String paramString, Charset paramCharset, boolean paramBoolean) {
    FileOutputStream fileOutputStream = null;
    try {
      FileOutputStream fileOutputStream1 = openOutputStream(paramFile, paramBoolean);
      fileOutputStream = fileOutputStream1;
      IOUtils.write(paramString, fileOutputStream1, paramCharset);
      fileOutputStream = fileOutputStream1;
      fileOutputStream1.close();
      return;
    } finally {
      IOUtils.closeQuietly(fileOutputStream);
    } 
  }
  
  public static void writeStringToFile(File paramFile, String paramString, boolean paramBoolean) {
    writeStringToFile(paramFile, paramString, Charset.defaultCharset(), paramBoolean);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\FileUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */