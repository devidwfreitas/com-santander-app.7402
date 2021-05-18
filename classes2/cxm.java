import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class cxm extends Binder implements cxl {
  public cxm() {
    attachInterface(this, "com.google.android.gms.dynamic.IFragmentWrapper");
  }
  
  public static cxl a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.dynamic.IFragmentWrapper");
    return (iInterface != null && iInterface instanceof cxl) ? (cxl)iInterface : new cxn(paramIBinder);
  }
  
  public IBinder asBinder() {
    return (IBinder)this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    IBinder iBinder3;
    Bundle bundle;
    cwx cwx1;
    IBinder iBinder2;
    String str1;
    IBinder iBinder1;
    cxl cxl2;
    cwx cwx3;
    cxl cxl1;
    cwx cwx2;
    Intent intent1;
    cwx cwx4 = null;
    IBinder iBinder4 = null;
    String str2 = null;
    IBinder iBinder5 = null;
    cwx cwx5 = null;
    Intent intent2 = null;
    Parcel parcel = null;
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    boolean bool7 = false;
    boolean bool8 = false;
    boolean bool = false;
    boolean bool9 = false;
    boolean bool10 = false;
    boolean bool11 = false;
    boolean bool1 = false;
    switch (paramInt1) {
      default:
        return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
        paramParcel2.writeString("com.google.android.gms.dynamic.IFragmentWrapper");
        return true;
      case 2:
        paramParcel1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cwx4 = a();
        paramParcel2.writeNoException();
        paramParcel1 = parcel;
        if (cwx4 != null)
          iBinder3 = cwx4.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder3);
        return true;
      case 3:
        iBinder3.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bundle = b();
        paramParcel2.writeNoException();
        if (bundle != null) {
          paramParcel2.writeInt(1);
          bundle.writeToParcel(paramParcel2, 1);
          return true;
        } 
        paramParcel2.writeInt(0);
        return true;
      case 4:
        bundle.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        paramInt1 = c();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 5:
        bundle.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cxl2 = d();
        paramParcel2.writeNoException();
        cwx1 = cwx4;
        if (cxl2 != null)
          iBinder2 = cxl2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 6:
        iBinder2.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cwx3 = e();
        paramParcel2.writeNoException();
        iBinder2 = iBinder4;
        if (cwx3 != null)
          iBinder2 = cwx3.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder2);
        return true;
      case 7:
        iBinder2.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = f();
        paramParcel2.writeNoException();
        if (bool) {
          paramInt1 = 1;
          paramParcel2.writeInt(paramInt1);
          return true;
        } 
        paramInt1 = 0;
        paramParcel2.writeInt(paramInt1);
        return true;
      case 8:
        iBinder2.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        str1 = g();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str1);
        return true;
      case 9:
        str1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cxl1 = h();
        paramParcel2.writeNoException();
        str1 = str2;
        if (cxl1 != null)
          iBinder1 = cxl1.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 10:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        paramInt1 = i();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(paramInt1);
        return true;
      case 11:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = j();
        paramParcel2.writeNoException();
        paramInt1 = bool1;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 12:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cwx2 = k();
        paramParcel2.writeNoException();
        iBinder1 = iBinder5;
        if (cwx2 != null)
          iBinder1 = cwx2.asBinder(); 
        paramParcel2.writeStrongBinder(iBinder1);
        return true;
      case 13:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = l();
        paramParcel2.writeNoException();
        paramInt1 = bool2;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 14:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = m();
        paramParcel2.writeNoException();
        paramInt1 = bool3;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 15:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = n();
        paramParcel2.writeNoException();
        paramInt1 = bool4;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 16:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = o();
        paramParcel2.writeNoException();
        paramInt1 = bool5;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 17:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = p();
        paramParcel2.writeNoException();
        paramInt1 = bool6;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 18:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = q();
        paramParcel2.writeNoException();
        paramInt1 = bool7;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 19:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = r();
        paramParcel2.writeNoException();
        paramInt1 = bool8;
        if (bool)
          paramInt1 = 1; 
        paramParcel2.writeInt(paramInt1);
        return true;
      case 20:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        a(cwy.a(iBinder1.readStrongBinder()));
        paramParcel2.writeNoException();
        return true;
      case 21:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        if (iBinder1.readInt() != 0)
          bool = true; 
        a(bool);
        paramParcel2.writeNoException();
        return true;
      case 22:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = bool9;
        if (iBinder1.readInt() != 0)
          bool = true; 
        b(bool);
        paramParcel2.writeNoException();
        return true;
      case 23:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = bool10;
        if (iBinder1.readInt() != 0)
          bool = true; 
        c(bool);
        paramParcel2.writeNoException();
        return true;
      case 24:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        bool = bool11;
        if (iBinder1.readInt() != 0)
          bool = true; 
        d(bool);
        paramParcel2.writeNoException();
        return true;
      case 25:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        cwx2 = cwx5;
        if (iBinder1.readInt() != 0)
          intent1 = (Intent)Intent.CREATOR.createFromParcel((Parcel)iBinder1); 
        a(intent1);
        paramParcel2.writeNoException();
        return true;
      case 26:
        iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
        intent1 = intent2;
        if (iBinder1.readInt() != 0)
          intent1 = (Intent)Intent.CREATOR.createFromParcel((Parcel)iBinder1); 
        a(intent1, iBinder1.readInt());
        paramParcel2.writeNoException();
        return true;
      case 27:
        break;
    } 
    iBinder1.enforceInterface("com.google.android.gms.dynamic.IFragmentWrapper");
    b(cwy.a(iBinder1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */