package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.zza;
import crc;
import crd;
import cre;
import crl;
import csp;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@KeepName
public final class DataHolder extends zza implements Closeable {
  public static final Parcelable.Creator<DataHolder> CREATOR = (Parcelable.Creator<DataHolder>)new crl();
  
  private static final crd k = (crd)new crc(new String[0], null);
  
  public final int a;
  
  Bundle b;
  
  int[] c;
  
  int d;
  
  boolean e = false;
  
  private final String[] f;
  
  private final CursorWindow[] g;
  
  private final int h;
  
  private final Bundle i;
  
  private boolean j = true;
  
  public DataHolder(int paramInt1, String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt2, Bundle paramBundle) {
    this.a = paramInt1;
    this.f = paramArrayOfString;
    this.g = paramArrayOfCursorWindow;
    this.h = paramInt2;
    this.i = paramBundle;
  }
  
  private DataHolder(crd paramcrd, int paramInt, Bundle paramBundle) {
    this(crd.a(paramcrd), a(paramcrd, -1), paramInt, paramBundle);
  }
  
  public DataHolder(String[] paramArrayOfString, CursorWindow[] paramArrayOfCursorWindow, int paramInt, Bundle paramBundle) {
    this.a = 1;
    this.f = (String[])csp.a(paramArrayOfString);
    this.g = (CursorWindow[])csp.a(paramArrayOfCursorWindow);
    this.h = paramInt;
    this.i = paramBundle;
    a();
  }
  
  public static DataHolder a(int paramInt, Bundle paramBundle) {
    return new DataHolder(k, paramInt, paramBundle);
  }
  
  public static crd a(String[] paramArrayOfString) {
    return new crd(paramArrayOfString, null, null);
  }
  
  private void a(String paramString, int paramInt) {
    if (this.b == null || !this.b.containsKey(paramString)) {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {
        paramString = "No such column: ".concat(paramString);
        throw new IllegalArgumentException(paramString);
      } 
      paramString = new String("No such column: ");
      throw new IllegalArgumentException(paramString);
    } 
    if (g())
      throw new IllegalArgumentException("Buffer is closed."); 
    if (paramInt < 0 || paramInt >= this.d)
      throw new CursorIndexOutOfBoundsException(paramInt, this.d); 
  }
  
  private static CursorWindow[] a(crd paramcrd, int paramInt) {
    List<Map> list;
    boolean bool = false;
    if ((crd.a(paramcrd)).length == 0)
      return new CursorWindow[0]; 
    if (paramInt < 0 || paramInt >= crd.b(paramcrd).size()) {
      list = crd.b(paramcrd);
    } else {
      list = crd.b(paramcrd).subList(0, paramInt);
    } 
    int j = list.size();
    CursorWindow cursorWindow = new CursorWindow(false);
    ArrayList<CursorWindow> arrayList = new ArrayList();
    arrayList.add(cursorWindow);
    cursorWindow.setNumColumns((crd.a(paramcrd)).length);
    paramInt = 0;
    int i = 0;
    label69: while (true) {
      if (paramInt < j) {
        CursorWindow cursorWindow1 = cursorWindow;
        try {
          if (!cursorWindow.allocRow()) {
            Log.d("DataHolder", (new StringBuilder(72)).append("Allocating additional cursor window for large data set (row ").append(paramInt).append(")").toString());
            cursorWindow = new CursorWindow(false);
            cursorWindow.setStartPosition(paramInt);
            cursorWindow.setNumColumns((crd.a(paramcrd)).length);
            arrayList.add(cursorWindow);
            cursorWindow1 = cursorWindow;
            if (!cursorWindow.allocRow()) {
              Log.e("DataHolder", "Unable to allocate row to hold data.");
              arrayList.remove(cursorWindow);
              return arrayList.<CursorWindow>toArray(new CursorWindow[arrayList.size()]);
            } 
          } 
          Map map = list.get(paramInt);
          int k = 0;
          boolean bool1 = true;
          while (true) {
            String str;
            if (k < (crd.a(paramcrd)).length && bool1) {
              String str1 = crd.a(paramcrd)[k];
              Object object = map.get(str1);
              if (object == null) {
                bool1 = cursorWindow1.putNull(paramInt, k);
              } else if (object instanceof String) {
                bool1 = cursorWindow1.putString((String)object, paramInt, k);
              } else if (object instanceof Long) {
                bool1 = cursorWindow1.putLong(((Long)object).longValue(), paramInt, k);
              } else if (object instanceof Integer) {
                bool1 = cursorWindow1.putLong(((Integer)object).intValue(), paramInt, k);
              } else if (object instanceof Boolean) {
                long l;
                if (((Boolean)object).booleanValue()) {
                  l = 1L;
                } else {
                  l = 0L;
                } 
                bool1 = cursorWindow1.putLong(l, paramInt, k);
              } else if (object instanceof byte[]) {
                bool1 = cursorWindow1.putBlob((byte[])object, paramInt, k);
              } else if (object instanceof Double) {
                bool1 = cursorWindow1.putDouble(((Double)object).doubleValue(), paramInt, k);
              } else if (object instanceof Float) {
                bool1 = cursorWindow1.putDouble(((Float)object).floatValue(), paramInt, k);
              } else {
                str = String.valueOf(object);
                throw new IllegalArgumentException((new StringBuilder(String.valueOf(str1).length() + 32 + String.valueOf(str).length())).append("Unsupported object for column ").append(str1).append(": ").append(str).toString());
              } 
            } else {
              if (!bool1) {
                if (i)
                  throw new cre("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."); 
                Log.d("DataHolder", (new StringBuilder(74)).append("Couldn't populate window data for row ").append(paramInt).append(" - allocating new window.").toString());
                cursorWindow1.freeLastRow();
                cursorWindow1 = new CursorWindow(false);
                cursorWindow1.setStartPosition(paramInt);
                cursorWindow1.setNumColumns((crd.a((crd)str)).length);
                arrayList.add(cursorWindow1);
                i = paramInt - 1;
                paramInt = 1;
              } else {
                k = 0;
                i = paramInt;
                paramInt = k;
              } 
              k = paramInt;
              paramInt = i + 1;
              cursorWindow = cursorWindow1;
              i = k;
              continue label69;
            } 
            k++;
          } 
        } catch (RuntimeException runtimeException) {
          i = arrayList.size();
          for (paramInt = bool; paramInt < i; paramInt++)
            ((CursorWindow)arrayList.get(paramInt)).close(); 
          throw runtimeException;
        } 
        break;
      } 
      return arrayList.<CursorWindow>toArray(new CursorWindow[arrayList.size()]);
    } 
  }
  
  public static DataHolder b(int paramInt) {
    return a(paramInt, (Bundle)null);
  }
  
  public int a(int paramInt) {
    boolean bool;
    int i = 0;
    if (paramInt >= 0 && paramInt < this.d) {
      bool = true;
    } else {
      bool = false;
    } 
    csp.a(bool);
    while (true) {
      int j = i;
      if (i < this.c.length)
        if (paramInt < this.c[i]) {
          j = i - 1;
        } else {
          i++;
          continue;
        }  
      paramInt = j;
      if (j == this.c.length)
        paramInt = j - 1; 
      return paramInt;
    } 
  }
  
  public long a(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].getLong(paramInt1, this.b.getInt(paramString));
  }
  
  public void a() {
    int j = 0;
    this.b = new Bundle();
    int i;
    for (i = 0; i < this.f.length; i++)
      this.b.putInt(this.f[i], i); 
    this.c = new int[this.g.length];
    int k = 0;
    i = j;
    j = k;
    while (i < this.g.length) {
      this.c[i] = j;
      k = this.g[i].getStartPosition();
      j += this.g[i].getNumRows() - j - k;
      i++;
    } 
    this.d = j;
  }
  
  public void a(String paramString, int paramInt1, int paramInt2, CharArrayBuffer paramCharArrayBuffer) {
    a(paramString, paramInt1);
    this.g[paramInt2].copyStringToBuffer(paramInt1, this.b.getInt(paramString), paramCharArrayBuffer);
  }
  
  public boolean a(String paramString) {
    return this.b.containsKey(paramString);
  }
  
  public int b(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].getInt(paramInt1, this.b.getInt(paramString));
  }
  
  public String[] b() {
    return this.f;
  }
  
  public String c(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].getString(paramInt1, this.b.getInt(paramString));
  }
  
  public CursorWindow[] c() {
    return this.g;
  }
  
  public void close() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Z
    //   6: ifne -> 41
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield e : Z
    //   14: iconst_0
    //   15: istore_1
    //   16: iload_1
    //   17: aload_0
    //   18: getfield g : [Landroid/database/CursorWindow;
    //   21: arraylength
    //   22: if_icmpge -> 41
    //   25: aload_0
    //   26: getfield g : [Landroid/database/CursorWindow;
    //   29: iload_1
    //   30: aaload
    //   31: invokevirtual close : ()V
    //   34: iload_1
    //   35: iconst_1
    //   36: iadd
    //   37: istore_1
    //   38: goto -> 16
    //   41: aload_0
    //   42: monitorexit
    //   43: return
    //   44: astore_2
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_2
    //   48: athrow
    // Exception table:
    //   from	to	target	type
    //   2	14	44	finally
    //   16	34	44	finally
    //   41	43	44	finally
    //   45	47	44	finally
  }
  
  public int d() {
    return this.h;
  }
  
  public boolean d(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return (Long.valueOf(this.g[paramInt2].getLong(paramInt1, this.b.getInt(paramString))).longValue() == 1L);
  }
  
  public float e(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].getFloat(paramInt1, this.b.getInt(paramString));
  }
  
  public Bundle e() {
    return this.i;
  }
  
  public int f() {
    return this.d;
  }
  
  public byte[] f(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].getBlob(paramInt1, this.b.getInt(paramString));
  }
  
  protected void finalize() {
    try {
      if (this.j && this.g.length > 0 && !g()) {
        close();
        String str = String.valueOf(toString());
        Log.e("DataBuffer", (new StringBuilder(String.valueOf(str).length() + 178)).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ").append(str).append(")").toString());
      } 
      return;
    } finally {
      super.finalize();
    } 
  }
  
  public Uri g(String paramString, int paramInt1, int paramInt2) {
    paramString = c(paramString, paramInt1, paramInt2);
    return (paramString == null) ? null : Uri.parse(paramString);
  }
  
  public boolean g() {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield e : Z
    //   6: istore_1
    //   7: aload_0
    //   8: monitorexit
    //   9: iload_1
    //   10: ireturn
    //   11: astore_2
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_2
    //   15: athrow
    // Exception table:
    //   from	to	target	type
    //   2	9	11	finally
    //   12	14	11	finally
  }
  
  public boolean h(String paramString, int paramInt1, int paramInt2) {
    a(paramString, paramInt1);
    return this.g[paramInt2].isNull(paramInt1, this.b.getInt(paramString));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    crl.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\common\data\DataHolder.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */