public final class eut {
  private final euj a = new euj(euh.f);
  
  private void a(byte[] paramArrayOfbyte, int paramInt) {
    boolean bool = false;
    int j = paramArrayOfbyte.length;
    int[] arrayOfInt = new int[j];
    int i;
    for (i = 0; i < j; i++)
      arrayOfInt[i] = paramArrayOfbyte[i] & 0xFF; 
    i = paramArrayOfbyte.length;
    try {
      this.a.a(arrayOfInt, i - paramInt);
      for (i = bool; i < paramInt; i++)
        paramArrayOfbyte[i] = (byte)arrayOfInt[i]; 
    } catch (eul eul) {
      throw epx.a();
    } 
  }
  
  public etw a(ett paramett) {
    euo euo = new euo(paramett);
    euu euu = euo.a();
    eup[] arrayOfEup = eup.a(euo.b(), euu);
    int k = arrayOfEup.length;
    int m = arrayOfEup.length;
    int i = 0;
    int j = 0;
    while (i < m) {
      j += arrayOfEup[i].a();
      i++;
    } 
    byte[] arrayOfByte = new byte[j];
    for (i = 0; i < k; i++) {
      eup eup = arrayOfEup[i];
      byte[] arrayOfByte1 = eup.b();
      m = eup.a();
      a(arrayOfByte1, m);
      for (j = 0; j < m; j++)
        arrayOfByte[j * k + i] = arrayOfByte1[j]; 
    } 
    return euq.a(arrayOfByte);
  }
  
  public etw a(boolean[][] paramArrayOfboolean) {
    int j = paramArrayOfboolean.length;
    ett ett = new ett(j);
    for (int i = 0; i < j; i++) {
      for (int k = 0; k < j; k++) {
        if (paramArrayOfboolean[i][k])
          ett.b(k, i); 
      } 
    } 
    return a(ett);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eut.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */