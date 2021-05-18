import java.lang.reflect.Type;
import java.util.Collection;

final class emy<E> extends ekn<Collection<E>> {
  private final ekn<E> a;
  
  private final eml<? extends Collection<E>> b;
  
  public emy(ejm paramejm, Type paramType, ekn<E> paramekn, eml<? extends Collection<E>> parameml) {
    this.a = new enx<E>(paramejm, paramekn, paramType);
    this.b = parameml;
  }
  
  public Collection<E> a(epo paramepo) {
    if (paramepo.f() == epr.NULL) {
      paramepo.j();
      return null;
    } 
    Collection<E> collection = this.b.a();
    paramepo.a();
    while (paramepo.e())
      collection.add(this.a.b(paramepo)); 
    paramepo.b();
    return collection;
  }
  
  public void a(eps parameps, Collection<E> paramCollection) {
    // Byte code:
    //   0: aload_2
    //   1: ifnonnull -> 10
    //   4: aload_1
    //   5: invokevirtual f : ()Leps;
    //   8: pop
    //   9: return
    //   10: aload_1
    //   11: invokevirtual b : ()Leps;
    //   14: pop
    //   15: aload_2
    //   16: invokeinterface iterator : ()Ljava/util/Iterator;
    //   21: astore_2
    //   22: aload_2
    //   23: invokeinterface hasNext : ()Z
    //   28: ifeq -> 50
    //   31: aload_2
    //   32: invokeinterface next : ()Ljava/lang/Object;
    //   37: astore_3
    //   38: aload_0
    //   39: getfield a : Lekn;
    //   42: aload_1
    //   43: aload_3
    //   44: invokevirtual a : (Leps;Ljava/lang/Object;)V
    //   47: goto -> 22
    //   50: aload_1
    //   51: invokevirtual c : ()Leps;
    //   54: pop
    //   55: return
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\emy.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */