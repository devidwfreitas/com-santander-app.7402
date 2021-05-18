import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

public final class eyn implements eqq {
  static final int a = 30;
  
  static final int b = 2;
  
  private static ett a(ezj paramezj, String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4) {
    byte b;
    paramezj.a(paramString, paramInt1);
    byte[][] arrayOfByte = paramezj.a().a(1, 4);
    if (paramInt3 > paramInt2) {
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    if ((arrayOfByte[0]).length < arrayOfByte.length) {
      b = 1;
    } else {
      b = 0;
    } 
    if ((paramInt1 ^ b) != 0) {
      arrayOfByte = a(arrayOfByte);
      paramInt1 = 1;
    } else {
      paramInt1 = 0;
    } 
    paramInt2 /= (arrayOfByte[0]).length;
    paramInt3 /= arrayOfByte.length;
    if (paramInt2 >= paramInt3)
      paramInt2 = paramInt3; 
    if (paramInt2 > 1) {
      byte[][] arrayOfByte1 = paramezj.a().a(paramInt2, paramInt2 * 4);
      if (paramInt1 != 0)
        arrayOfByte1 = a(arrayOfByte1); 
      return a(arrayOfByte1, paramInt4);
    } 
    return a(arrayOfByte, paramInt4);
  }
  
  private static ett a(byte[][] paramArrayOfbyte, int paramInt) {
    ett ett = new ett((paramArrayOfbyte[0]).length + paramInt * 2, paramArrayOfbyte.length + paramInt * 2);
    ett.a();
    int i = ett.g() - paramInt - 1;
    int j = 0;
    while (j < paramArrayOfbyte.length) {
      int k;
      for (k = 0; k < (paramArrayOfbyte[0]).length; k++) {
        if (paramArrayOfbyte[j][k] == 1)
          ett.b(k + paramInt, i); 
      } 
      j++;
      i--;
    } 
    return ett;
  }
  
  private static byte[][] a(byte[][] paramArrayOfbyte) {
    int i = (paramArrayOfbyte[0]).length;
    int j = paramArrayOfbyte.length;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(byte.class, new int[] { i, j });
    for (i = 0; i < paramArrayOfbyte.length; i++) {
      int k = paramArrayOfbyte.length;
      for (j = 0; j < (paramArrayOfbyte[0]).length; j++)
        arrayOfByte[j][k - i - 1] = paramArrayOfbyte[i][j]; 
    } 
    return arrayOfByte;
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2) {
    return a(paramString, paramepu, paramInt1, paramInt2, null);
  }
  
  public ett a(String paramString, epu paramepu, int paramInt1, int paramInt2, Map<eqa, ?> paramMap) {
    if (paramepu != epu.PDF_417)
      throw new IllegalArgumentException("Can only encode PDF_417, but got " + paramepu); 
    ezj ezj = new ezj();
    int i = 30;
    int j = 2;
    int k = i;
    int m = j;
    if (paramMap != null) {
      if (paramMap.containsKey(eqa.PDF417_COMPACT))
        ezj.a(((Boolean)paramMap.get(eqa.PDF417_COMPACT)).booleanValue()); 
      if (paramMap.containsKey(eqa.PDF417_COMPACTION))
        ezj.a((ezh)paramMap.get(eqa.PDF417_COMPACTION)); 
      if (paramMap.containsKey(eqa.PDF417_DIMENSIONS)) {
        ezi ezi = (ezi)paramMap.get(eqa.PDF417_DIMENSIONS);
        ezj.a(ezi.b(), ezi.a(), ezi.d(), ezi.c());
      } 
      if (paramMap.containsKey(eqa.MARGIN))
        i = ((Number)paramMap.get(eqa.MARGIN)).intValue(); 
      if (paramMap.containsKey(eqa.ERROR_CORRECTION))
        j = ((Number)paramMap.get(eqa.ERROR_CORRECTION)).intValue(); 
      k = i;
      m = j;
      if (paramMap.containsKey(eqa.CHARACTER_SET)) {
        ezj.a(Charset.forName((String)paramMap.get(eqa.CHARACTER_SET)));
        m = j;
        k = i;
      } 
    } 
    return a(ezj, paramString, m, paramInt1, paramInt2, k);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eyn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */