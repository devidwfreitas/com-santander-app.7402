import android.app.PendingIntent;
import android.location.Location;
import android.os.IInterface;
import com.google.android.gms.internal.zzasi;
import com.google.android.gms.internal.zzask;
import com.google.android.gms.internal.zzasm;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.zza;
import com.google.android.gms.location.zzf;
import com.google.android.gms.location.zzt;
import java.util.List;

public interface div extends IInterface {
  Location a();
  
  ActivityRecognitionResult a(String paramString);
  
  void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent);
  
  void a(PendingIntent paramPendingIntent);
  
  void a(PendingIntent paramPendingIntent, ddd paramddd);
  
  void a(PendingIntent paramPendingIntent, dis paramdis, String paramString);
  
  void a(Location paramLocation);
  
  void a(Location paramLocation, int paramInt);
  
  void a(zzasi paramzzasi, PendingIntent paramPendingIntent);
  
  void a(zzasi paramzzasi, duo paramduo);
  
  void a(zzask paramzzask);
  
  void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, dis paramdis);
  
  void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  void a(LocationRequest paramLocationRequest, duo paramduo);
  
  void a(LocationRequest paramLocationRequest, duo paramduo, String paramString);
  
  void a(LocationSettingsRequest paramLocationSettingsRequest, diy paramdiy, String paramString);
  
  void a(zza paramzza, PendingIntent paramPendingIntent, ddd paramddd);
  
  void a(zzf paramzzf, PendingIntent paramPendingIntent, ddd paramddd);
  
  void a(zzt paramzzt, dis paramdis);
  
  void a(ddd paramddd);
  
  void a(dip paramdip);
  
  void a(dis paramdis, String paramString);
  
  void a(duo paramduo);
  
  void a(List<zzasm> paramList, PendingIntent paramPendingIntent, dis paramdis, String paramString);
  
  void a(boolean paramBoolean);
  
  void a(String[] paramArrayOfString, dis paramdis, String paramString);
  
  Location b(String paramString);
  
  void b(PendingIntent paramPendingIntent);
  
  void b(PendingIntent paramPendingIntent, ddd paramddd);
  
  LocationAvailability c(String paramString);
  
  void c(PendingIntent paramPendingIntent, ddd paramddd);
  
  void d(PendingIntent paramPendingIntent, ddd paramddd);
  
  void e(PendingIntent paramPendingIntent, ddd paramddd);
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\div.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */