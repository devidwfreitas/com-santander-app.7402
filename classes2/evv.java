import java.util.Map;

public final class evv {
  private static final int a = 0;
  
  private static final int b = 1;
  
  private static final int c = 2;
  
  private final euj d = new euj(euh.h);
  
  private void a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    byte b;
    boolean bool = false;
    int j = paramInt2 + paramInt3;
    if (paramInt4 == 0) {
      b = 1;
    } else {
      b = 2;
    } 
    int[] arrayOfInt = new int[j / b];
    int i;
    for (i = 0; i < j; i++) {
      if (paramInt4 == 0 || i % 2 == paramInt4 - 1)
        arrayOfInt[i / b] = paramArrayOfbyte[i + paramInt1] & 0xFF; 
    } 
    try {
      this.d.a(arrayOfInt, paramInt3 / b);
      for (paramInt3 = bool; paramInt3 < paramInt2; paramInt3++) {
        if (paramInt4 == 0 || paramInt3 % 2 == paramInt4 - 1)
          paramArrayOfbyte[paramInt3 + paramInt1] = (byte)arrayOfInt[paramInt3 / b]; 
      } 
    } catch (eul eul) {
      throw epx.a();
    } 
  }
  
  public etw a(ett paramett) {
    return a(paramett, null);
  }
  
  public etw a(ett paramett, Map<epy, ?> paramMap) {
    byte[] arrayOfByte2 = (new evt(paramett)).a();
    a(arrayOfByte2, 0, 10, 10, 0);
    int i = arrayOfByte2[0] & 0xF;
    switch (i) {
      default:
        throw eqb.a();
      case 2:
      case 3:
      case 4:
        a(arrayOfByte2, 20, 84, 40, 1);
        a(arrayOfByte2, 20, 84, 40, 2);
        arrayOfByte1 = new byte[94];
        System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, 10);
        System.arraycopy(arrayOfByte2, 20, arrayOfByte1, 10, arrayOfByte1.length - 10);
        return evu.a(arrayOfByte1, i);
      case 5:
        break;
    } 
    a(arrayOfByte2, 20, 68, 56, 1);
    a(arrayOfByte2, 20, 68, 56, 2);
    byte[] arrayOfByte1 = new byte[78];
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, 10);
    System.arraycopy(arrayOfByte2, 20, arrayOfByte1, 10, arrayOfByte1.length - 10);
    return evu.a(arrayOfByte1, i);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\evv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */