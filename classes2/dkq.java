import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import java.util.List;

public abstract class dkq extends Binder implements dkp {
  public dkq() {
    attachInterface(this, "com.google.android.gms.measurement.internal.IMeasurementService");
  }
  
  public static dkp a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IMeasurementService");
    return (iInterface != null && iInterface instanceof dkp) ? (dkp)iInterface : new dkr(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    List<zzauq> list2;
    byte[] arrayOfByte;
    String str1;
    zzatq zzatq;
    String str2;
    String str3;
    String str4;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.measurement.internal.IMeasurementService");
        return true;
      case 1:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzatq = (zzatq)zzatq.CREATOR.createFromParcel(paramParcel1);
        } else {
          zzatq = null;
        } 
        if (paramParcel1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel(paramParcel1);
          a(zzatq, zzatd);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a(zzatq, (zzatd)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzauq zzauq = (zzauq)zzauq.CREATOR.createFromParcel(paramParcel1);
        } else {
          zzatq = null;
        } 
        if (paramParcel1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel(paramParcel1);
          a((zzauq)zzatq, zzatd);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((zzauq)zzatq, (zzatd)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 4:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel(paramParcel1);
          a(zzatd);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        a((zzatd)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 5:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzatq = (zzatq)zzatq.CREATOR.createFromParcel(paramParcel1);
          a(zzatq, paramParcel1.readString(), paramParcel1.readString());
          paramParcel2.writeNoException();
          return true;
        } 
        zzatq = null;
        a(zzatq, paramParcel1.readString(), paramParcel1.readString());
        paramParcel2.writeNoException();
        return true;
      case 6:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel(paramParcel1);
          b(zzatd);
          paramParcel2.writeNoException();
          return true;
        } 
        paramParcel1 = null;
        b((zzatd)paramParcel1);
        paramParcel2.writeNoException();
        return true;
      case 7:
        paramParcel1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (paramParcel1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel(paramParcel1);
        } else {
          zzatq = null;
        } 
        if (paramParcel1.readInt() != 0)
          bool1 = true; 
        list2 = a((zzatd)zzatq, bool1);
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list2);
        return true;
      case 9:
        list2.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (list2.readInt() != 0) {
          zzatq = (zzatq)zzatq.CREATOR.createFromParcel((Parcel)list2);
          arrayOfByte = a(zzatq, list2.readString());
          paramParcel2.writeNoException();
          paramParcel2.writeByteArray(arrayOfByte);
          return true;
        } 
        zzatq = null;
        arrayOfByte = a(zzatq, arrayOfByte.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeByteArray(arrayOfByte);
        return true;
      case 10:
        arrayOfByte.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        a(arrayOfByte.readLong(), arrayOfByte.readString(), arrayOfByte.readString(), arrayOfByte.readString());
        paramParcel2.writeNoException();
        return true;
      case 11:
        arrayOfByte.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (arrayOfByte.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel((Parcel)arrayOfByte);
          String str = c(zzatd);
          paramParcel2.writeNoException();
          paramParcel2.writeString(str);
          return true;
        } 
        arrayOfByte = null;
        str1 = c((zzatd)arrayOfByte);
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 12:
        str1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (str1.readInt() != 0) {
          zzatg zzatg = (zzatg)zzatg.CREATOR.createFromParcel((Parcel)str1);
        } else {
          zzatq = null;
        } 
        if (str1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel((Parcel)str1);
          a((zzatg)zzatq, zzatd);
          paramParcel2.writeNoException();
          return true;
        } 
        str1 = null;
        a((zzatg)zzatq, (zzatd)str1);
        paramParcel2.writeNoException();
        return true;
      case 13:
        str1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        if (str1.readInt() != 0) {
          zzatg zzatg = (zzatg)zzatg.CREATOR.createFromParcel((Parcel)str1);
          a(zzatg);
          paramParcel2.writeNoException();
          return true;
        } 
        str1 = null;
        a((zzatg)str1);
        paramParcel2.writeNoException();
        return true;
      case 14:
        str1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        str2 = str1.readString();
        str3 = str1.readString();
        bool1 = bool2;
        if (str1.readInt() != 0)
          bool1 = true; 
        if (str1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel((Parcel)str1);
          List<zzauq> list = a(str2, str3, bool1, zzatd);
          paramParcel2.writeNoException();
          paramParcel2.writeTypedList(list);
          return true;
        } 
        str1 = null;
        list1 = a(str2, str3, bool1, (zzatd)str1);
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list1);
        return true;
      case 15:
        list1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        str2 = list1.readString();
        str3 = list1.readString();
        str4 = list1.readString();
        bool1 = bool3;
        if (list1.readInt() != 0)
          bool1 = true; 
        list1 = a(str2, str3, str4, bool1);
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list1);
        return true;
      case 16:
        list1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
        str2 = list1.readString();
        str3 = list1.readString();
        if (list1.readInt() != 0) {
          zzatd zzatd = (zzatd)zzatd.CREATOR.createFromParcel((Parcel)list1);
          List<zzatg> list = a(str2, str3, zzatd);
          paramParcel2.writeNoException();
          paramParcel2.writeTypedList(list);
          return true;
        } 
        list1 = null;
        list1 = (List)a(str2, str3, (zzatd)list1);
        paramParcel2.writeNoException();
        paramParcel2.writeTypedList(list1);
        return true;
      case 17:
        break;
    } 
    list1.enforceInterface("com.google.android.gms.measurement.internal.IMeasurementService");
    List<zzauq> list1 = (List)a(list1.readString(), list1.readString(), list1.readString());
    paramParcel2.writeNoException();
    paramParcel2.writeTypedList(list1);
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */