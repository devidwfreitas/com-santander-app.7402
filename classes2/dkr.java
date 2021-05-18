import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.zzatd;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import java.util.ArrayList;
import java.util.List;

class dkr implements dkp {
  private IBinder a;
  
  dkr(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public List<zzauq> a(zzatd paramzzatd, boolean paramBoolean) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
    
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
    if (!paramBoolean)
      bool = false; 
    parcel1.writeInt(bool);
    this.a.transact(7, parcel1, parcel2, 0);
    parcel2.readException();
    ArrayList<zzauq> arrayList = parcel2.createTypedArrayList(zzauq.CREATOR);
    parcel2.recycle();
    parcel1.recycle();
    return arrayList;
  }
  
  public List<zzatg> a(String paramString1, String paramString2, zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
        this.a.transact(16, parcel1, parcel2, 0);
        parcel2.readException();
        return parcel2.createTypedArrayList(zzatg.CREATOR);
      } 
      parcel1.writeInt(0);
      this.a.transact(16, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(zzatg.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public List<zzatg> a(String paramString1, String paramString2, String paramString3) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      parcel1.writeString(paramString3);
      this.a.transact(17, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(zzatg.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public List<zzauq> a(String paramString1, String paramString2, String paramString3, boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      parcel1.writeString(paramString3);
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(zzauq.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public List<zzauq> a(String paramString1, String paramString2, boolean paramBoolean, zzatd paramzzatd) {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      if (!paramBoolean)
        bool = false; 
      parcel1.writeInt(bool);
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
        this.a.transact(14, parcel1, parcel2, 0);
        parcel2.readException();
        return parcel2.createTypedArrayList(zzauq.CREATOR);
      } 
      parcel1.writeInt(0);
      this.a.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createTypedArrayList(zzauq.CREATOR);
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(long paramLong, String paramString1, String paramString2, String paramString3) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      parcel1.writeLong(paramLong);
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      parcel1.writeString(paramString3);
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzatg paramzzatg) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatg != null) {
        parcel1.writeInt(1);
        paramzzatg.writeToParcel(parcel1, 0);
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
  
  public void a(zzatg paramzzatg, zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatg != null) {
        parcel1.writeInt(1);
        paramzzatg.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzatq paramzzatq, zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatq != null) {
        parcel1.writeInt(1);
        paramzzatq.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzatq paramzzatq, String paramString1, String paramString2) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatq != null) {
        parcel1.writeInt(1);
        paramzzatq.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      parcel1.writeString(paramString1);
      parcel1.writeString(paramString2);
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(zzauq paramzzauq, zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzauq != null) {
        parcel1.writeInt(1);
        paramzzauq.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public byte[] a(zzatq paramzzatq, String paramString) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatq != null) {
        parcel1.writeInt(1);
        paramzzatq.writeToParcel(parcel1, 0);
        parcel1.writeString(paramString);
        this.a.transact(9, parcel1, parcel2, 0);
        parcel2.readException();
        return parcel2.createByteArray();
      } 
      parcel1.writeInt(0);
      parcel1.writeString(paramString);
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.createByteArray();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public IBinder asBinder() {
    return this.a;
  }
  
  public void b(zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
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
  
  public String c(zzatd paramzzatd) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.measurement.internal.IMeasurementService");
      if (paramzzatd != null) {
        parcel1.writeInt(1);
        paramzzatd.writeToParcel(parcel1, 0);
        this.a.transact(11, parcel1, parcel2, 0);
        parcel2.readException();
        return parcel2.readString();
      } 
      parcel1.writeInt(0);
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */