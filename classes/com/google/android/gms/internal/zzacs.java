package com.google.android.gms.internal;

import csp;
import cvm;
import cwa;
import cwb;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public abstract class zzacs {
  private void a(StringBuilder paramStringBuilder, zzacs$zza paramzzacs$zza, Object paramObject) {
    if (paramzzacs$zza.b() == 11) {
      paramStringBuilder.append(((zzacs)paramzzacs$zza.h().cast(paramObject)).toString());
      return;
    } 
    if (paramzzacs$zza.b() == 7) {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(cwa.a((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    } 
    paramStringBuilder.append(paramObject);
  }
  
  private void a(StringBuilder paramStringBuilder, zzacs$zza paramzzacs$zza, ArrayList<Object> paramArrayList) {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j) {
      if (i > 0)
        paramStringBuilder.append(","); 
      Object object = paramArrayList.get(i);
      if (object != null)
        a(paramStringBuilder, paramzzacs$zza, object); 
      i++;
    } 
    paramStringBuilder.append("]");
  }
  
  protected <O, I> I a(zzacs$zza<I, O> paramzzacs$zza, Object paramObject) {
    Object object = paramObject;
    if (zzacs$zza.a(paramzzacs$zza) != null)
      object = paramzzacs$zza.a((O)paramObject); 
    return (I)object;
  }
  
  protected abstract Object a(String paramString);
  
  public abstract Map<String, zzacs$zza<?, ?>> a();
  
  protected boolean a(zzacs$zza paramzzacs$zza) {
    return (paramzzacs$zza.d() == 11) ? (paramzzacs$zza.e() ? d(paramzzacs$zza.f()) : c(paramzzacs$zza.f())) : b(paramzzacs$zza.f());
  }
  
  protected Object b(zzacs$zza paramzzacs$zza) {
    String str = paramzzacs$zza.f();
    if (paramzzacs$zza.h() != null) {
      a(paramzzacs$zza.f());
      csp.a(true, "Concrete field shouldn't be value object: %s", new Object[] { paramzzacs$zza.f() });
      paramzzacs$zza.e();
      try {
        char c = Character.toUpperCase(str.charAt(0));
        String str1 = String.valueOf(str.substring(1));
        str1 = (new StringBuilder(String.valueOf(str1).length() + 4)).append("get").append(c).append(str1).toString();
        return getClass().getMethod(str1, new Class[0]).invoke(this, new Object[0]);
      } catch (Exception exception) {
        throw new RuntimeException(exception);
      } 
    } 
    return a(exception.f());
  }
  
  protected abstract boolean b(String paramString);
  
  protected boolean c(String paramString) {
    throw new UnsupportedOperationException("Concrete types not supported");
  }
  
  protected boolean d(String paramString) {
    throw new UnsupportedOperationException("Concrete type arrays not supported");
  }
  
  public String toString() {
    Map<String, zzacs$zza<?, ?>> map = a();
    StringBuilder stringBuilder = new StringBuilder(100);
    for (String str : map.keySet()) {
      zzacs$zza<Object, ?> zzacs$zza = (zzacs$zza)map.get(str);
      if (a(zzacs$zza)) {
        ArrayList arrayList = (ArrayList)a(zzacs$zza, b(zzacs$zza));
        if (stringBuilder.length() == 0) {
          stringBuilder.append("{");
        } else {
          stringBuilder.append(",");
        } 
        stringBuilder.append("\"").append(str).append("\":");
        if (arrayList == null) {
          stringBuilder.append("null");
          continue;
        } 
        switch (zzacs$zza.d()) {
          default:
            if (zzacs$zza.c()) {
              a(stringBuilder, zzacs$zza, arrayList);
              continue;
            } 
            break;
          case 8:
            stringBuilder.append("\"").append(cvm.a((byte[])arrayList)).append("\"");
            continue;
          case 9:
            stringBuilder.append("\"").append(cvm.b((byte[])arrayList)).append("\"");
            continue;
          case 10:
            cwb.a(stringBuilder, (HashMap)arrayList);
            continue;
        } 
        a(stringBuilder, zzacs$zza, arrayList);
      } 
    } 
    if (stringBuilder.length() > 0) {
      stringBuilder.append("}");
      return stringBuilder.toString();
    } 
    stringBuilder.append("{}");
    return stringBuilder.toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacs.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */