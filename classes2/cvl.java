import java.util.ArrayList;
import java.util.Arrays;

public final class cvl {
  public static <T> int a(T[] paramArrayOfT, T paramT) {
    byte b;
    int i = 0;
    if (paramArrayOfT != null) {
      b = paramArrayOfT.length;
    } else {
      b = 0;
    } 
    while (i < b) {
      if (csg.a(paramArrayOfT[i], paramT))
        return i; 
      i++;
    } 
    return -1;
  }
  
  public static <T> ArrayList<T> a() {
    return new ArrayList<T>();
  }
  
  public static <T> ArrayList<T> a(T[] paramArrayOfT) {
    int j = paramArrayOfT.length;
    ArrayList<T> arrayList = new ArrayList(j);
    for (int i = 0; i < j; i++)
      arrayList.add(paramArrayOfT[i]); 
    return arrayList;
  }
  
  public static void a(StringBuilder paramStringBuilder, double[] paramArrayOfdouble) {
    int j = paramArrayOfdouble.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(Double.toString(paramArrayOfdouble[i]));
    } 
  }
  
  public static void a(StringBuilder paramStringBuilder, float[] paramArrayOffloat) {
    int j = paramArrayOffloat.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(Float.toString(paramArrayOffloat[i]));
    } 
  }
  
  public static void a(StringBuilder paramStringBuilder, int[] paramArrayOfint) {
    int j = paramArrayOfint.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(Integer.toString(paramArrayOfint[i]));
    } 
  }
  
  public static void a(StringBuilder paramStringBuilder, long[] paramArrayOflong) {
    int j = paramArrayOflong.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(Long.toString(paramArrayOflong[i]));
    } 
  }
  
  public static <T> void a(StringBuilder paramStringBuilder, T[] paramArrayOfT) {
    int j = paramArrayOfT.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(paramArrayOfT[i].toString());
    } 
  }
  
  public static void a(StringBuilder paramStringBuilder, String[] paramArrayOfString) {
    int j = paramArrayOfString.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append("\"").append(paramArrayOfString[i]).append("\"");
    } 
  }
  
  public static void a(StringBuilder paramStringBuilder, boolean[] paramArrayOfboolean) {
    int j = paramArrayOfboolean.length;
    for (int i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      paramStringBuilder.append(Boolean.toString(paramArrayOfboolean[i]));
    } 
  }
  
  public static byte[] a(byte[]... paramVarArgs) {
    if (paramVarArgs.length == 0)
      return new byte[0]; 
    int i = 0;
    int j = 0;
    while (i < paramVarArgs.length) {
      j += (paramVarArgs[i]).length;
      i++;
    } 
    byte[] arrayOfByte = Arrays.copyOf(paramVarArgs[0], j);
    j = (paramVarArgs[0]).length;
    for (i = 1; i < paramVarArgs.length; i++) {
      byte[] arrayOfByte1 = paramVarArgs[i];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte, j, arrayOfByte1.length);
      j += arrayOfByte1.length;
    } 
    return arrayOfByte;
  }
  
  public static Integer[] a(int[] paramArrayOfint) {
    if (paramArrayOfint == null)
      return null; 
    int j = paramArrayOfint.length;
    Integer[] arrayOfInteger = new Integer[j];
    int i = 0;
    while (true) {
      Integer[] arrayOfInteger1 = arrayOfInteger;
      if (i < j) {
        arrayOfInteger[i] = Integer.valueOf(paramArrayOfint[i]);
        i++;
        continue;
      } 
      return arrayOfInteger1;
    } 
  }
  
  public static <T> boolean b(T[] paramArrayOfT, T paramT) {
    return (a(paramArrayOfT, paramT) >= 0);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cvl.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */