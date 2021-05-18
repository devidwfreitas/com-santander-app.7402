import android.app.PendingIntent;
import android.location.Location;
import android.os.IBinder;
import android.os.Parcel;
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

class dix implements div {
  private IBinder a;
  
  dix(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public Location a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Location)Location.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public ActivityRecognitionResult a(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeString(paramString);
      this.a.transact(64, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (ActivityRecognitionResult)ActivityRecognitionResult.CREATOR.createFromParcel(parcel2); 
      paramString = null;
      return (ActivityRecognitionResult)paramString;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(long paramLong, boolean paramBoolean, PendingIntent paramPendingIntent) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeLong(paramLong);
      if (!paramBoolean)
        bool = false; 
      parcel1.writeInt(bool);
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(PendingIntent paramPendingIntent) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      this.a.transact(73, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(PendingIntent paramPendingIntent, dis paramdis, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      parcel1.writeString(paramString);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Location paramLocation) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocation != null) {
        parcel1.writeInt(1);
        paramLocation.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Location paramLocation, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocation != null) {
        parcel1.writeInt(1);
        paramLocation.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeInt(paramInt);
      this.a.transact(26, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzasi paramzzasi, PendingIntent paramPendingIntent) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzzasi != null) {
        parcel1.writeInt(1);
        paramzzasi.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(53, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzasi paramzzasi, duo paramduo) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzzasi != null) {
        parcel1.writeInt(1);
        paramzzasi.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramduo != null) {
        IBinder iBinder = paramduo.asBinder();
      } else {
        paramzzasi = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzasi);
      this.a.transact(52, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzask paramzzask) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzzask != null) {
        parcel1.writeInt(1);
        paramzzask.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(59, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, dis paramdis) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramGeofencingRequest != null) {
        parcel1.writeInt(1);
        paramGeofencingRequest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramGeofencingRequest = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramGeofencingRequest);
      this.a.transact(57, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocationRequest != null) {
        parcel1.writeInt(1);
        paramLocationRequest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LocationRequest paramLocationRequest, duo paramduo) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocationRequest != null) {
        parcel1.writeInt(1);
        paramLocationRequest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramduo != null) {
        IBinder iBinder = paramduo.asBinder();
      } else {
        paramLocationRequest = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramLocationRequest);
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LocationRequest paramLocationRequest, duo paramduo, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocationRequest != null) {
        parcel1.writeInt(1);
        paramLocationRequest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramduo != null) {
        IBinder iBinder = paramduo.asBinder();
      } else {
        paramLocationRequest = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramLocationRequest);
      parcel1.writeString(paramString);
      this.a.transact(20, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(LocationSettingsRequest paramLocationSettingsRequest, diy paramdiy, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramLocationSettingsRequest != null) {
        parcel1.writeInt(1);
        paramLocationSettingsRequest.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdiy != null) {
        IBinder iBinder = paramdiy.asBinder();
      } else {
        paramLocationSettingsRequest = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramLocationSettingsRequest);
      parcel1.writeString(paramString);
      this.a.transact(63, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zza paramzza, PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzza != null) {
        parcel1.writeInt(1);
        paramzza.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramzza = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzza);
      this.a.transact(70, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzf paramzzf, PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzzf != null) {
        parcel1.writeInt(1);
        paramzzf.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramzzf = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzf);
      this.a.transact(72, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzt paramzzt, dis paramdis) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramzzt != null) {
        parcel1.writeInt(1);
        paramzzt.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramzzt = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramzzt);
      this.a.transact(74, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramddd = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramddd);
      this.a.transact(71, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dip paramdip) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramdip != null) {
        IBinder iBinder = paramdip.asBinder();
      } else {
        paramdip = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdip);
      this.a.transact(67, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(dis paramdis, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramdis = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramdis);
      parcel1.writeString(paramString);
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(duo paramduo) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramduo != null) {
        IBinder iBinder = paramduo.asBinder();
      } else {
        paramduo = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramduo);
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(List<zzasm> paramList, PendingIntent paramPendingIntent, dis paramdis, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeTypedList(paramList);
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramList = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramList);
      parcel1.writeString(paramString);
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(String[] paramArrayOfString, dis paramdis, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeStringArray(paramArrayOfString);
      if (paramdis != null) {
        IBinder iBinder = paramdis.asBinder();
      } else {
        paramArrayOfString = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramArrayOfString);
      parcel1.writeString(paramString);
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public Location b(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeString(paramString);
      this.a.transact(21, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Location)Location.CREATOR.createFromParcel(parcel2); 
      paramString = null;
      return (Location)paramString;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(PendingIntent paramPendingIntent) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      this.a.transact(65, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public LocationAvailability c(String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      parcel1.writeString(paramString);
      this.a.transact(34, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (LocationAvailability)LocationAvailability.CREATOR.createFromParcel(parcel2); 
      paramString = null;
      return (LocationAvailability)paramString;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void c(PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      this.a.transact(66, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void d(PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      this.a.transact(68, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void e(PendingIntent paramPendingIntent, ddd paramddd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.location.internal.IGoogleLocationManagerService");
      if (paramPendingIntent != null) {
        parcel1.writeInt(1);
        paramPendingIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramddd != null) {
        IBinder iBinder = paramddd.asBinder();
      } else {
        paramPendingIntent = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramPendingIntent);
      this.a.transact(69, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */