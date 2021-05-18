import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

public class csb {
  public static double[] A(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    double[] arrayOfDouble = paramParcel.createDoubleArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfDouble;
  }
  
  public static BigDecimal[] B(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0)
      return null; 
    int k = paramParcel.readInt();
    BigDecimal[] arrayOfBigDecimal = new BigDecimal[k];
    for (paramInt = 0; paramInt < k; paramInt++) {
      byte[] arrayOfByte = paramParcel.createByteArray();
      int m = paramParcel.readInt();
      arrayOfBigDecimal[paramInt] = new BigDecimal(new BigInteger(arrayOfByte), m);
    } 
    paramParcel.setDataPosition(j + i);
    return arrayOfBigDecimal;
  }
  
  public static String[] C(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    String[] arrayOfString = paramParcel.createStringArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfString;
  }
  
  public static ArrayList<Integer> D(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0)
      return null; 
    ArrayList<Integer> arrayList = new ArrayList();
    int k = paramParcel.readInt();
    for (paramInt = 0; paramInt < k; paramInt++)
      arrayList.add(Integer.valueOf(paramParcel.readInt())); 
    paramParcel.setDataPosition(j + i);
    return arrayList;
  }
  
  public static ArrayList<String> E(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    ArrayList<String> arrayList = paramParcel.createStringArrayList();
    paramParcel.setDataPosition(paramInt + i);
    return arrayList;
  }
  
  public static Parcel F(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    Parcel parcel = Parcel.obtain();
    parcel.appendFrom(paramParcel, i, paramInt);
    paramParcel.setDataPosition(paramInt + i);
    return parcel;
  }
  
  public static Parcel[] G(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0)
      return null; 
    int k = paramParcel.readInt();
    Parcel[] arrayOfParcel = new Parcel[k];
    for (paramInt = 0; paramInt < k; paramInt++) {
      int m = paramParcel.readInt();
      if (m != 0) {
        int n = paramParcel.dataPosition();
        Parcel parcel = Parcel.obtain();
        parcel.appendFrom(paramParcel, n, m);
        arrayOfParcel[paramInt] = parcel;
        paramParcel.setDataPosition(m + n);
      } else {
        arrayOfParcel[paramInt] = null;
      } 
    } 
    paramParcel.setDataPosition(j + i);
    return arrayOfParcel;
  }
  
  public static int a(int paramInt) {
    return 0xFFFF & paramInt;
  }
  
  public static int a(Parcel paramParcel) {
    return paramParcel.readInt();
  }
  
  public static int a(Parcel paramParcel, int paramInt) {
    return ((paramInt & 0xFFFF0000) != -65536) ? (paramInt >> 16 & 0xFFFF) : paramParcel.readInt();
  }
  
  public static <T extends Parcelable> T a(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    Parcelable parcelable = (Parcelable)paramCreator.createFromParcel(paramParcel);
    paramParcel.setDataPosition(paramInt + i);
    return (T)parcelable;
  }
  
  private static void a(Parcel paramParcel, int paramInt1, int paramInt2) {
    paramInt1 = a(paramParcel, paramInt1);
    if (paramInt1 != paramInt2) {
      String str = String.valueOf(Integer.toHexString(paramInt1));
      throw new csc((new StringBuilder(String.valueOf(str).length() + 46)).append("Expected size ").append(paramInt2).append(" got ").append(paramInt1).append(" (0x").append(str).append(")").toString(), paramParcel);
    } 
  }
  
  private static void a(Parcel paramParcel, int paramInt1, int paramInt2, int paramInt3) {
    if (paramInt2 != paramInt3) {
      String str = String.valueOf(Integer.toHexString(paramInt2));
      throw new csc((new StringBuilder(String.valueOf(str).length() + 46)).append("Expected size ").append(paramInt3).append(" got ").append(paramInt2).append(" (0x").append(str).append(")").toString(), paramParcel);
    } 
  }
  
  public static void a(Parcel paramParcel, int paramInt, List paramList, ClassLoader paramClassLoader) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return; 
    paramParcel.readList(paramList, paramClassLoader);
    paramParcel.setDataPosition(paramInt + i);
  }
  
  public static int b(Parcel paramParcel) {
    int j = a(paramParcel);
    int k = a(paramParcel, j);
    int i = paramParcel.dataPosition();
    if (a(j) != 20293) {
      String str = String.valueOf(Integer.toHexString(j));
      if (str.length() != 0) {
        str = "Expected object header. Got 0x".concat(str);
        throw new csc(str, paramParcel);
      } 
      str = new String("Expected object header. Got 0x");
      throw new csc(str, paramParcel);
    } 
    j = i + k;
    if (j < i || j > paramParcel.dataSize())
      throw new csc((new StringBuilder(54)).append("Size read is invalid start=").append(i).append(" end=").append(j).toString(), paramParcel); 
    return j;
  }
  
  public static void b(Parcel paramParcel, int paramInt) {
    paramParcel.setDataPosition(a(paramParcel, paramInt) + paramParcel.dataPosition());
  }
  
  public static <T> T[] b(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    Object[] arrayOfObject = paramParcel.createTypedArray(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return (T[])arrayOfObject;
  }
  
  public static <T> ArrayList<T> c(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    ArrayList<T> arrayList = paramParcel.createTypedArrayList(paramCreator);
    paramParcel.setDataPosition(paramInt + i);
    return arrayList;
  }
  
  public static boolean c(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 4);
    return (paramParcel.readInt() != 0);
  }
  
  public static Boolean d(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    if (i == 0)
      return null; 
    a(paramParcel, paramInt, i, 4);
    if (paramParcel.readInt() != 0) {
      boolean bool1 = true;
      return Boolean.valueOf(bool1);
    } 
    boolean bool = false;
    return Boolean.valueOf(bool);
  }
  
  public static byte e(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 4);
    return (byte)paramParcel.readInt();
  }
  
  public static short f(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 4);
    return (short)paramParcel.readInt();
  }
  
  public static int g(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 4);
    return paramParcel.readInt();
  }
  
  public static Integer h(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    if (i == 0)
      return null; 
    a(paramParcel, paramInt, i, 4);
    return Integer.valueOf(paramParcel.readInt());
  }
  
  public static long i(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 8);
    return paramParcel.readLong();
  }
  
  public static Long j(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    if (i == 0)
      return null; 
    a(paramParcel, paramInt, i, 8);
    return Long.valueOf(paramParcel.readLong());
  }
  
  public static BigInteger k(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    byte[] arrayOfByte = paramParcel.createByteArray();
    paramParcel.setDataPosition(paramInt + i);
    return new BigInteger(arrayOfByte);
  }
  
  public static float l(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 4);
    return paramParcel.readFloat();
  }
  
  public static Float m(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    if (i == 0)
      return null; 
    a(paramParcel, paramInt, i, 4);
    return Float.valueOf(paramParcel.readFloat());
  }
  
  public static double n(Parcel paramParcel, int paramInt) {
    a(paramParcel, paramInt, 8);
    return paramParcel.readDouble();
  }
  
  public static Double o(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    if (i == 0)
      return null; 
    a(paramParcel, paramInt, i, 8);
    return Double.valueOf(paramParcel.readDouble());
  }
  
  public static BigDecimal p(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    byte[] arrayOfByte = paramParcel.createByteArray();
    int j = paramParcel.readInt();
    paramParcel.setDataPosition(paramInt + i);
    return new BigDecimal(new BigInteger(arrayOfByte), j);
  }
  
  public static String q(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    String str = paramParcel.readString();
    paramParcel.setDataPosition(paramInt + i);
    return str;
  }
  
  public static IBinder r(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    IBinder iBinder = paramParcel.readStrongBinder();
    paramParcel.setDataPosition(paramInt + i);
    return iBinder;
  }
  
  public static Bundle s(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    Bundle bundle = paramParcel.readBundle();
    paramParcel.setDataPosition(paramInt + i);
    return bundle;
  }
  
  public static byte[] t(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    byte[] arrayOfByte = paramParcel.createByteArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfByte;
  }
  
  public static byte[][] u(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0)
      return null; 
    int k = paramParcel.readInt();
    byte[][] arrayOfByte = new byte[k][];
    for (paramInt = 0; paramInt < k; paramInt++)
      arrayOfByte[paramInt] = paramParcel.createByteArray(); 
    paramParcel.setDataPosition(j + i);
    return arrayOfByte;
  }
  
  public static boolean[] v(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfBoolean;
  }
  
  public static int[] w(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    int[] arrayOfInt = paramParcel.createIntArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfInt;
  }
  
  public static long[] x(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    long[] arrayOfLong = paramParcel.createLongArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfLong;
  }
  
  public static BigInteger[] y(Parcel paramParcel, int paramInt) {
    int i = a(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0)
      return null; 
    int k = paramParcel.readInt();
    BigInteger[] arrayOfBigInteger = new BigInteger[k];
    for (paramInt = 0; paramInt < k; paramInt++)
      arrayOfBigInteger[paramInt] = new BigInteger(paramParcel.createByteArray()); 
    paramParcel.setDataPosition(j + i);
    return arrayOfBigInteger;
  }
  
  public static float[] z(Parcel paramParcel, int paramInt) {
    paramInt = a(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0)
      return null; 
    float[] arrayOfFloat = paramParcel.createFloatArray();
    paramParcel.setDataPosition(paramInt + i);
    return arrayOfFloat;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\csb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */