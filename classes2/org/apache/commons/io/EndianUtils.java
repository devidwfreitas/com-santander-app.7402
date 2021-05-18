package org.apache.commons.io;

import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;

public class EndianUtils {
  private static int read(InputStream paramInputStream) {
    int i = paramInputStream.read();
    if (-1 == i)
      throw new EOFException("Unexpected EOF reached"); 
    return i;
  }
  
  public static double readSwappedDouble(InputStream paramInputStream) {
    return Double.longBitsToDouble(readSwappedLong(paramInputStream));
  }
  
  public static double readSwappedDouble(byte[] paramArrayOfbyte, int paramInt) {
    return Double.longBitsToDouble(readSwappedLong(paramArrayOfbyte, paramInt));
  }
  
  public static float readSwappedFloat(InputStream paramInputStream) {
    return Float.intBitsToFloat(readSwappedInteger(paramInputStream));
  }
  
  public static float readSwappedFloat(byte[] paramArrayOfbyte, int paramInt) {
    return Float.intBitsToFloat(readSwappedInteger(paramArrayOfbyte, paramInt));
  }
  
  public static int readSwappedInteger(InputStream paramInputStream) {
    return ((read(paramInputStream) & 0xFF) << 0) + ((read(paramInputStream) & 0xFF) << 8) + ((read(paramInputStream) & 0xFF) << 16) + ((read(paramInputStream) & 0xFF) << 24);
  }
  
  public static int readSwappedInteger(byte[] paramArrayOfbyte, int paramInt) {
    return ((paramArrayOfbyte[paramInt + 0] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 1] & 0xFF) << 8) + ((paramArrayOfbyte[paramInt + 2] & 0xFF) << 16) + ((paramArrayOfbyte[paramInt + 3] & 0xFF) << 24);
  }
  
  public static long readSwappedLong(InputStream paramInputStream) {
    byte[] arrayOfByte = new byte[8];
    for (int i = 0; i < 8; i++)
      arrayOfByte[i] = (byte)read(paramInputStream); 
    return readSwappedLong(arrayOfByte, 0);
  }
  
  public static long readSwappedLong(byte[] paramArrayOfbyte, int paramInt) {
    return ((((paramArrayOfbyte[paramInt + 0] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 1] & 0xFF) << 8) + ((paramArrayOfbyte[paramInt + 2] & 0xFF) << 16) + ((paramArrayOfbyte[paramInt + 3] & 0xFF) << 24)) & 0xFFFFFFFFL) + ((((paramArrayOfbyte[paramInt + 4] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 5] & 0xFF) << 8) + ((paramArrayOfbyte[paramInt + 6] & 0xFF) << 16) + ((paramArrayOfbyte[paramInt + 7] & 0xFF) << 24)) << 32L);
  }
  
  public static short readSwappedShort(InputStream paramInputStream) {
    return (short)(((read(paramInputStream) & 0xFF) << 0) + ((read(paramInputStream) & 0xFF) << 8));
  }
  
  public static short readSwappedShort(byte[] paramArrayOfbyte, int paramInt) {
    return (short)(((paramArrayOfbyte[paramInt + 0] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 1] & 0xFF) << 8));
  }
  
  public static long readSwappedUnsignedInteger(InputStream paramInputStream) {
    int i = read(paramInputStream);
    int j = read(paramInputStream);
    int k = read(paramInputStream);
    int m = read(paramInputStream);
    return ((((i & 0xFF) << 0) + ((j & 0xFF) << 8) + ((k & 0xFF) << 16)) & 0xFFFFFFFFL) + ((m & 0xFF) << 24L);
  }
  
  public static long readSwappedUnsignedInteger(byte[] paramArrayOfbyte, int paramInt) {
    return ((((paramArrayOfbyte[paramInt + 0] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 1] & 0xFF) << 8) + ((paramArrayOfbyte[paramInt + 2] & 0xFF) << 16)) & 0xFFFFFFFFL) + ((paramArrayOfbyte[paramInt + 3] & 0xFF) << 24L);
  }
  
  public static int readSwappedUnsignedShort(InputStream paramInputStream) {
    return ((read(paramInputStream) & 0xFF) << 0) + ((read(paramInputStream) & 0xFF) << 8);
  }
  
  public static int readSwappedUnsignedShort(byte[] paramArrayOfbyte, int paramInt) {
    return ((paramArrayOfbyte[paramInt + 0] & 0xFF) << 0) + ((paramArrayOfbyte[paramInt + 1] & 0xFF) << 8);
  }
  
  public static double swapDouble(double paramDouble) {
    return Double.longBitsToDouble(swapLong(Double.doubleToLongBits(paramDouble)));
  }
  
  public static float swapFloat(float paramFloat) {
    return Float.intBitsToFloat(swapInteger(Float.floatToIntBits(paramFloat)));
  }
  
  public static int swapInteger(int paramInt) {
    return ((paramInt >> 0 & 0xFF) << 24) + ((paramInt >> 8 & 0xFF) << 16) + ((paramInt >> 16 & 0xFF) << 8) + ((paramInt >> 24 & 0xFF) << 0);
  }
  
  public static long swapLong(long paramLong) {
    return ((paramLong >> 0L & 0xFFL) << 56L) + ((paramLong >> 8L & 0xFFL) << 48L) + ((paramLong >> 16L & 0xFFL) << 40L) + ((paramLong >> 24L & 0xFFL) << 32L) + ((paramLong >> 32L & 0xFFL) << 24L) + ((paramLong >> 40L & 0xFFL) << 16L) + ((paramLong >> 48L & 0xFFL) << 8L) + ((paramLong >> 56L & 0xFFL) << 0L);
  }
  
  public static short swapShort(short paramShort) {
    return (short)(((paramShort >> 0 & 0xFF) << 8) + ((paramShort >> 8 & 0xFF) << 0));
  }
  
  public static void writeSwappedDouble(OutputStream paramOutputStream, double paramDouble) {
    writeSwappedLong(paramOutputStream, Double.doubleToLongBits(paramDouble));
  }
  
  public static void writeSwappedDouble(byte[] paramArrayOfbyte, int paramInt, double paramDouble) {
    writeSwappedLong(paramArrayOfbyte, paramInt, Double.doubleToLongBits(paramDouble));
  }
  
  public static void writeSwappedFloat(OutputStream paramOutputStream, float paramFloat) {
    writeSwappedInteger(paramOutputStream, Float.floatToIntBits(paramFloat));
  }
  
  public static void writeSwappedFloat(byte[] paramArrayOfbyte, int paramInt, float paramFloat) {
    writeSwappedInteger(paramArrayOfbyte, paramInt, Float.floatToIntBits(paramFloat));
  }
  
  public static void writeSwappedInteger(OutputStream paramOutputStream, int paramInt) {
    paramOutputStream.write((byte)(paramInt >> 0 & 0xFF));
    paramOutputStream.write((byte)(paramInt >> 8 & 0xFF));
    paramOutputStream.write((byte)(paramInt >> 16 & 0xFF));
    paramOutputStream.write((byte)(paramInt >> 24 & 0xFF));
  }
  
  public static void writeSwappedInteger(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    paramArrayOfbyte[paramInt1 + 0] = (byte)(paramInt2 >> 0 & 0xFF);
    paramArrayOfbyte[paramInt1 + 1] = (byte)(paramInt2 >> 8 & 0xFF);
    paramArrayOfbyte[paramInt1 + 2] = (byte)(paramInt2 >> 16 & 0xFF);
    paramArrayOfbyte[paramInt1 + 3] = (byte)(paramInt2 >> 24 & 0xFF);
  }
  
  public static void writeSwappedLong(OutputStream paramOutputStream, long paramLong) {
    paramOutputStream.write((byte)(int)(paramLong >> 0L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 8L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 16L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 24L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 32L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 40L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 48L & 0xFFL));
    paramOutputStream.write((byte)(int)(paramLong >> 56L & 0xFFL));
  }
  
  public static void writeSwappedLong(byte[] paramArrayOfbyte, int paramInt, long paramLong) {
    paramArrayOfbyte[paramInt + 0] = (byte)(int)(paramLong >> 0L & 0xFFL);
    paramArrayOfbyte[paramInt + 1] = (byte)(int)(paramLong >> 8L & 0xFFL);
    paramArrayOfbyte[paramInt + 2] = (byte)(int)(paramLong >> 16L & 0xFFL);
    paramArrayOfbyte[paramInt + 3] = (byte)(int)(paramLong >> 24L & 0xFFL);
    paramArrayOfbyte[paramInt + 4] = (byte)(int)(paramLong >> 32L & 0xFFL);
    paramArrayOfbyte[paramInt + 5] = (byte)(int)(paramLong >> 40L & 0xFFL);
    paramArrayOfbyte[paramInt + 6] = (byte)(int)(paramLong >> 48L & 0xFFL);
    paramArrayOfbyte[paramInt + 7] = (byte)(int)(paramLong >> 56L & 0xFFL);
  }
  
  public static void writeSwappedShort(OutputStream paramOutputStream, short paramShort) {
    paramOutputStream.write((byte)(paramShort >> 0 & 0xFF));
    paramOutputStream.write((byte)(paramShort >> 8 & 0xFF));
  }
  
  public static void writeSwappedShort(byte[] paramArrayOfbyte, int paramInt, short paramShort) {
    paramArrayOfbyte[paramInt + 0] = (byte)(paramShort >> 0 & 0xFF);
    paramArrayOfbyte[paramInt + 1] = (byte)(paramShort >> 8 & 0xFF);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\org\apache\commons\io\EndianUtils.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */