import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;

public final class ejm {
  static final boolean a = false;
  
  static final boolean b = false;
  
  static final boolean c = false;
  
  static final boolean d = true;
  
  static final boolean e = false;
  
  static final boolean f = false;
  
  static final boolean g = false;
  
  private static final epn<?> h = new ejn();
  
  private static final String i = ")]}'\n";
  
  private final ThreadLocal<Map<epn<?>, ejt<?>>> j = new ThreadLocal<Map<epn<?>, ejt<?>>>();
  
  private final Map<epn<?>, ekn<?>> k = new ConcurrentHashMap<epn<?>, ekn<?>>();
  
  private final List<ekp> l;
  
  private final ela m;
  
  private final elp n;
  
  private final ejl o;
  
  private final boolean p;
  
  private final boolean q;
  
  private final boolean r;
  
  private final boolean s;
  
  private final boolean t;
  
  private final enb u;
  
  public ejm() {
    this(elp.a, ejf.IDENTITY, Collections.emptyMap(), false, false, false, true, false, false, false, ekk.DEFAULT, Collections.emptyList());
  }
  
  ejm(elp paramelp, ejl paramejl, Map<Type, ejv<?>> paramMap, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6, boolean paramBoolean7, ekk paramekk, List<ekp> paramList) {
    this.m = new ela(paramMap);
    this.n = paramelp;
    this.o = paramejl;
    this.p = paramBoolean1;
    this.r = paramBoolean3;
    this.q = paramBoolean4;
    this.s = paramBoolean5;
    this.t = paramBoolean6;
    ArrayList<ekp> arrayList = new ArrayList();
    arrayList.add(eny.Y);
    arrayList.add(eni.a);
    arrayList.add(paramelp);
    arrayList.addAll(paramList);
    arrayList.add(eny.D);
    arrayList.add(eny.m);
    arrayList.add(eny.g);
    arrayList.add(eny.i);
    arrayList.add(eny.k);
    ekn<Number> ekn = a(paramekk);
    arrayList.add(eny.a(long.class, (Class)Long.class, (ekn)ekn));
    arrayList.add(eny.a(double.class, (Class)Double.class, (ekn)a(paramBoolean7)));
    arrayList.add(eny.a(float.class, (Class)Float.class, (ekn)b(paramBoolean7)));
    arrayList.add(eny.x);
    arrayList.add(eny.o);
    arrayList.add(eny.q);
    arrayList.add(eny.a(AtomicLong.class, a(ekn)));
    arrayList.add(eny.a(AtomicLongArray.class, b(ekn)));
    arrayList.add(eny.s);
    arrayList.add(eny.z);
    arrayList.add(eny.F);
    arrayList.add(eny.H);
    arrayList.add(eny.a(BigDecimal.class, eny.B));
    arrayList.add(eny.a(BigInteger.class, eny.C));
    arrayList.add(eny.J);
    arrayList.add(eny.L);
    arrayList.add(eny.P);
    arrayList.add(eny.R);
    arrayList.add(eny.W);
    arrayList.add(eny.N);
    arrayList.add(eny.d);
    arrayList.add(emz.a);
    arrayList.add(eny.U);
    arrayList.add(enr.a);
    arrayList.add(enp.a);
    arrayList.add(eny.S);
    arrayList.add(emv.a);
    arrayList.add(eny.b);
    arrayList.add(new emx(this.m));
    arrayList.add(new eng(this.m, paramBoolean2));
    this.u = new enb(this.m);
    arrayList.add(this.u);
    arrayList.add(eny.Z);
    arrayList.add(new enl(this.m, paramejl, paramelp, this.u));
    this.l = Collections.unmodifiableList(arrayList);
  }
  
  private static ekn<Number> a(ekk paramekk) {
    return (paramekk == ekk.DEFAULT) ? eny.t : new ejq();
  }
  
  private static ekn<AtomicLong> a(ekn<Number> paramekn) {
    return (new ejr(paramekn)).a();
  }
  
  private ekn<Number> a(boolean paramBoolean) {
    return paramBoolean ? eny.v : new ejo(this);
  }
  
  static void a(double paramDouble) {
    if (Double.isNaN(paramDouble) || Double.isInfinite(paramDouble))
      throw new IllegalArgumentException(paramDouble + " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."); 
  }
  
  private static void a(Object paramObject, epo paramepo) {
    if (paramObject != null)
      try {
        if (paramepo.f() != epr.END_DOCUMENT)
          throw new eka("JSON document was not fully consumed."); 
      } catch (ept ept) {
        throw new ekj(ept);
      } catch (IOException iOException) {
        throw new eka(iOException);
      }  
  }
  
  private static ekn<AtomicLongArray> b(ekn<Number> paramekn) {
    return (new ejs(paramekn)).a();
  }
  
  private ekn<Number> b(boolean paramBoolean) {
    return paramBoolean ? eny.u : new ejp(this);
  }
  
  public ejz a(Object paramObject) {
    return (ejz)((paramObject == null) ? ekb.a : a(paramObject, paramObject.getClass()));
  }
  
  public ejz a(Object paramObject, Type paramType) {
    ene ene = new ene();
    a(paramObject, paramType, ene);
    return ene.a();
  }
  
  public <T> ekn<T> a(ekp paramekp, epn<T> paramepn) {
    ekp ekp1 = paramekp;
    if (!this.l.contains(paramekp))
      ekp1 = this.u; 
    Iterator<ekp> iterator = this.l.iterator();
    boolean bool = false;
    while (iterator.hasNext()) {
      ekp ekp2 = iterator.next();
      if (!bool) {
        if (ekp2 == ekp1)
          bool = true; 
        continue;
      } 
      ekn<T> ekn = ekp2.a(this, paramepn);
      if (ekn != null)
        return ekn; 
    } 
    throw new IllegalArgumentException("GSON cannot serialize " + paramepn);
  }
  
  public <T> ekn<T> a(epn<T> paramepn) {
    epn<T> epn1;
    Map<epn<?>, ekn<?>> map = this.k;
    if (paramepn == null) {
      epn1 = (epn)h;
    } else {
      epn1 = paramepn;
    } 
    ekn<?> ekn = map.get(epn1);
    if (ekn == null) {
      map = (Map<epn<?>, ekn<?>>)this.j.get();
      boolean bool = false;
      if (map == null) {
        map = new HashMap<epn<?>, ekn<?>>();
        this.j.set(map);
        bool = true;
      } 
      ejt<?> ejt = (ejt)map.get(paramepn);
      ekn = ejt;
      if (ejt == null)
        try {
          ekn = new ejt();
          map.put(paramepn, ekn);
          Iterator<ekp> iterator = this.l.iterator();
          while (iterator.hasNext()) {
            ekn<T> ekn1 = ((ekp)iterator.next()).a(this, paramepn);
            if (ekn1 != null) {
              ekn.a(ekn1);
              this.k.put(paramepn, ekn1);
              map.remove(paramepn);
              ekn = ekn1;
              if (bool)
                return ekn1; 
              // Byte code: goto -> 30
            } 
          } 
          throw new IllegalArgumentException("GSON cannot handle " + paramepn);
        } finally {
          map.remove(paramepn);
          if (bool)
            this.j.remove(); 
        }  
    } 
    return (ekn)ekn;
  }
  
  public <T> ekn<T> a(Class<T> paramClass) {
    return a(epn.get(paramClass));
  }
  
  public elp a() {
    return this.n;
  }
  
  public epo a(Reader paramReader) {
    epo epo = new epo(paramReader);
    epo.a(this.t);
    return epo;
  }
  
  public eps a(Writer paramWriter) {
    if (this.r)
      paramWriter.write(")]}'\n"); 
    eps eps = new eps(paramWriter);
    if (this.s)
      eps.c("  "); 
    eps.d(this.p);
    return eps;
  }
  
  public <T> T a(ejz paramejz, Class<T> paramClass) {
    paramejz = a(paramejz, paramClass);
    return emm.<T>a(paramClass).cast(paramejz);
  }
  
  public <T> T a(ejz paramejz, Type paramType) {
    return (paramejz == null) ? null : a(new enc(paramejz), paramType);
  }
  
  public <T> T a(epo paramepo, Type paramType) {
    boolean bool = true;
    boolean bool1 = paramepo.q();
    paramepo.a(true);
    try {
      paramepo.f();
      bool = false;
      paramType = a(epn.get(paramType)).b(paramepo);
      return (T)paramType;
    } catch (EOFException eOFException) {
      if (bool)
        return null; 
      throw new ekj(eOFException);
    } catch (IllegalStateException illegalStateException) {
      throw new ekj(illegalStateException);
    } catch (IOException iOException) {
      throw new ekj(iOException);
    } finally {
      paramepo.a(bool1);
    } 
  }
  
  public <T> T a(Reader paramReader, Class<T> paramClass) {
    epo epo = a(paramReader);
    Object object = a(epo, paramClass);
    a(object, epo);
    return emm.<T>a(paramClass).cast(object);
  }
  
  public <T> T a(Reader paramReader, Type paramType) {
    epo epo = a(paramReader);
    paramType = a(epo, paramType);
    a(paramType, epo);
    return (T)paramType;
  }
  
  public <T> T a(String paramString, Class<T> paramClass) {
    paramString = a(paramString, paramClass);
    return emm.<T>a(paramClass).cast(paramString);
  }
  
  public <T> T a(String paramString, Type paramType) {
    return (paramString == null) ? null : a(new StringReader(paramString), paramType);
  }
  
  public String a(ejz paramejz) {
    StringWriter stringWriter = new StringWriter();
    a(paramejz, stringWriter);
    return stringWriter.toString();
  }
  
  public void a(ejz paramejz, eps parameps) {
    boolean bool1 = parameps.g();
    parameps.b(true);
    boolean bool2 = parameps.h();
    parameps.c(this.q);
    boolean bool3 = parameps.i();
    parameps.d(this.p);
    try {
      emn.a(paramejz, parameps);
      return;
    } catch (IOException iOException) {
      throw new eka(iOException);
    } finally {
      parameps.b(bool1);
      parameps.c(bool2);
      parameps.d(bool3);
    } 
  }
  
  public void a(ejz paramejz, Appendable paramAppendable) {
    try {
      a(paramejz, a(emn.a(paramAppendable)));
      return;
    } catch (IOException iOException) {
      throw new eka(iOException);
    } 
  }
  
  public void a(Object paramObject, Appendable paramAppendable) {
    if (paramObject != null) {
      a(paramObject, paramObject.getClass(), paramAppendable);
      return;
    } 
    a((ejz)ekb.a, paramAppendable);
  }
  
  public void a(Object paramObject, Type paramType, eps parameps) {
    ekn<?> ekn = a(epn.get(paramType));
    boolean bool1 = parameps.g();
    parameps.b(true);
    boolean bool2 = parameps.h();
    parameps.c(this.q);
    boolean bool3 = parameps.i();
    parameps.d(this.p);
    try {
      ekn.a(parameps, paramObject);
      return;
    } catch (IOException iOException) {
      throw new eka(iOException);
    } finally {
      parameps.b(bool1);
      parameps.c(bool2);
      parameps.d(bool3);
    } 
  }
  
  public void a(Object paramObject, Type paramType, Appendable paramAppendable) {
    try {
      a(paramObject, paramType, a(emn.a(paramAppendable)));
      return;
    } catch (IOException iOException) {
      throw new eka(iOException);
    } 
  }
  
  public ejl b() {
    return this.o;
  }
  
  public String b(Object paramObject) {
    return (paramObject == null) ? a((ejz)ekb.a) : b(paramObject, paramObject.getClass());
  }
  
  public String b(Object paramObject, Type paramType) {
    StringWriter stringWriter = new StringWriter();
    a(paramObject, paramType, stringWriter);
    return stringWriter.toString();
  }
  
  public boolean c() {
    return this.p;
  }
  
  public boolean d() {
    return this.q;
  }
  
  public String toString() {
    return "{serializeNulls:" + this.p + "factories:" + this.l + ",instanceCreators:" + this.m + "}";
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\ejm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */