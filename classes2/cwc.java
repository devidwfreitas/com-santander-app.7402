public class cwc {
  public static int a(byte[] paramArrayOfbyte, int paramInt1, int paramInt2, int paramInt3) {
    int j = paramInt1 + (paramInt2 & 0xFFFFFFFC);
    int i = paramInt3;
    paramInt3 = paramInt1;
    paramInt1 = i;
    while (paramInt3 < j) {
      i = (paramArrayOfbyte[paramInt3] & 0xFF | (paramArrayOfbyte[paramInt3 + 1] & 0xFF) << 8 | (paramArrayOfbyte[paramInt3 + 2] & 0xFF) << 16 | paramArrayOfbyte[paramInt3 + 3] << 24) * -862048943;
      paramInt1 = (i >>> 17 | i << 15) * 461845907 ^ paramInt1;
      paramInt1 = -430675100 + (paramInt1 >>> 19 | paramInt1 << 13) * 5;
      paramInt3 += 4;
    } 
    i = 0;
    paramInt3 = 0;
    switch (paramInt2 & 0x3) {
      default:
        paramInt1 ^= paramInt2;
        paramInt1 = (paramInt1 ^ paramInt1 >>> 16) * -2048144789;
        paramInt1 = (paramInt1 ^ paramInt1 >>> 13) * -1028477387;
        return paramInt1 ^ paramInt1 >>> 16;
      case 3:
        paramInt3 = (paramArrayOfbyte[j + 2] & 0xFF) << 16;
      case 2:
        i = paramInt3 | (paramArrayOfbyte[j + 1] & 0xFF) << 8;
        break;
      case 1:
        break;
    } 
    paramInt3 = (i | paramArrayOfbyte[j] & 0xFF) * -862048943;
    paramInt1 = (paramInt3 >>> 17 | paramInt3 << 15) * 461845907 ^ paramInt1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cwc.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */