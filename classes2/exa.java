import java.util.EnumMap;
import java.util.Map;

final class exa {
  private final int[] a = new int[4];
  
  private final StringBuilder b = new StringBuilder();
  
  private static Map<eqn, Object> a(String paramString) {
    if (paramString.length() != 2)
      return null; 
    EnumMap<eqn, Object> enumMap = new EnumMap<eqn, Object>(eqn.class);
    enumMap.put(eqn.ISSUE_NUMBER, Integer.valueOf(paramString));
    return enumMap;
  }
  
  int a(ets paramets, int[] paramArrayOfint, StringBuilder paramStringBuilder) {
    int[] arrayOfInt = this.a;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int m = paramets.a();
    int i = paramArrayOfint[1];
    int k = 0;
    int j;
    for (j = 0; k < 2 && i < m; j = n) {
      int i1 = exd.a(paramets, arrayOfInt, i, exd.e);
      paramStringBuilder.append((char)(i1 % 10 + 48));
      int i2 = arrayOfInt.length;
      int n = 0;
      while (n < i2) {
        int i3 = arrayOfInt[n];
        n++;
        i = i3 + i;
      } 
      n = j;
      if (i1 >= 10)
        n = j | 1 << 1 - k; 
      j = i;
      if (k != 1)
        j = paramets.e(paramets.d(i)); 
      k++;
      i = j;
    } 
    if (paramStringBuilder.length() != 2)
      throw eqh.a(); 
    if (Integer.parseInt(paramStringBuilder.toString()) % 4 != j)
      throw eqh.a(); 
    return i;
  }
  
  eqm a(int paramInt, ets paramets, int[] paramArrayOfint) {
    StringBuilder stringBuilder = this.b;
    stringBuilder.setLength(0);
    int i = a(paramets, paramArrayOfint, stringBuilder);
    String str = stringBuilder.toString();
    Map<eqn, Object> map = a(str);
    eqo eqo1 = new eqo((paramArrayOfint[0] + paramArrayOfint[1]) / 2.0F, paramInt);
    eqo eqo2 = new eqo(i, paramInt);
    epu epu = epu.UPC_EAN_EXTENSION;
    eqm eqm = new eqm(str, null, new eqo[] { eqo1, eqo2 }, epu);
    if (map != null)
      eqm.a(map); 
    return eqm;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\exa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */