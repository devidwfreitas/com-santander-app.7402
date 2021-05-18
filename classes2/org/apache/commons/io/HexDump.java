package org.apache.commons.io;

import java.io.OutputStream;

public class HexDump {
  public static final String EOL = System.getProperty("line.separator");
  
  private static final char[] _hexcodes = new char[] { 
      '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 
      'A', 'B', 'C', 'D', 'E', 'F' };
  
  private static final int[] _shifts = new int[] { 28, 24, 20, 16, 12, 8, 4, 0 };
  
  private static StringBuilder dump(StringBuilder paramStringBuilder, byte paramByte) {
    for (int i = 0; i < 2; i++)
      paramStringBuilder.append(_hexcodes[paramByte >> _shifts[i + 6] & 0xF]); 
    return paramStringBuilder;
  }
  
  private static StringBuilder dump(StringBuilder paramStringBuilder, long paramLong) {
    for (int i = 0; i < 8; i++)
      paramStringBuilder.append(_hexcodes[(int)(paramLong >> _shifts[i]) & 0xF]); 
    return paramStringBuilder;
  }
  
  public static void dump(byte[] paramArrayOfbyte, long paramLong, OutputStream paramOutputStream, int paramInt) {
    if (paramInt < 0 || paramInt >= paramArrayOfbyte.length)
      throw new ArrayIndexOutOfBoundsException("illegal index: " + paramInt + " into array of length " + paramArrayOfbyte.length); 
    if (paramOutputStream == null)
      throw new IllegalArgumentException("cannot write to nullstream"); 
    paramLong = paramInt + paramLong;
    StringBuilder stringBuilder = new StringBuilder(74);
    while (paramInt < paramArrayOfbyte.length) {
      int j = paramArrayOfbyte.length - paramInt;
      int i = j;
      if (j > 16)
        i = 16; 
      dump(stringBuilder, paramLong).append(' ');
      for (j = 0; j < 16; j++) {
        if (j < i) {
          dump(stringBuilder, paramArrayOfbyte[j + paramInt]);
        } else {
          stringBuilder.append("  ");
        } 
        stringBuilder.append(' ');
      } 
      for (j = 0; j < i; j++) {
        if (paramArrayOfbyte[j + paramInt] >= 32 && paramArrayOfbyte[j + paramInt] < Byte.MAX_VALUE) {
          stringBuilder.append((char)paramArrayOfbyte[j + paramInt]);
        } else {
          stringBuilder.append('.');
        } 
      } 
      stringBuilder.append(EOL);
      paramOutputStream.write(stringBuilder.toString().getBytes());
      paramOutputStream.flush();
      stringBuilder.setLength(0);
      paramLong += i;
      paramInt += 16;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\HexDump.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */