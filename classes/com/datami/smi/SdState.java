package com.datami.smi;

public enum SdState {
  SD_AVAILABLE,
  SD_NOT_AVAILABLE,
  WIFI(1);
  
  private static final byte[] $ = new byte[] { 
      69, 33, 89, 62, 14, -28, 29, -22, 20, -9, 
      -4, 10, -2, -11, 6, 14, -28, 16, -2, -6, 
      -12, 29, -22, 20, -9, -4, 10, -2, -11, 6, 
      13, 2, -4 };
  
  private static int $$ = 37;
  
  private int statusCode;
  
  private static String $(int paramInt1, int paramInt2, int paramInt3) {
    int j;
    byte[] arrayOfByte1 = $;
    paramInt1 += 4;
    int i = 87 - paramInt2 * 4;
    int k = paramInt3 * 4 + 4;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      j = i;
      i = paramInt1;
    } else {
      paramInt2 = 0;
      paramInt3 = paramInt1;
      paramInt1 = i;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
    } 
    paramInt1 = -i + j - 1;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
  }
  
  static {
    int i = $[12] + 1;
    SD_AVAILABLE = new SdState($(i, -i, $[31]), 1, 2);
    i = $[11];
    int j = $$ & 0x3;
    SD_NOT_AVAILABLE = new SdState($(i, j, j + 2), 2, 3);
    $VALUES = new SdState[] { WIFI, SD_AVAILABLE, SD_NOT_AVAILABLE };
  }
  
  SdState(int paramInt1) {
    this.statusCode = paramInt1;
  }
  
  public final int getStatusCode() {
    return this.statusCode;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\SdState.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */