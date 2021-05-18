package org.apache.commons.io;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;

@Deprecated
public class CopyUtils {
  private static final int DEFAULT_BUFFER_SIZE = 4096;
  
  public static int copy(InputStream paramInputStream, OutputStream paramOutputStream) {
    byte[] arrayOfByte = new byte[4096];
    int i = 0;
    while (true) {
      int j = paramInputStream.read(arrayOfByte);
      if (-1 != j) {
        paramOutputStream.write(arrayOfByte, 0, j);
        i += j;
        continue;
      } 
      return i;
    } 
  }
  
  public static int copy(Reader paramReader, Writer paramWriter) {
    char[] arrayOfChar = new char[4096];
    int i = 0;
    while (true) {
      int j = paramReader.read(arrayOfChar);
      if (-1 != j) {
        paramWriter.write(arrayOfChar, 0, j);
        i += j;
        continue;
      } 
      return i;
    } 
  }
  
  public static void copy(InputStream paramInputStream, Writer paramWriter) {
    copy(new InputStreamReader(paramInputStream), paramWriter);
  }
  
  public static void copy(InputStream paramInputStream, Writer paramWriter, String paramString) {
    copy(new InputStreamReader(paramInputStream, paramString), paramWriter);
  }
  
  public static void copy(Reader paramReader, OutputStream paramOutputStream) {
    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(paramOutputStream);
    copy(paramReader, outputStreamWriter);
    outputStreamWriter.flush();
  }
  
  public static void copy(String paramString, OutputStream paramOutputStream) {
    StringReader stringReader = new StringReader(paramString);
    OutputStreamWriter outputStreamWriter = new OutputStreamWriter(paramOutputStream);
    copy(stringReader, outputStreamWriter);
    outputStreamWriter.flush();
  }
  
  public static void copy(String paramString, Writer paramWriter) {
    paramWriter.write(paramString);
  }
  
  public static void copy(byte[] paramArrayOfbyte, OutputStream paramOutputStream) {
    paramOutputStream.write(paramArrayOfbyte);
  }
  
  public static void copy(byte[] paramArrayOfbyte, Writer paramWriter) {
    copy(new ByteArrayInputStream(paramArrayOfbyte), paramWriter);
  }
  
  public static void copy(byte[] paramArrayOfbyte, Writer paramWriter, String paramString) {
    copy(new ByteArrayInputStream(paramArrayOfbyte), paramWriter, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\org\apache\commons\io\CopyUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */