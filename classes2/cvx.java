public final class cvx {
  public static String a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, boolean paramBoolean) {
    if (paramArrayOfbyte == null || paramArrayOfbyte.length == 0 || paramInt1 < 0 || paramInt2 <= 0 || paramInt1 + paramInt2 > paramArrayOfbyte.length)
      return null; 
    int i = 57;
    if (paramBoolean)
      i = 75; 
    StringBuilder stringBuilder = new StringBuilder(i * (paramInt2 + 16 - 1) / 16);
    int k = paramInt2;
    int m = 0;
    int j = 0;
    while (true) {
      if (k > 0) {
        if (!j) {
          if (paramInt2 < 65536) {
            stringBuilder.append(String.format("%04X:", new Object[] { Integer.valueOf(paramInt1) }));
            i = paramInt1;
          } else {
            stringBuilder.append(String.format("%08X:", new Object[] { Integer.valueOf(paramInt1) }));
            i = paramInt1;
          } 
        } else {
          i = m;
          if (j == 8) {
            stringBuilder.append(" -");
            i = m;
          } 
        } 
        stringBuilder.append(String.format(" %02X", new Object[] { Integer.valueOf(paramArrayOfbyte[paramInt1] & 0xFF) }));
        k--;
        m = j + 1;
        if (paramBoolean && (m == 16 || k == 0)) {
          int n = 16 - m;
          if (n > 0)
            for (j = 0; j < n; j++)
              stringBuilder.append("   ");  
          if (n >= 8)
            stringBuilder.append("  "); 
          stringBuilder.append("  ");
          for (j = 0; j < m; j++) {
            char c = (char)paramArrayOfbyte[i + j];
            if (c < ' ' || c > '~')
              c = '.'; 
            stringBuilder.append(c);
          } 
        } 
        if (m == 16 || k == 0) {
          stringBuilder.append('\n');
          j = 0;
        } else {
          j = m;
        } 
        paramInt1++;
        m = i;
        continue;
      } 
      return stringBuilder.toString();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */