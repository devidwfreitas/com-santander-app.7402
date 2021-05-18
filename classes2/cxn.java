import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

class cxn implements cxl {
  private IBinder a;
  
  cxn(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  public cwx a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Intent paramIntent) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramIntent != null) {
        parcel1.writeInt(1);
        paramIntent.writeToParcel(parcel1, 0);
      } else {
        parcel1.writeInt(0);
      } 
      this.a.transact(25, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void a(Intent paramIntent, int paramInt) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramIntent != null) {
        parcel1.writeInt(1);
        paramIntent.writeToParcel(parcel1, 0);
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
  
  public void a(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(20, parcel1, parcel2, 0);
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
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(21, parcel1, parcel2, 0);
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
  
  public Bundle b() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(3, parcel1, parcel2, 0);
      parcel2.readException();
      if (parcel2.readInt() != 0)
        return (Bundle)Bundle.CREATOR.createFromParcel(parcel2); 
      return null;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(cwx paramcwx) {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramcwx != null) {
        IBinder iBinder = paramcwx.asBinder();
      } else {
        paramcwx = null;
      } 
      parcel1.writeStrongBinder((IBinder)paramcwx);
      this.a.transact(27, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void b(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(22, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int c() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(4, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void c(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(23, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cxl d() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(5, parcel1, parcel2, 0);
      parcel2.readException();
      return cxm.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public void d(boolean paramBoolean) {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      if (paramBoolean)
        bool = true; 
      parcel1.writeInt(bool);
      this.a.transact(24, parcel1, parcel2, 0);
      parcel2.readException();
      return;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx e() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(6, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean f() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(7, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public String g() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(8, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cxl h() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(9, parcel1, parcel2, 0);
      parcel2.readException();
      return cxm.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public int i() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(10, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readInt();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean j() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(11, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public cwx k() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(12, parcel1, parcel2, 0);
      parcel2.readException();
      return cwy.a(parcel2.readStrongBinder());
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean l() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(13, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean m() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(14, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean n() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(15, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean o() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(16, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean p() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(17, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean q() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(18, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public boolean r() {
    boolean bool = false;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      parcel1.writeInterfaceToken("com.google.android.gms.dynamic.IFragmentWrapper");
      this.a.transact(19, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i != 0)
        bool = true; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cxn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */