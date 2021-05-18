import android.content.Intent;
import android.location.Location;
import com.google.android.gms.internal.zzasm;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class dts {
  private final int a;
  
  private final int b;
  
  private final List<dto> c;
  
  private final Location d;
  
  private dts(int paramInt1, int paramInt2, List<dto> paramList, Location paramLocation) {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramList;
    this.d = paramLocation;
  }
  
  public static dts a(Intent paramIntent) {
    return (paramIntent == null) ? null : new dts(paramIntent.getIntExtra("gms_error_code", -1), b(paramIntent), c(paramIntent), (Location)paramIntent.getParcelableExtra("com.google.android.location.intent.extra.triggering_location"));
  }
  
  private static int b(Intent paramIntent) {
    int i = paramIntent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
    return (i != -1 && (i == 1 || i == 2 || i == 4)) ? i : -1;
  }
  
  private static List<dto> c(Intent paramIntent) {
    ArrayList arrayList1 = (ArrayList)paramIntent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
    if (arrayList1 == null)
      return null; 
    ArrayList<zzasm> arrayList = new ArrayList(arrayList1.size());
    Iterator<byte[]> iterator = arrayList1.iterator();
    while (iterator.hasNext())
      arrayList.add(zzasm.a(iterator.next())); 
    return (List)arrayList;
  }
  
  public boolean a() {
    return (this.a != -1);
  }
  
  public int b() {
    return this.a;
  }
  
  public int c() {
    return this.b;
  }
  
  public List<dto> d() {
    return this.c;
  }
  
  public Location e() {
    return this.d;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dts.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */