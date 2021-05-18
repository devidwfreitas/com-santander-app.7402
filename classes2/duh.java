import com.google.android.gms.location.zzd;
import java.util.Comparator;

public final class duh implements Comparator<zzd> {
  public int a(zzd paramzzd1, zzd paramzzd2) {
    int i = paramzzd1.a();
    int j = paramzzd2.a();
    if (i != j)
      return (i >= j) ? 1 : -1; 
    i = paramzzd1.b();
    j = paramzzd2.b();
    return (i == j) ? 0 : ((i >= j) ? 1 : -1);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\duh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */