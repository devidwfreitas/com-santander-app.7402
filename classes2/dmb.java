import android.os.Binder;
import android.support.annotation.BinderThread;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class dmb extends dkq {
  private final dlv a;
  
  private Boolean b;
  
  @Nullable
  private String c;
  
  public dmb(dlv paramdlv) {
    this(paramdlv, null);
  }
  
  public dmb(dlv paramdlv, @Nullable String paramString) {
    csp.a(paramdlv);
    this.a = paramdlv;
    this.c = paramString;
  }
  
  @BinderThread
  private void b(zzatd paramzzatd, boolean paramBoolean) {
    csp.a(paramzzatd);
    b(paramzzatd.a, paramBoolean);
    this.a.o().h(paramzzatd.b);
  }
  
  @BinderThread
  private void b(String paramString, boolean paramBoolean) {
    if (TextUtils.isEmpty(paramString)) {
      this.a.f().x().a("Measurement Service called without app package");
      throw new SecurityException("Measurement Service called without app package");
    } 
    try {
      a(paramString, paramBoolean);
      return;
    } catch (SecurityException securityException) {
      this.a.f().x().a("Measurement Service called with invalid calling package. appId", dkw.a(paramString));
      throw securityException;
    } 
  }
  
  @BinderThread
  public List<zzauq> a(zzatd paramzzatd, boolean paramBoolean) {
    b(paramzzatd, false);
    Future<?> future = this.a.h().a(new dmi(this, paramzzatd));
    try {
      List list = (List)future.get();
      ArrayList<zzauq> arrayList = new ArrayList(list.size());
      for (dot dot : list) {
        if (paramBoolean || !dou.l(dot.c))
          arrayList.add(new zzauq(dot)); 
      } 
      return arrayList;
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to get user attributes. appId", dkw.a(paramzzatd.a), executionException);
    return null;
  }
  
  @BinderThread
  public List<zzatg> a(String paramString1, String paramString2, zzatd paramzzatd) {
    b(paramzzatd, false);
    Future<?> future = this.a.h().a(new dmr(this, paramzzatd, paramString1, paramString2));
    try {
      return (List)future.get();
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to get conditional user properties", executionException);
    return Collections.emptyList();
  }
  
  @BinderThread
  public List<zzatg> a(String paramString1, String paramString2, String paramString3) {
    b(paramString1, true);
    Future<?> future = this.a.h().a(new dms(this, paramString1, paramString2, paramString3));
    try {
      return (List)future.get();
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to get conditional user properties", executionException);
    return Collections.emptyList();
  }
  
  @BinderThread
  public List<zzauq> a(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    b(paramString1, true);
    Future<?> future = this.a.h().a(new dmq(this, paramString1, paramString2, paramString3));
    try {
      List list = (List)future.get();
      ArrayList<zzauq> arrayList = new ArrayList(list.size());
      for (dot dot : list) {
        if (paramBoolean || !dou.l(dot.c))
          arrayList.add(new zzauq(dot)); 
      } 
      return arrayList;
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to get user attributes. appId", dkw.a(paramString1), executionException);
    return Collections.emptyList();
  }
  
  @BinderThread
  public List<zzauq> a(String paramString1, String paramString2, boolean paramBoolean, zzatd paramzzatd) {
    b(paramzzatd, false);
    Future<?> future = this.a.h().a(new dmp(this, paramzzatd, paramString1, paramString2));
    try {
      List list = (List)future.get();
      ArrayList<zzauq> arrayList = new ArrayList(list.size());
      for (dot dot : list) {
        if (paramBoolean || !dou.l(dot.c))
          arrayList.add(new zzauq(dot)); 
      } 
      return arrayList;
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to get user attributes. appId", dkw.a(paramzzatd.a), executionException);
    return Collections.emptyList();
  }
  
  @BinderThread
  public void a(long paramLong, String paramString1, String paramString2, String paramString3) {
    this.a.h().a(new dmk(this, paramString2, paramString3, paramString1, paramLong));
  }
  
  @BinderThread
  public void a(zzatd paramzzatd) {
    b(paramzzatd, false);
    this.a.h().a(new dmj(this, paramzzatd));
  }
  
  @BinderThread
  public void a(zzatg paramzzatg) {
    csp.a(paramzzatg);
    csp.a(paramzzatg.d);
    b(paramzzatg.b, true);
    zzatg zzatg1 = new zzatg(paramzzatg);
    if (paramzzatg.d.a() == null) {
      this.a.h().a(new dmn(this, zzatg1));
      return;
    } 
    this.a.h().a(new dmo(this, zzatg1));
  }
  
  @BinderThread
  public void a(zzatg paramzzatg, zzatd paramzzatd) {
    csp.a(paramzzatg);
    csp.a(paramzzatg.d);
    b(paramzzatd, false);
    zzatg zzatg1 = new zzatg(paramzzatg);
    zzatg1.b = paramzzatd.a;
    if (paramzzatg.d.a() == null) {
      this.a.h().a(new dml(this, zzatg1, paramzzatd));
      return;
    } 
    this.a.h().a(new dmm(this, zzatg1, paramzzatd));
  }
  
  @BinderThread
  public void a(zzatq paramzzatq, zzatd paramzzatd) {
    csp.a(paramzzatq);
    b(paramzzatd, false);
    this.a.h().a(new dmd(this, paramzzatq, paramzzatd));
  }
  
  @BinderThread
  public void a(zzatq paramzzatq, String paramString1, String paramString2) {
    csp.a(paramzzatq);
    csp.a(paramString1);
    b(paramString1, true);
    this.a.h().a(new dme(this, paramzzatq, paramString1));
  }
  
  @BinderThread
  public void a(zzauq paramzzauq, zzatd paramzzatd) {
    csp.a(paramzzauq);
    b(paramzzatd, false);
    if (paramzzauq.a() == null) {
      this.a.h().a(new dmg(this, paramzzauq, paramzzatd));
      return;
    } 
    this.a.h().a(new dmh(this, paramzzauq, paramzzatd));
  }
  
  protected void a(String paramString, boolean paramBoolean) {
    if (paramBoolean) {
      if (this.b == null) {
        if ("com.google.android.gms".equals(this.c) || cwi.a(this.a.s(), Binder.getCallingUid()) || cww.a(this.a.s()).a(this.a.s().getPackageManager(), Binder.getCallingUid())) {
          paramBoolean = true;
        } else {
          paramBoolean = false;
        } 
        this.b = Boolean.valueOf(paramBoolean);
      } 
      if (this.b.booleanValue())
        return; 
    } 
    if (this.c == null && cwv.a(this.a.s(), Binder.getCallingUid(), paramString))
      this.c = paramString; 
    if (!paramString.equals(this.c))
      throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[] { paramString })); 
  }
  
  @BinderThread
  public byte[] a(zzatq paramzzatq, String paramString) {
    csp.a(paramString);
    csp.a(paramzzatq);
    b(paramString, true);
    this.a.f().C().a("Log and bundle. event", paramzzatq.a);
    long l = this.a.t().c() / 1000000L;
    Future<?> future = this.a.h().b(new dmf(this, paramzzatq, paramString));
    try {
      byte[] arrayOfByte2 = (byte[])future.get();
      byte[] arrayOfByte1 = arrayOfByte2;
      if (arrayOfByte2 == null) {
        this.a.f().x().a("Log and bundle returned null. appId", dkw.a(paramString));
        arrayOfByte1 = new byte[0];
      } 
      long l1 = this.a.t().c() / 1000000L;
      this.a.f().C().a("Log and bundle processed. event, size, time_ms", paramzzatq.a, Integer.valueOf(arrayOfByte1.length), Long.valueOf(l1 - l));
      return arrayOfByte1;
    } catch (InterruptedException interruptedException) {
    
    } catch (ExecutionException executionException) {}
    this.a.f().x().a("Failed to log and bundle. appId, event, error", dkw.a(paramString), paramzzatq.a, executionException);
    return null;
  }
  
  @BinderThread
  public void b(zzatd paramzzatd) {
    b(paramzzatd, false);
    this.a.h().a(new dmc(this, paramzzatd));
  }
  
  @BinderThread
  public String c(zzatd paramzzatd) {
    b(paramzzatd, false);
    return this.a.b(paramzzatd.a);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dmb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */