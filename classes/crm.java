import com.google.android.gms.common.data.DataHolder;
import java.util.ArrayList;

public abstract class crm<T> extends cqw<T> {
  private boolean b = false;
  
  private ArrayList<Integer> c;
  
  protected crm(DataHolder paramDataHolder) {
    super(paramDataHolder);
  }
  
  private void h() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield b : Z
    //   6: ifne -> 204
    //   9: aload_0
    //   10: getfield a : Lcom/google/android/gms/common/data/DataHolder;
    //   13: invokevirtual f : ()I
    //   16: istore_2
    //   17: aload_0
    //   18: new java/util/ArrayList
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: putfield c : Ljava/util/ArrayList;
    //   28: iload_2
    //   29: ifle -> 199
    //   32: aload_0
    //   33: getfield c : Ljava/util/ArrayList;
    //   36: iconst_0
    //   37: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   40: invokevirtual add : (Ljava/lang/Object;)Z
    //   43: pop
    //   44: aload_0
    //   45: invokevirtual f : ()Ljava/lang/String;
    //   48: astore #6
    //   50: aload_0
    //   51: getfield a : Lcom/google/android/gms/common/data/DataHolder;
    //   54: iconst_0
    //   55: invokevirtual a : (I)I
    //   58: istore_1
    //   59: aload_0
    //   60: getfield a : Lcom/google/android/gms/common/data/DataHolder;
    //   63: aload #6
    //   65: iconst_0
    //   66: iload_1
    //   67: invokevirtual c : (Ljava/lang/String;II)Ljava/lang/String;
    //   70: astore #4
    //   72: iconst_1
    //   73: istore_1
    //   74: iload_1
    //   75: iload_2
    //   76: if_icmpge -> 199
    //   79: aload_0
    //   80: getfield a : Lcom/google/android/gms/common/data/DataHolder;
    //   83: iload_1
    //   84: invokevirtual a : (I)I
    //   87: istore_3
    //   88: aload_0
    //   89: getfield a : Lcom/google/android/gms/common/data/DataHolder;
    //   92: aload #6
    //   94: iload_1
    //   95: iload_3
    //   96: invokevirtual c : (Ljava/lang/String;II)Ljava/lang/String;
    //   99: astore #5
    //   101: aload #5
    //   103: ifnonnull -> 170
    //   106: new java/lang/NullPointerException
    //   109: dup
    //   110: new java/lang/StringBuilder
    //   113: dup
    //   114: aload #6
    //   116: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   119: invokevirtual length : ()I
    //   122: bipush #78
    //   124: iadd
    //   125: invokespecial <init> : (I)V
    //   128: ldc 'Missing value for markerColumn: '
    //   130: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   133: aload #6
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: ldc ', at row: '
    //   140: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: iload_1
    //   144: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   147: ldc ', for window: '
    //   149: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   152: iload_3
    //   153: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   156: invokevirtual toString : ()Ljava/lang/String;
    //   159: invokespecial <init> : (Ljava/lang/String;)V
    //   162: athrow
    //   163: astore #4
    //   165: aload_0
    //   166: monitorexit
    //   167: aload #4
    //   169: athrow
    //   170: aload #5
    //   172: aload #4
    //   174: invokevirtual equals : (Ljava/lang/Object;)Z
    //   177: ifne -> 207
    //   180: aload_0
    //   181: getfield c : Ljava/util/ArrayList;
    //   184: iload_1
    //   185: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   188: invokevirtual add : (Ljava/lang/Object;)Z
    //   191: pop
    //   192: aload #5
    //   194: astore #4
    //   196: goto -> 207
    //   199: aload_0
    //   200: iconst_1
    //   201: putfield b : Z
    //   204: aload_0
    //   205: monitorexit
    //   206: return
    //   207: iload_1
    //   208: iconst_1
    //   209: iadd
    //   210: istore_1
    //   211: goto -> 74
    // Exception table:
    //   from	to	target	type
    //   2	28	163	finally
    //   32	72	163	finally
    //   79	101	163	finally
    //   106	163	163	finally
    //   165	167	163	finally
    //   170	192	163	finally
    //   199	204	163	finally
    //   204	206	163	finally
  }
  
  public int a() {
    h();
    return this.c.size();
  }
  
  public final T a(int paramInt) {
    h();
    return a(b(paramInt), c(paramInt));
  }
  
  protected abstract T a(int paramInt1, int paramInt2);
  
  int b(int paramInt) {
    if (paramInt < 0 || paramInt >= this.c.size())
      throw new IllegalArgumentException((new StringBuilder(53)).append("Position ").append(paramInt).append(" is out of bounds for this buffer").toString()); 
    return ((Integer)this.c.get(paramInt)).intValue();
  }
  
  protected int c(int paramInt) {
    int i;
    if (paramInt < 0 || paramInt == this.c.size())
      return 0; 
    if (paramInt == this.c.size() - 1) {
      i = this.a.f() - ((Integer)this.c.get(paramInt)).intValue();
    } else {
      i = ((Integer)this.c.get(paramInt + 1)).intValue() - ((Integer)this.c.get(paramInt)).intValue();
    } 
    int j = i;
    if (i == 1) {
      paramInt = b(paramInt);
      int k = this.a.a(paramInt);
      String str = g();
      j = i;
      if (str != null) {
        j = i;
        if (this.a.c(str, paramInt, k) == null)
          return 0; 
      } 
    } 
    return j;
  }
  
  protected abstract String f();
  
  protected String g() {
    return null;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\crm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */