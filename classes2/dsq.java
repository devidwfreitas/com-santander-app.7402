import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

public class dsq {
  protected static final Comparator<byte[]> a = new dsr();
  
  private List<byte[]> b = (List)new LinkedList<byte>();
  
  private List<byte[]> c = (List)new ArrayList<byte>(64);
  
  private int d = 0;
  
  private final int e;
  
  public dsq(int paramInt) {
    this.e = paramInt;
  }
  
  private void a() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield d : I
    //   6: aload_0
    //   7: getfield e : I
    //   10: if_icmple -> 57
    //   13: aload_0
    //   14: getfield b : Ljava/util/List;
    //   17: iconst_0
    //   18: invokeinterface remove : (I)Ljava/lang/Object;
    //   23: checkcast [B
    //   26: astore_1
    //   27: aload_0
    //   28: getfield c : Ljava/util/List;
    //   31: aload_1
    //   32: invokeinterface remove : (Ljava/lang/Object;)Z
    //   37: pop
    //   38: aload_0
    //   39: aload_0
    //   40: getfield d : I
    //   43: aload_1
    //   44: arraylength
    //   45: isub
    //   46: putfield d : I
    //   49: goto -> 2
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    //   57: aload_0
    //   58: monitorexit
    //   59: return
    // Exception table:
    //   from	to	target	type
    //   2	49	52	finally
  }
  
  public void a(byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull -> 19
    //   6: aload_1
    //   7: arraylength
    //   8: istore_2
    //   9: aload_0
    //   10: getfield e : I
    //   13: istore_3
    //   14: iload_2
    //   15: iload_3
    //   16: if_icmple -> 22
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield b : Ljava/util/List;
    //   26: aload_1
    //   27: invokeinterface add : (Ljava/lang/Object;)Z
    //   32: pop
    //   33: aload_0
    //   34: getfield c : Ljava/util/List;
    //   37: aload_1
    //   38: getstatic dsq.a : Ljava/util/Comparator;
    //   41: invokestatic binarySearch : (Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I
    //   44: istore_3
    //   45: iload_3
    //   46: istore_2
    //   47: iload_3
    //   48: ifge -> 56
    //   51: iload_3
    //   52: ineg
    //   53: iconst_1
    //   54: isub
    //   55: istore_2
    //   56: aload_0
    //   57: getfield c : Ljava/util/List;
    //   60: iload_2
    //   61: aload_1
    //   62: invokeinterface add : (ILjava/lang/Object;)V
    //   67: aload_0
    //   68: aload_0
    //   69: getfield d : I
    //   72: aload_1
    //   73: arraylength
    //   74: iadd
    //   75: putfield d : I
    //   78: aload_0
    //   79: invokespecial a : ()V
    //   82: goto -> 19
    //   85: astore_1
    //   86: aload_0
    //   87: monitorexit
    //   88: aload_1
    //   89: athrow
    // Exception table:
    //   from	to	target	type
    //   6	14	85	finally
    //   22	45	85	finally
    //   56	82	85	finally
  }
  
  public byte[] a(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_0
    //   3: istore_2
    //   4: iload_2
    //   5: aload_0
    //   6: getfield c : Ljava/util/List;
    //   9: invokeinterface size : ()I
    //   14: if_icmpge -> 81
    //   17: aload_0
    //   18: getfield c : Ljava/util/List;
    //   21: iload_2
    //   22: invokeinterface get : (I)Ljava/lang/Object;
    //   27: checkcast [B
    //   30: astore_3
    //   31: aload_3
    //   32: arraylength
    //   33: iload_1
    //   34: if_icmplt -> 74
    //   37: aload_0
    //   38: aload_0
    //   39: getfield d : I
    //   42: aload_3
    //   43: arraylength
    //   44: isub
    //   45: putfield d : I
    //   48: aload_0
    //   49: getfield c : Ljava/util/List;
    //   52: iload_2
    //   53: invokeinterface remove : (I)Ljava/lang/Object;
    //   58: pop
    //   59: aload_0
    //   60: getfield b : Ljava/util/List;
    //   63: aload_3
    //   64: invokeinterface remove : (Ljava/lang/Object;)Z
    //   69: pop
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_3
    //   73: areturn
    //   74: iload_2
    //   75: iconst_1
    //   76: iadd
    //   77: istore_2
    //   78: goto -> 4
    //   81: iload_1
    //   82: newarray byte
    //   84: astore_3
    //   85: goto -> 70
    //   88: astore_3
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_3
    //   92: athrow
    // Exception table:
    //   from	to	target	type
    //   4	70	88	finally
    //   81	85	88	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dsq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */