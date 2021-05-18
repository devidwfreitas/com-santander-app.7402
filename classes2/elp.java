import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class elp implements ekp, Cloneable {
  public static final elp a = new elp();
  
  private static final double b = -1.0D;
  
  private double c = -1.0D;
  
  private int d = 136;
  
  private boolean e = true;
  
  private boolean f;
  
  private List<ejd> g = Collections.emptyList();
  
  private List<ejd> h = Collections.emptyList();
  
  private boolean a(ekt paramekt) {
    return !(paramekt != null && paramekt.a() > this.c);
  }
  
  private boolean a(ekt paramekt, eku parameku) {
    return (a(paramekt) && a(parameku));
  }
  
  private boolean a(eku parameku) {
    return !(parameku != null && parameku.a() <= this.c);
  }
  
  private boolean a(Class<?> paramClass) {
    return (!Enum.class.isAssignableFrom(paramClass) && (paramClass.isAnonymousClass() || paramClass.isLocalClass()));
  }
  
  private boolean b(Class<?> paramClass) {
    return (paramClass.isMemberClass() && !c(paramClass));
  }
  
  private boolean c(Class<?> paramClass) {
    return ((paramClass.getModifiers() & 0x8) != 0);
  }
  
  public <T> ekn<T> a(ejm paramejm, epn<T> paramepn) {
    Class<?> clazz = paramepn.getRawType();
    boolean bool1 = a(clazz, true);
    boolean bool2 = a(clazz, false);
    return (!bool1 && !bool2) ? null : new elq(this, bool2, bool1, paramejm, paramepn);
  }
  
  protected elp a() {
    try {
      return (elp)super.clone();
    } catch (CloneNotSupportedException cloneNotSupportedException) {
      throw new AssertionError(cloneNotSupportedException);
    } 
  }
  
  public elp a(double paramDouble) {
    elp elp1 = a();
    elp1.c = paramDouble;
    return elp1;
  }
  
  public elp a(ejd paramejd, boolean paramBoolean1, boolean paramBoolean2) {
    elp elp1 = a();
    if (paramBoolean1) {
      elp1.g = new ArrayList<ejd>(this.g);
      elp1.g.add(paramejd);
    } 
    if (paramBoolean2) {
      elp1.h = new ArrayList<ejd>(this.h);
      elp1.h.add(paramejd);
    } 
    return elp1;
  }
  
  public elp a(int... paramVarArgs) {
    int i = 0;
    elp elp1 = a();
    elp1.d = 0;
    int j = paramVarArgs.length;
    while (i < j) {
      elp1.d = paramVarArgs[i] | elp1.d;
      i++;
    } 
    return elp1;
  }
  
  public boolean a(Class<?> paramClass, boolean paramBoolean) {
    List<ejd> list;
    if (this.c != -1.0D && !a(paramClass.<ekt>getAnnotation(ekt.class), paramClass.<eku>getAnnotation(eku.class)))
      return true; 
    if (!this.e && b(paramClass))
      return true; 
    if (a(paramClass))
      return true; 
    if (paramBoolean) {
      list = this.g;
    } else {
      list = this.h;
    } 
    Iterator<ejd> iterator = list.iterator();
    while (iterator.hasNext()) {
      if (((ejd)iterator.next()).a(paramClass))
        return true; 
    } 
    return false;
  }
  
  public boolean a(Field paramField, boolean paramBoolean) {
    List<ejd> list;
    if ((this.d & paramField.getModifiers()) != 0)
      return true; 
    if (this.c != -1.0D && !a(paramField.<ekt>getAnnotation(ekt.class), paramField.<eku>getAnnotation(eku.class)))
      return true; 
    if (paramField.isSynthetic())
      return true; 
    if (this.f) {
      ekq ekq = paramField.<ekq>getAnnotation(ekq.class);
      if (ekq == null || (paramBoolean ? !ekq.a() : !ekq.b()))
        return true; 
    } 
    if (!this.e && b(paramField.getType()))
      return true; 
    if (a(paramField.getType()))
      return true; 
    if (paramBoolean) {
      list = this.g;
    } else {
      list = this.h;
    } 
    if (!list.isEmpty()) {
      eje eje = new eje(paramField);
      Iterator<ejd> iterator = list.iterator();
      while (iterator.hasNext()) {
        if (((ejd)iterator.next()).a(eje))
          return true; 
      } 
    } 
    return false;
  }
  
  public elp b() {
    elp elp1 = a();
    elp1.e = false;
    return elp1;
  }
  
  public elp c() {
    elp elp1 = a();
    elp1.f = true;
    return elp1;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\elp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */