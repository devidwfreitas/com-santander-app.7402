import android.content.Intent;
import java.util.UUID;

public class bmr {
  private static bmr a;
  
  private UUID b;
  
  private Intent c;
  
  private int d;
  
  public bmr(int paramInt) {
    this(paramInt, UUID.randomUUID());
  }
  
  public bmr(int paramInt, UUID paramUUID) {
    this.b = paramUUID;
    this.d = paramInt;
  }
  
  public static bmr a() {
    return a;
  }
  
  public static bmr a(UUID paramUUID, int paramInt) {
    // Byte code:
    //   0: ldc bmr
    //   2: monitorenter
    //   3: invokestatic a : ()Lbmr;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull -> 32
    //   11: aload_3
    //   12: invokevirtual c : ()Ljava/util/UUID;
    //   15: aload_0
    //   16: invokevirtual equals : (Ljava/lang/Object;)Z
    //   19: ifeq -> 32
    //   22: aload_3
    //   23: invokevirtual d : ()I
    //   26: istore_2
    //   27: iload_2
    //   28: iload_1
    //   29: if_icmpeq -> 39
    //   32: aconst_null
    //   33: astore_0
    //   34: ldc bmr
    //   36: monitorexit
    //   37: aload_0
    //   38: areturn
    //   39: aconst_null
    //   40: invokestatic a : (Lbmr;)Z
    //   43: pop
    //   44: aload_3
    //   45: astore_0
    //   46: goto -> 34
    //   49: astore_0
    //   50: ldc bmr
    //   52: monitorexit
    //   53: aload_0
    //   54: athrow
    // Exception table:
    //   from	to	target	type
    //   3	7	49	finally
    //   11	27	49	finally
    //   39	44	49	finally
  }
  
  private static boolean a(bmr parambmr) {
    // Byte code:
    //   0: ldc bmr
    //   2: monitorenter
    //   3: invokestatic a : ()Lbmr;
    //   6: astore_2
    //   7: aload_0
    //   8: putstatic bmr.a : Lbmr;
    //   11: aload_2
    //   12: ifnull -> 22
    //   15: iconst_1
    //   16: istore_1
    //   17: ldc bmr
    //   19: monitorexit
    //   20: iload_1
    //   21: ireturn
    //   22: iconst_0
    //   23: istore_1
    //   24: goto -> 17
    //   27: astore_0
    //   28: ldc bmr
    //   30: monitorexit
    //   31: aload_0
    //   32: athrow
    // Exception table:
    //   from	to	target	type
    //   3	11	27	finally
  }
  
  public void a(int paramInt) {
    this.d = paramInt;
  }
  
  public void a(Intent paramIntent) {
    this.c = paramIntent;
  }
  
  public Intent b() {
    return this.c;
  }
  
  public UUID c() {
    return this.b;
  }
  
  public int d() {
    return this.d;
  }
  
  public boolean e() {
    return a(this);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bmr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */