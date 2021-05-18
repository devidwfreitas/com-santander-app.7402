import android.app.PendingIntent;
import android.location.Location;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
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
import java.util.ArrayList;

public abstract class diw extends Binder implements div {
  public static div a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
    return (iInterface != null && iInterface instanceof div) ? (div)iInterface : new dix(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    ActivityRecognitionResult activityRecognitionResult;
    Location location;
    LocationAvailability locationAvailability;
    long l;
    ArrayList<zzasm> arrayList;
    boolean bool = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        arrayList = paramParcel1.createTypedArrayList(zzasm.CREATOR);
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a(arrayList, pendingIntent1, dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a(arrayList, pendingIntent, dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 57:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          GeofencingRequest geofencingRequest = (GeofencingRequest)GeofencingRequest.CREATOR.createFromParcel(paramParcel1);
        } else {
          pendingIntent = null;
        } 
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a((GeofencingRequest)pendingIntent, pendingIntent1, dit.a(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        arrayList = null;
        a((GeofencingRequest)pendingIntent, (PendingIntent)arrayList, dit.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a(pendingIntent, dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a(pendingIntent, dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 3:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(paramParcel1.createStringArray(), dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(dit.a(paramParcel1.readStrongBinder()), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 74:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          zzt zzt = (zzt)zzt.CREATOR.createFromParcel(paramParcel1);
          a(zzt, dit.a(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a((zzt)pendingIntent, dit.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        l = paramParcel1.readLong();
        if (paramParcel1.readInt() != 0) {
          bool = true;
        } else {
          bool = false;
        } 
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a(l, bool, pendingIntent1);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a(l, bool, (PendingIntent)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 70:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          zza zza = (zza)zza.CREATOR.createFromParcel(paramParcel1);
        } else {
          pendingIntent = null;
        } 
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a((zza)pendingIntent, pendingIntent1, dde.a(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        arrayList = null;
        a((zza)pendingIntent, (PendingIntent)arrayList, dde.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 71:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(dde.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 72:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          zzf zzf = (zzf)zzf.CREATOR.createFromParcel(paramParcel1);
        } else {
          pendingIntent = null;
        } 
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a((zzf)pendingIntent, pendingIntent1, dde.a(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        arrayList = null;
        a((zzf)pendingIntent, (PendingIntent)arrayList, dde.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 73:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a(pendingIntent, dde.a(paramParcel1.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a(pendingIntent, dde.a(paramParcel1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (paramParcel1.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
          a(pendingIntent1);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((PendingIntent)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 64:
        paramParcel1.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        activityRecognitionResult = a(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (activityRecognitionResult != null) {
          paramParcel2.writeInt(1);
          activityRecognitionResult.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 65:
        activityRecognitionResult.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (activityRecognitionResult.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)activityRecognitionResult);
          b(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        b(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 66:
        activityRecognitionResult.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (activityRecognitionResult.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)activityRecognitionResult);
          c(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        c(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 68:
        activityRecognitionResult.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (activityRecognitionResult.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)activityRecognitionResult);
          d(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        d(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 69:
        activityRecognitionResult.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (activityRecognitionResult.readInt() != 0) {
          pendingIntent = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)activityRecognitionResult);
          e(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        e(pendingIntent, dde.a(activityRecognitionResult.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 7:
        activityRecognitionResult.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        location = a();
        paramParcel2.writeNoException();
        if (location != null) {
          paramParcel2.writeInt(1);
          location.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 8:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          LocationRequest locationRequest = (LocationRequest)LocationRequest.CREATOR.createFromParcel((Parcel)location);
          a(locationRequest, dup.a(location.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a((LocationRequest)pendingIntent, dup.a(location.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 20:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          LocationRequest locationRequest = (LocationRequest)LocationRequest.CREATOR.createFromParcel((Parcel)location);
          a(locationRequest, dup.a(location.readStrongBinder()), location.readString());
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a((LocationRequest)pendingIntent, dup.a(location.readStrongBinder()), location.readString());
        paramParcel2.writeNoException();
        return true;
      case 9:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          LocationRequest locationRequest = (LocationRequest)LocationRequest.CREATOR.createFromParcel((Parcel)location);
        } else {
          pendingIntent = null;
        } 
        if (location.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)location);
          a((LocationRequest)pendingIntent, pendingIntent1);
          paramParcel2.writeNoException();
          return true;
        } 
        location = null;
        a((LocationRequest)pendingIntent, (PendingIntent)location);
        paramParcel2.writeNoException();
        return true;
      case 52:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          zzasi zzasi = (zzasi)zzasi.CREATOR.createFromParcel((Parcel)location);
          a(zzasi, dup.a(location.readStrongBinder()));
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a((zzasi)pendingIntent, dup.a(location.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 53:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          zzasi zzasi = (zzasi)zzasi.CREATOR.createFromParcel((Parcel)location);
        } else {
          pendingIntent = null;
        } 
        if (location.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)location);
          a((zzasi)pendingIntent, pendingIntent1);
          paramParcel2.writeNoException();
          return true;
        } 
        location = null;
        a((zzasi)pendingIntent, (PendingIntent)location);
        paramParcel2.writeNoException();
        return true;
      case 10:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(dup.a(location.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 11:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          PendingIntent pendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel((Parcel)location);
          b(pendingIntent1);
          paramParcel2.writeNoException();
          return true;
        } 
        location = null;
        b((PendingIntent)location);
        paramParcel2.writeNoException();
        return true;
      case 59:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          zzask zzask = (zzask)zzask.CREATOR.createFromParcel((Parcel)location);
          a(zzask);
          paramParcel2.writeNoException();
          return true;
        } 
        location = null;
        a((zzask)location);
        paramParcel2.writeNoException();
        return true;
      case 12:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 13:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          location = (Location)Location.CREATOR.createFromParcel((Parcel)location);
          a(location);
          paramParcel2.writeNoException();
          return true;
        } 
        location = null;
        a(location);
        paramParcel2.writeNoException();
        return true;
      case 21:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        location = b(location.readString());
        paramParcel2.writeNoException();
        if (location != null) {
          paramParcel2.writeInt(1);
          location.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 26:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        if (location.readInt() != 0) {
          Location location1 = (Location)Location.CREATOR.createFromParcel((Parcel)location);
          a(location1, location.readInt());
          paramParcel2.writeNoException();
          return true;
        } 
        pendingIntent = null;
        a((Location)pendingIntent, location.readInt());
        paramParcel2.writeNoException();
        return true;
      case 67:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        a(diq.a(location.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 34:
        location.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
        locationAvailability = c(location.readString());
        paramParcel2.writeNoException();
        if (locationAvailability != null) {
          paramParcel2.writeInt(1);
          locationAvailability.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 63:
        break;
    } 
    locationAvailability.enforceInterface("com.google.android.gms.location.internal.IGoogleLocationManagerService");
    if (locationAvailability.readInt() != 0) {
      LocationSettingsRequest locationSettingsRequest = (LocationSettingsRequest)LocationSettingsRequest.CREATOR.createFromParcel((Parcel)locationAvailability);
      a(locationSettingsRequest, diz.a(locationAvailability.readStrongBinder()), locationAvailability.readString());
      paramParcel2.writeNoException();
      return true;
    } 
    PendingIntent pendingIntent = null;
    a((LocationSettingsRequest)pendingIntent, diz.a(locationAvailability.readStrongBinder()), locationAvailability.readString());
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\diw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */