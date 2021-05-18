import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import java.util.List;

public abstract class bny<CONTENT, RESULT> implements bhn<CONTENT, RESULT> {
  protected static final Object a = new Object();
  
  private static final String b = "FacebookDialog";
  
  private final Activity c;
  
  private final bpa d;
  
  private List<bnz> e;
  
  private int f;
  
  protected bny(Activity paramActivity, int paramInt) {
    bqx.a(paramActivity, "activity");
    this.c = paramActivity;
    this.d = null;
    this.f = paramInt;
  }
  
  protected bny(bpa parambpa, int paramInt) {
    bqx.a(parambpa, "fragmentWrapper");
    this.d = parambpa;
    this.c = null;
    this.f = paramInt;
    if (parambpa.c() == null)
      throw new IllegalArgumentException("Cannot use a fragment that is not attached to an activity"); 
  }
  
  private bmr c(CONTENT paramCONTENT, Object paramObject) {
    // Byte code:
    //   0: aload_2
    //   1: getstatic bny.a : Ljava/lang/Object;
    //   4: if_acmpne -> 92
    //   7: iconst_1
    //   8: istore_3
    //   9: aload_0
    //   10: invokespecial e : ()Ljava/util/List;
    //   13: invokeinterface iterator : ()Ljava/util/Iterator;
    //   18: astore #4
    //   20: aload #4
    //   22: invokeinterface hasNext : ()Z
    //   27: ifeq -> 111
    //   30: aload #4
    //   32: invokeinterface next : ()Ljava/lang/Object;
    //   37: checkcast bnz
    //   40: astore #5
    //   42: iload_3
    //   43: ifne -> 58
    //   46: aload #5
    //   48: invokevirtual a : ()Ljava/lang/Object;
    //   51: aload_2
    //   52: invokestatic a : (Ljava/lang/Object;Ljava/lang/Object;)Z
    //   55: ifeq -> 20
    //   58: aload #5
    //   60: aload_1
    //   61: iconst_1
    //   62: invokevirtual a : (Ljava/lang/Object;Z)Z
    //   65: ifeq -> 20
    //   68: aload #5
    //   70: aload_1
    //   71: invokevirtual a : (Ljava/lang/Object;)Lbmr;
    //   74: astore_1
    //   75: aload_1
    //   76: astore_2
    //   77: aload_1
    //   78: ifnonnull -> 90
    //   81: aload_0
    //   82: invokevirtual d : ()Lbmr;
    //   85: astore_2
    //   86: aload_2
    //   87: invokestatic a : (Lbmr;)V
    //   90: aload_2
    //   91: areturn
    //   92: iconst_0
    //   93: istore_3
    //   94: goto -> 9
    //   97: astore_2
    //   98: aload_0
    //   99: invokevirtual d : ()Lbmr;
    //   102: astore_1
    //   103: aload_1
    //   104: aload_2
    //   105: invokestatic a : (Lbmr;Lbhp;)V
    //   108: goto -> 75
    //   111: aconst_null
    //   112: astore_1
    //   113: goto -> 75
    // Exception table:
    //   from	to	target	type
    //   68	75	97	bhp
  }
  
  private List<bnz> e() {
    if (this.e == null)
      this.e = c(); 
    return this.e;
  }
  
  public int a() {
    return this.f;
  }
  
  protected void a(int paramInt) {
    if (bhv.b(paramInt))
      throw new IllegalArgumentException("Request code " + paramInt + " cannot be within the range reserved by the Facebook SDK."); 
    this.f = paramInt;
  }
  
  protected void a(Intent paramIntent, int paramInt) {
    String str;
    Intent intent = null;
    if (this.c != null) {
      this.c.startActivityForResult(paramIntent, paramInt);
      paramIntent = intent;
    } else if (this.d != null) {
      if (this.d.a() != null) {
        this.d.a().startActivityForResult(paramIntent, paramInt);
        paramIntent = intent;
      } else if (this.d.b() != null) {
        this.d.b().startActivityForResult(paramIntent, paramInt);
        paramIntent = intent;
      } else {
        str = "Failed to find Activity or Fragment to startActivityForResult ";
      } 
    } else {
      str = "Failed to find Activity or Fragment to startActivityForResult ";
    } 
    if (str != null)
      bpu.a(bjb.DEVELOPER_ERRORS, 6, getClass().getName(), str); 
  }
  
  public final void a(bhd parambhd, bhl<RESULT> parambhl) {
    if (!(parambhd instanceof bnj))
      throw new bhp("Unexpected CallbackManager, please use the provided Factory."); 
    a((bnj)parambhd, parambhl);
  }
  
  public final void a(bhd parambhd, bhl<RESULT> parambhl, int paramInt) {
    a(paramInt);
    a(parambhd, parambhl);
  }
  
  protected abstract void a(bnj parambnj, bhl<RESULT> parambhl);
  
  public boolean a(CONTENT paramCONTENT) {
    return a(paramCONTENT, a);
  }
  
  protected boolean a(CONTENT paramCONTENT, Object paramObject) {
    boolean bool;
    if (paramObject == a) {
      bool = true;
    } else {
      bool = false;
    } 
    for (bnz bnz : e()) {
      if ((bool || bqq.a(bnz.a(), paramObject)) && bnz.a(paramCONTENT, false))
        return true; 
    } 
    return false;
  }
  
  protected Activity b() {
    return (this.c != null) ? this.c : ((this.d != null) ? this.d.c() : null);
  }
  
  public void b(CONTENT paramCONTENT) {
    b(paramCONTENT, a);
  }
  
  protected void b(CONTENT paramCONTENT, Object paramObject) {
    bmr bmr = c(paramCONTENT, paramObject);
    if (bmr != null) {
      if (this.d != null) {
        bnw.a(bmr, this.d);
        return;
      } 
      bnw.a(bmr, this.c);
      return;
    } 
    Log.e("FacebookDialog", "No code path should ever result in a null appCall");
    if (bhv.d())
      throw new IllegalStateException("No code path should ever result in a null appCall"); 
  }
  
  protected abstract List<bnz> c();
  
  protected abstract bmr d();
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bny.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */