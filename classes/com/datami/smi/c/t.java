package com.datami.smi.c;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Date;

public final class t {
  private static final int a = 14;
  
  private static final int b = 13;
  
  private static final int c = 12;
  
  private static final int d = 0;
  
  private static final int e = 15;
  
  private static final int f = 30;
  
  private static final int g = 45;
  
  private static final String h = "[dmi]ServiceToken";
  
  private static final byte[] i = new byte[] { 
      64, 16, -53, 106, -4, -21, 27, 5, 1, 10, 
      11, -76, -1, -14, -9, 1, -5, 36, 20, -16, 
      -2, 60, -17, -6, -3, -10, 6, -10, 3, 41, 
      15, -76, -1, -14, -9, 1, -5, 62, -76, -15, 
      -9, 76, -15, -15, -2, 6, 4, -24, -19, -10, 
      7, 0, -8, 11, -33, -2, 0, -15, 3, 9, 
      5, 1, 14, -10 };
  
  private static int j = 53;
  
  public static String a() {
    int i;
    Calendar calendar;
    try {
      StringBuilder stringBuilder = new StringBuilder();
      Date date = new Date(System.currentTimeMillis());
      calendar = Calendar.getInstance();
      calendar.setTime(date);
      calendar.set(14, 0);
      calendar.set(13, 0);
      i = calendar.get(12);
      if (i >= 0 && i < 15) {
        calendar.set(12, 0);
        return a(stringBuilder.append(calendar.getTimeInMillis()).toString());
      } 
      if (i >= 15 && i < 30) {
        calendar.set(12, 15);
        return a(stringBuilder.append(calendar.getTimeInMillis()).toString());
      } 
    } catch (Exception exception) {
      i = i[51];
      a(i, i | 0x25, i[59]);
      a(i[8], i[12], i[28]);
      return null;
    } 
    if (i >= 30 && i < 45) {
      calendar.set(12, 30);
      return a(exception.append(calendar.getTimeInMillis()).toString());
    } 
    calendar.set(12, 45);
    return a(exception.append(calendar.getTimeInMillis()).toString());
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    byte[] arrayOfByte1 = i;
    int k = 17 - paramInt1;
    paramInt2 += 4;
    int i = 109 - paramInt3 * 2;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt3 = 0;
      paramInt1 = paramInt2;
    } else {
      paramInt3 = paramInt2;
      paramInt2 = 0;
      paramInt1 = i;
      int m = paramInt3 + 1;
      paramInt3 = paramInt2 + 1;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    i = -paramInt2 + i - 6;
    paramInt2 = paramInt3;
    paramInt3 = paramInt1;
    paramInt1 = i;
    int j = paramInt3 + 1;
    paramInt3 = paramInt2 + 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  public static String a(String paramString) {
    byte b = i[10];
    int i = j + 2;
    MessageDigest messageDigest = MessageDigest.getInstance(a(b + 1, i, i >>> 2));
    messageDigest.update(paramString.getBytes(a(i[50], i[62], -i[20])), 0, paramString.length());
    return a(messageDigest.digest());
  }
  
  private static String a(byte[] paramArrayOfbyte) {
    StringBuilder stringBuilder = new StringBuilder();
    int j = paramArrayOfbyte.length;
    int i = 0;
    label18: while (true) {
      if (i < j) {
        byte b = paramArrayOfbyte[i];
        int k = b >>> 4 & 0xF;
        int m = 0;
        while (true) {
          char c;
          if (k >= 0 && k <= 9) {
            c = (char)(k + 48);
          } else {
            c = (char)(k - 10 + 97);
          } 
          stringBuilder.append(c);
          if (m) {
            i++;
            continue label18;
          } 
          m++;
          k = b & 0xF;
        } 
        break;
      } 
      return stringBuilder.toString();
    } 
  }
  
  private static long b() {
    Date date = new Date(System.currentTimeMillis());
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    calendar.set(14, 0);
    calendar.set(13, 0);
    int i = calendar.get(12);
    if (i >= 0 && i < 15) {
      calendar.set(12, 0);
      return calendar.getTimeInMillis();
    } 
    if (i >= 15 && i < 30) {
      calendar.set(12, 15);
      return calendar.getTimeInMillis();
    } 
    if (i >= 30 && i < 45) {
      calendar.set(12, 30);
      return calendar.getTimeInMillis();
    } 
    calendar.set(12, 45);
    return calendar.getTimeInMillis();
  }
  
  public static String b(String paramString) {
    try {
      MessageDigest messageDigest = MessageDigest.getInstance(a(i[62], j, i[1]));
      messageDigest.update(paramString.getBytes());
      byte[] arrayOfByte = messageDigest.digest();
      StringBuffer stringBuffer = new StringBuffer();
      for (int i = 0; i < arrayOfByte.length; i++)
        stringBuffer.append(Integer.toHexString(arrayOfByte[i] & 0xFF)); 
      return stringBuffer.toString();
    } catch (NoSuchAlgorithmException noSuchAlgorithmException) {
      byte b = i[51];
      a(b, b | 0x25, i[59]);
      StringBuilder stringBuilder = new StringBuilder();
      b = -i[20];
      stringBuilder.append(a(b, b | 0x15, i[51])).append(paramString);
      return "";
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\c\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */