import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.zzato;
import java.util.Iterator;

public class dki {
  final String a;
  
  final String b;
  
  final String c;
  
  final long d;
  
  final long e;
  
  final zzato f;
  
  dki(dlv paramdlv, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, Bundle paramBundle) {
    csp.a(paramString2);
    csp.a(paramString3);
    this.a = paramString2;
    this.b = paramString3;
    paramString3 = paramString1;
    if (TextUtils.isEmpty(paramString1))
      paramString3 = null; 
    this.c = paramString3;
    this.d = paramLong1;
    this.e = paramLong2;
    if (this.e != 0L && this.e > this.d)
      paramdlv.f().z().a("Event created with reverse previous/current timestamps. appId", dkw.a(paramString2)); 
    this.f = a(paramdlv, paramBundle);
  }
  
  private dki(dlv paramdlv, String paramString1, String paramString2, String paramString3, long paramLong1, long paramLong2, zzato paramzzato) {
    csp.a(paramString2);
    csp.a(paramString3);
    csp.a(paramzzato);
    this.a = paramString2;
    this.b = paramString3;
    paramString3 = paramString1;
    if (TextUtils.isEmpty(paramString1))
      paramString3 = null; 
    this.c = paramString3;
    this.d = paramLong1;
    this.e = paramLong2;
    if (this.e != 0L && this.e > this.d)
      paramdlv.f().z().a("Event created with reverse previous/current timestamps. appId", dkw.a(paramString2)); 
    this.f = paramzzato;
  }
  
  static zzato a(dlv paramdlv, Bundle paramBundle) {
    if (paramBundle != null && !paramBundle.isEmpty()) {
      paramBundle = new Bundle(paramBundle);
      Iterator<String> iterator = paramBundle.keySet().iterator();
      while (iterator.hasNext()) {
        String str = iterator.next();
        if (str == null) {
          paramdlv.f().x().a("Param name can't be null");
          iterator.remove();
          continue;
        } 
        Object object = paramdlv.o().b(str, paramBundle.get(str));
        if (object == null) {
          paramdlv.f().z().a("Param value can't be null", str);
          iterator.remove();
          continue;
        } 
        paramdlv.o().a(paramBundle, str, object);
      } 
      return new zzato(paramBundle);
    } 
    return new zzato(new Bundle());
  }
  
  dki a(dlv paramdlv, long paramLong) {
    return new dki(paramdlv, this.c, this.a, this.b, this.d, paramLong, this.f);
  }
  
  public String toString() {
    String str1 = this.a;
    String str2 = this.b;
    String str3 = String.valueOf(this.f);
    return (new StringBuilder(String.valueOf(str1).length() + 33 + String.valueOf(str2).length() + String.valueOf(str3).length())).append("Event{appId='").append(str1).append("'").append(", name='").append(str2).append("'").append(", params=").append(str3).append("}").toString();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dki.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */