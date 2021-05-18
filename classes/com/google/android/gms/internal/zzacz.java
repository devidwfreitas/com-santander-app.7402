package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import csb;
import csc;
import csd;
import csp;
import cvl;
import cvm;
import cwa;
import cwb;
import dgf;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class zzacz extends zzact {
  public static final Parcelable.Creator<zzacz> CREATOR = (Parcelable.Creator<zzacz>)new dgf();
  
  private final int a;
  
  private final Parcel b;
  
  private final int c;
  
  private final zzacw d;
  
  private final String e;
  
  private int f;
  
  private int g;
  
  public zzacz(int paramInt, Parcel paramParcel, zzacw paramzzacw) {
    this.a = paramInt;
    this.b = (Parcel)csp.a(paramParcel);
    this.c = 2;
    this.d = paramzzacw;
    if (this.d == null) {
      this.e = null;
    } else {
      this.e = this.d.c();
    } 
    this.f = 2;
  }
  
  private static SparseArray<Map.Entry<String, zzacs$zza<?, ?>>> a(Map<String, zzacs$zza<?, ?>> paramMap) {
    SparseArray<Map.Entry<String, zzacs$zza<?, ?>>> sparseArray = new SparseArray();
    for (Map.Entry<String, zzacs$zza<?, ?>> entry : paramMap.entrySet())
      sparseArray.put(((zzacs$zza)entry.getValue()).g(), entry); 
    return sparseArray;
  }
  
  public static HashMap<String, String> a(Bundle paramBundle) {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    for (String str : paramBundle.keySet())
      hashMap.put(str, paramBundle.getString(str)); 
    return (HashMap)hashMap;
  }
  
  private void a(StringBuilder paramStringBuilder, int paramInt, Object paramObject) {
    switch (paramInt) {
      default:
        throw new IllegalArgumentException((new StringBuilder(26)).append("Unknown type = ").append(paramInt).toString());
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
        paramStringBuilder.append(paramObject);
        return;
      case 7:
        paramStringBuilder.append("\"").append(cwa.a(paramObject.toString())).append("\"");
        return;
      case 8:
        paramStringBuilder.append("\"").append(cvm.a((byte[])paramObject)).append("\"");
        return;
      case 9:
        paramStringBuilder.append("\"").append(cvm.b((byte[])paramObject));
        paramStringBuilder.append("\"");
        return;
      case 10:
        cwb.a(paramStringBuilder, (HashMap)paramObject);
        return;
      case 11:
        break;
    } 
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void a(StringBuilder paramStringBuilder, zzacs$zza<?, ?> paramzzacs$zza, Parcel paramParcel, int paramInt) {
    switch (paramzzacs$zza.d()) {
      default:
        paramInt = paramzzacs$zza.d();
        throw new IllegalArgumentException((new StringBuilder(36)).append("Unknown field out type = ").append(paramInt).toString());
      case 0:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, Integer.valueOf(csb.g(paramParcel, paramInt))));
        return;
      case 1:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, csb.k(paramParcel, paramInt)));
        return;
      case 2:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, Long.valueOf(csb.i(paramParcel, paramInt))));
        return;
      case 3:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, Float.valueOf(csb.l(paramParcel, paramInt))));
        return;
      case 4:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, Double.valueOf(csb.n(paramParcel, paramInt))));
        return;
      case 5:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, csb.p(paramParcel, paramInt)));
        return;
      case 6:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, Boolean.valueOf(csb.c(paramParcel, paramInt))));
        return;
      case 7:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, csb.q(paramParcel, paramInt)));
        return;
      case 8:
      case 9:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, csb.t(paramParcel, paramInt)));
        return;
      case 10:
        a(paramStringBuilder, paramzzacs$zza, a(paramzzacs$zza, a(csb.s(paramParcel, paramInt))));
        return;
      case 11:
        break;
    } 
    throw new IllegalArgumentException("Method does not accept concrete type.");
  }
  
  private void a(StringBuilder paramStringBuilder, zzacs$zza<?, ?> paramzzacs$zza, Object paramObject) {
    if (paramzzacs$zza.c()) {
      a(paramStringBuilder, paramzzacs$zza, (ArrayList)paramObject);
      return;
    } 
    a(paramStringBuilder, paramzzacs$zza.b(), paramObject);
  }
  
  private void a(StringBuilder paramStringBuilder, zzacs$zza<?, ?> paramzzacs$zza, ArrayList<?> paramArrayList) {
    paramStringBuilder.append("[");
    int j = paramArrayList.size();
    int i;
    for (i = 0; i < j; i++) {
      if (i != 0)
        paramStringBuilder.append(","); 
      a(paramStringBuilder, paramzzacs$zza.b(), paramArrayList.get(i));
    } 
    paramStringBuilder.append("]");
  }
  
  private void a(StringBuilder paramStringBuilder, String paramString, zzacs$zza<?, ?> paramzzacs$zza, Parcel paramParcel, int paramInt) {
    paramStringBuilder.append("\"").append(paramString).append("\":");
    if (paramzzacs$zza.j()) {
      a(paramStringBuilder, paramzzacs$zza, paramParcel, paramInt);
      return;
    } 
    b(paramStringBuilder, paramzzacs$zza, paramParcel, paramInt);
  }
  
  private void a(StringBuilder paramStringBuilder, Map<String, zzacs$zza<?, ?>> paramMap, Parcel paramParcel) {
    SparseArray<Map.Entry<String, zzacs$zza<?, ?>>> sparseArray = a(paramMap);
    paramStringBuilder.append('{');
    int i = csb.b(paramParcel);
    boolean bool = false;
    while (paramParcel.dataPosition() < i) {
      int j = csb.a(paramParcel);
      Map.Entry entry = (Map.Entry)sparseArray.get(csb.a(j));
      if (entry != null) {
        if (bool)
          paramStringBuilder.append(","); 
        a(paramStringBuilder, (String)entry.getKey(), (zzacs$zza<?, ?>)entry.getValue(), paramParcel, j);
        bool = true;
      } 
    } 
    if (paramParcel.dataPosition() != i)
      throw new csc((new StringBuilder(37)).append("Overread allowed size end=").append(i).toString(), paramParcel); 
    paramStringBuilder.append('}');
  }
  
  private void b(StringBuilder paramStringBuilder, zzacs$zza<?, ?> paramzzacs$zza, Parcel paramParcel, int paramInt) {
    String str;
    byte[] arrayOfByte;
    Bundle bundle;
    Parcel[] arrayOfParcel;
    Set set;
    Iterator<String> iterator;
    if (paramzzacs$zza.e()) {
      paramStringBuilder.append("[");
      switch (paramzzacs$zza.d()) {
        default:
          throw new IllegalStateException("Unknown field type out.");
        case 0:
          cvl.a(paramStringBuilder, csb.w(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 1:
          cvl.a(paramStringBuilder, (Object[])csb.y(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 2:
          cvl.a(paramStringBuilder, csb.x(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 3:
          cvl.a(paramStringBuilder, csb.z(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 4:
          cvl.a(paramStringBuilder, csb.A(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 5:
          cvl.a(paramStringBuilder, (Object[])csb.B(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 6:
          cvl.a(paramStringBuilder, csb.v(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 7:
          cvl.a(paramStringBuilder, csb.C(paramParcel, paramInt));
          paramStringBuilder.append("]");
          return;
        case 8:
        case 9:
        case 10:
          throw new UnsupportedOperationException("List of type BASE64, BASE64_URL_SAFE, or STRING_MAP is not supported");
        case 11:
          break;
      } 
      arrayOfParcel = csb.G(paramParcel, paramInt);
      int i = arrayOfParcel.length;
      paramInt = 0;
      while (true) {
        if (paramInt < i) {
          if (paramInt > 0)
            paramStringBuilder.append(","); 
          arrayOfParcel[paramInt].setDataPosition(0);
          a(paramStringBuilder, paramzzacs$zza.l(), arrayOfParcel[paramInt]);
          paramInt++;
          continue;
        } 
        paramStringBuilder.append("]");
        return;
      } 
    } 
    switch (paramzzacs$zza.d()) {
      default:
        throw new IllegalStateException("Unknown field type out");
      case 0:
        paramStringBuilder.append(csb.g((Parcel)arrayOfParcel, paramInt));
        return;
      case 1:
        paramStringBuilder.append(csb.k((Parcel)arrayOfParcel, paramInt));
        return;
      case 2:
        paramStringBuilder.append(csb.i((Parcel)arrayOfParcel, paramInt));
        return;
      case 3:
        paramStringBuilder.append(csb.l((Parcel)arrayOfParcel, paramInt));
        return;
      case 4:
        paramStringBuilder.append(csb.n((Parcel)arrayOfParcel, paramInt));
        return;
      case 5:
        paramStringBuilder.append(csb.p((Parcel)arrayOfParcel, paramInt));
        return;
      case 6:
        paramStringBuilder.append(csb.c((Parcel)arrayOfParcel, paramInt));
        return;
      case 7:
        str = csb.q((Parcel)arrayOfParcel, paramInt);
        paramStringBuilder.append("\"").append(cwa.a(str)).append("\"");
        return;
      case 8:
        arrayOfByte = csb.t((Parcel)arrayOfParcel, paramInt);
        paramStringBuilder.append("\"").append(cvm.a(arrayOfByte)).append("\"");
        return;
      case 9:
        arrayOfByte = csb.t((Parcel)arrayOfParcel, paramInt);
        paramStringBuilder.append("\"").append(cvm.b(arrayOfByte));
        paramStringBuilder.append("\"");
        return;
      case 10:
        bundle = csb.s((Parcel)arrayOfParcel, paramInt);
        set = bundle.keySet();
        set.size();
        paramStringBuilder.append("{");
        iterator = set.iterator();
        for (paramInt = 1; iterator.hasNext(); paramInt = 0) {
          String str1 = iterator.next();
          if (paramInt == 0)
            paramStringBuilder.append(","); 
          paramStringBuilder.append("\"").append(str1).append("\"");
          paramStringBuilder.append(":");
          paramStringBuilder.append("\"").append(cwa.a(bundle.getString(str1))).append("\"");
        } 
        paramStringBuilder.append("}");
        return;
      case 11:
        break;
    } 
    Parcel parcel = csb.F((Parcel)iterator, paramInt);
    parcel.setDataPosition(0);
    a(paramStringBuilder, bundle.l(), parcel);
  }
  
  public Object a(String paramString) {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  public Map<String, zzacs$zza<?, ?>> a() {
    return (this.d == null) ? null : this.d.a(this.e);
  }
  
  public int b() {
    return this.a;
  }
  
  public boolean b(String paramString) {
    throw new UnsupportedOperationException("Converting to JSON does not require this method.");
  }
  
  public Parcel c() {
    switch (this.f) {
      default:
        return this.b;
      case 0:
        this.g = csd.a(this.b);
        csd.a(this.b, this.g);
        this.f = 2;
      case 1:
        break;
    } 
    csd.a(this.b, this.g);
    this.f = 2;
  }
  
  public zzacw d() {
    int i;
    switch (this.c) {
      default:
        i = this.c;
        throw new IllegalStateException((new StringBuilder(34)).append("Invalid creation type: ").append(i).toString());
      case 0:
        return null;
      case 1:
        return this.d;
      case 2:
        break;
    } 
    return this.d;
  }
  
  public String toString() {
    csp.a(this.d, "Cannot convert to JSON on client side.");
    Parcel parcel = c();
    parcel.setDataPosition(0);
    StringBuilder stringBuilder = new StringBuilder(100);
    a(stringBuilder, this.d.a(this.e), parcel);
    return stringBuilder.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    dgf.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\internal\zzacz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */