import java.text.DecimalFormat;
import java.text.NumberFormat;

final class evu {
  private static final char a = '￰';
  
  private static final char b = '￱';
  
  private static final char c = '￲';
  
  private static final char d = '￳';
  
  private static final char e = '￴';
  
  private static final char f = '￵';
  
  private static final char g = '￶';
  
  private static final char h = '￷';
  
  private static final char i = '￸';
  
  private static final char j = '￹';
  
  private static final char k = '￺';
  
  private static final char l = '￻';
  
  private static final char m = '￼';
  
  private static final char n = '\034';
  
  private static final char o = '\035';
  
  private static final char p = '\036';
  
  private static final NumberFormat q = new DecimalFormat("000000000");
  
  private static final NumberFormat r = new DecimalFormat("000");
  
  private static final String[] s = new String[] { "\nABCDEFGHIJKLMNOPQRSTUVWXYZ￺\034\035\036￻ ￼\"#$%&'()*+,-./0123456789:￱￲￳￴￸", "`abcdefghijklmnopqrstuvwxyz￺\034\035\036￻{￼}~;<=>?[\\]^_ ,./:@!|￼￵￶￼￰￲￳￴￷", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÚ￺\034\035\036ÛÜÝÞßª¬±²³µ¹º¼½¾￷ ￹￳￴￸", "àáâãäåæçèéêëìíîïðñòóôõö÷øùú￺\034\035\036￻ûüýþÿ¡¨«¯°´·¸»¿￷ ￲￹￴￸", "\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032￺￼￼\033￻\034\035\036\037 ¢£¤¥¦§©­®¶￷ ￲￳￹￸", "\000\001\002\003\004\005\006\007\b\t\n\013\f\r\016\017\020\021\022\023\024\025\026\027\030\031\032\033\034\035\036\037 !\"#$%&'()*+,-./0123456789:;<=>?" };
  
  private static int a(int paramInt, byte[] paramArrayOfbyte) {
    boolean bool = true;
    int i = paramInt - 1;
    paramInt = bool;
    if ((1 << 5 - i % 6 & paramArrayOfbyte[i / 6]) == 0)
      paramInt = 0; 
    return paramInt;
  }
  
  private static int a(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, new byte[] { 53, 54, 43, 44, 45, 46, 47, 48, 37, 38 });
  }
  
  private static int a(byte[] paramArrayOfbyte1, byte[] paramArrayOfbyte2) {
    int i = 0;
    if (paramArrayOfbyte2.length == 0)
      throw new IllegalArgumentException(); 
    int j = 0;
    while (i < paramArrayOfbyte2.length) {
      j += a(paramArrayOfbyte2[i], paramArrayOfbyte1) << paramArrayOfbyte2.length - i - 1;
      i++;
    } 
    return j;
  }
  
  static etw a(byte[] paramArrayOfbyte, int paramInt) {
    String str1;
    String str2;
    String str3;
    StringBuilder stringBuilder = new StringBuilder(144);
    switch (paramInt) {
      default:
        return new etw(paramArrayOfbyte, stringBuilder.toString(), null, String.valueOf(paramInt));
      case 2:
      case 3:
        if (paramInt == 2) {
          int i = d(paramArrayOfbyte);
          str1 = (new DecimalFormat("0000000000".substring(0, c(paramArrayOfbyte)))).format(i);
        } else {
          str1 = e(paramArrayOfbyte);
        } 
        str2 = r.format(a(paramArrayOfbyte));
        str3 = r.format(b(paramArrayOfbyte));
        stringBuilder.append(a(paramArrayOfbyte, 10, 84));
        if (stringBuilder.toString().startsWith("[)>\03601\035"))
          stringBuilder.insert(9, str1 + '\035' + str2 + '\035' + str3 + '\035'); 
        stringBuilder.insert(0, str1 + '\035' + str2 + '\035' + str3 + '\035');
      case 4:
        stringBuilder.append(a(paramArrayOfbyte, 1, 93));
      case 5:
        break;
    } 
    stringBuilder.append(a(paramArrayOfbyte, 1, 77));
  }
  
  private static String a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2) {
    StringBuilder stringBuilder = new StringBuilder();
    int i = paramInt1;
    int m = 0;
    int j = 0;
    int k = -1;
    while (true) {
      if (i < paramInt1 + paramInt2) {
        byte b1;
        byte b2;
        byte b3;
        byte b4;
        char c = s[j].charAt(paramArrayOfbyte[i]);
        switch (c) {
          default:
            stringBuilder.append(c);
            i1 = j;
            j = i;
            i = i1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￷':
            j = i;
            k = -1;
            i = 0;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￸':
            j = i;
            k = -1;
            i = 1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￰':
          case '￱':
          case '￲':
          case '￳':
          case '￴':
            i1 = 1;
            k = i;
            i = c - 65520;
            m = j;
            j = k;
            k = i1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￵':
            i1 = 2;
            k = i;
            i = 0;
            m = j;
            j = k;
            k = i1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￶':
            i1 = 3;
            k = i;
            i = 0;
            m = j;
            j = k;
            k = i1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￻':
            i1 = i + 1;
            i = paramArrayOfbyte[i1];
            b1 = paramArrayOfbyte[++i1];
            b2 = paramArrayOfbyte[++i1];
            b3 = paramArrayOfbyte[++i1];
            b4 = paramArrayOfbyte[++i1];
            stringBuilder.append(q.format(((i << 24) + (b1 << 18) + (b2 << 12) + (b3 << 6) + b4)));
            i = j;
            j = i1;
            if (k == 0)
              i = m; 
            k--;
            i1 = j + 1;
            j = i;
            i = i1;
            continue;
          case '￹':
            break;
        } 
        int i1 = -1;
        k = i;
        i = j;
        j = k;
        k = i1;
      } else {
        break;
      } 
      if (k == 0)
        i = m; 
      k--;
      int n = j + 1;
      j = i;
      i = n;
    } 
    while (stringBuilder.length() > 0 && stringBuilder.charAt(stringBuilder.length() - 1) == '￼')
      stringBuilder.setLength(stringBuilder.length() - 1); 
    return stringBuilder.toString();
  }
  
  private static int b(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, new byte[] { 55, 56, 57, 58, 59, 60, 49, 50, 51, 52 });
  }
  
  private static int c(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, new byte[] { 39, 40, 41, 42, 31, 32 });
  }
  
  private static int d(byte[] paramArrayOfbyte) {
    return a(paramArrayOfbyte, new byte[] { 
          33, 34, 35, 36, 25, 26, 27, 28, 29, 30, 
          19, 20, 21, 22, 23, 24, 13, 14, 15, 16, 
          17, 18, 7, 8, 9, 10, 11, 12, 1, 2 });
  }
  
  private static String e(byte[] paramArrayOfbyte) {
    return String.valueOf(new char[] { s[0].charAt(a(paramArrayOfbyte, new byte[] { 39, 40, 41, 42, 31, 32 })), s[0].charAt(a(paramArrayOfbyte, new byte[] { 33, 34, 35, 36, 25, 26 })), s[0].charAt(a(paramArrayOfbyte, new byte[] { 27, 28, 29, 30, 19, 20 })), s[0].charAt(a(paramArrayOfbyte, new byte[] { 21, 22, 23, 24, 13, 14 })), s[0].charAt(a(paramArrayOfbyte, new byte[] { 15, 16, 17, 18, 7, 8 })), s[0].charAt(a(paramArrayOfbyte, new byte[] { 9, 10, 11, 12, 1, 2 })) });
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */