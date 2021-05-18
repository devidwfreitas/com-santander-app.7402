import java.lang.reflect.Type;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class eju {
  private elp a = elp.a;
  
  private ekk b = ekk.DEFAULT;
  
  private ejl c = ejf.IDENTITY;
  
  private final Map<Type, ejv<?>> d = new HashMap<Type, ejv<?>>();
  
  private final List<ekp> e = new ArrayList<ekp>();
  
  private final List<ekp> f = new ArrayList<ekp>();
  
  private boolean g = false;
  
  private String h;
  
  private int i = 2;
  
  private int j = 2;
  
  private boolean k = false;
  
  private boolean l = false;
  
  private boolean m = true;
  
  private boolean n = false;
  
  private boolean o = false;
  
  private boolean p = false;
  
  private void a(String paramString, int paramInt1, int paramInt2, List<ekp> paramList) {
    ejc ejc;
    if (paramString != null && !"".equals(paramString.trim())) {
      ejc = new ejc(paramString);
    } else if (paramInt1 != 2 && paramInt2 != 2) {
      ejc = new ejc(paramInt1, paramInt2);
    } else {
      return;
    } 
    paramList.add(ent.a(epn.get(Date.class), ejc));
    paramList.add(ent.a(epn.get(Timestamp.class), ejc));
    paramList.add(ent.a(epn.get(Date.class), ejc));
  }
  
  public eju a() {
    this.o = true;
    return this;
  }
  
  public eju a(double paramDouble) {
    this.a = this.a.a(paramDouble);
    return this;
  }
  
  public eju a(int paramInt) {
    this.i = paramInt;
    this.h = null;
    return this;
  }
  
  public eju a(int paramInt1, int paramInt2) {
    this.i = paramInt1;
    this.j = paramInt2;
    this.h = null;
    return this;
  }
  
  public eju a(ejd paramejd) {
    this.a = this.a.a(paramejd, true, false);
    return this;
  }
  
  public eju a(ejf paramejf) {
    this.c = paramejf;
    return this;
  }
  
  public eju a(ejl paramejl) {
    this.c = paramejl;
    return this;
  }
  
  public eju a(ekk paramekk) {
    this.b = paramekk;
    return this;
  }
  
  public eju a(ekp paramekp) {
    this.e.add(paramekp);
    return this;
  }
  
  public eju a(Class<?> paramClass, Object paramObject) {
    boolean bool;
    if (paramObject instanceof ekh || paramObject instanceof ejy || paramObject instanceof ekn) {
      bool = true;
    } else {
      bool = false;
    } 
    ekv.a(bool);
    if (paramObject instanceof ejy || paramObject instanceof ekh)
      this.f.add(0, ent.a(paramClass, paramObject)); 
    if (paramObject instanceof ekn)
      this.e.add(eny.b(paramClass, (ekn)paramObject)); 
    return this;
  }
  
  public eju a(String paramString) {
    this.h = paramString;
    return this;
  }
  
  public eju a(Type paramType, Object paramObject) {
    boolean bool;
    if (paramObject instanceof ekh || paramObject instanceof ejy || paramObject instanceof ejv || paramObject instanceof ekn) {
      bool = true;
    } else {
      bool = false;
    } 
    ekv.a(bool);
    if (paramObject instanceof ejv)
      this.d.put(paramType, (ejv)paramObject); 
    if (paramObject instanceof ekh || paramObject instanceof ejy) {
      epn<?> epn = epn.get(paramType);
      this.e.add(ent.b(epn, paramObject));
    } 
    if (paramObject instanceof ekn)
      this.e.add(eny.a(epn.get(paramType), (ekn)paramObject)); 
    return this;
  }
  
  public eju a(int... paramVarArgs) {
    this.a = this.a.a(paramVarArgs);
    return this;
  }
  
  public eju a(ejd... paramVarArgs) {
    int j = paramVarArgs.length;
    for (int i = 0; i < j; i++) {
      ejd ejd1 = paramVarArgs[i];
      this.a = this.a.a(ejd1, true, true);
    } 
    return this;
  }
  
  public eju b() {
    this.a = this.a.c();
    return this;
  }
  
  public eju b(ejd paramejd) {
    this.a = this.a.a(paramejd, false, true);
    return this;
  }
  
  public eju c() {
    this.g = true;
    return this;
  }
  
  public eju d() {
    this.k = true;
    return this;
  }
  
  public eju e() {
    this.a = this.a.b();
    return this;
  }
  
  public eju f() {
    this.n = true;
    return this;
  }
  
  public eju g() {
    this.p = true;
    return this;
  }
  
  public eju h() {
    this.m = false;
    return this;
  }
  
  public eju i() {
    this.l = true;
    return this;
  }
  
  public ejm j() {
    ArrayList<ekp> arrayList = new ArrayList();
    arrayList.addAll(this.e);
    Collections.reverse(arrayList);
    arrayList.addAll(this.f);
    a(this.h, this.i, this.j, arrayList);
    return new ejm(this.a, this.c, this.d, this.g, this.k, this.o, this.m, this.n, this.p, this.l, this.b, arrayList);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\eju.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */