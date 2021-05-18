package com.datami.smi.h;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

final class e implements IInterface {
  private static final byte[] b = new byte[] { 
      17, 35, 46, -52, -17, -3, 58, -62, -13, -5, 
      3, -10, 2, 50, -56, -18, 5, -19, -2, 1, 
      0, 49, -62, -11, -11, 64, -56, -8, -20, 64, 
      -64, 0, -6, -14, -11, 6, -2, -8, -1, -18, 
      63, -64, -10, -11, 10, -18, -1, 8, -16, 57, 
      -32, 3, -40, -23, 12, -18, -7, 6, -15, 5, 
      -10, 2, 25, -32, 12, -23, -18, -9, 8, 1, 
      -7 };
  
  private static int c = 110;
  
  private IBinder a;
  
  public e(IBinder paramIBinder) {
    this.a = paramIBinder;
  }
  
  private static String a(int paramInt1, int paramInt2, int paramInt3) {
    int i = paramInt3 * 3 + 99;
    byte[] arrayOfByte1 = b;
    int k = paramInt2 * 4 + 68;
    paramInt3 = 3 - paramInt1 * 3;
    byte[] arrayOfByte2 = new byte[k];
    if (arrayOfByte1 == null) {
      paramInt1 = 0;
      paramInt2 = paramInt3;
    } else {
      paramInt2 = 0;
      paramInt1 = i;
      arrayOfByte2[paramInt2] = (byte)paramInt1;
      int m = paramInt3 + 1;
    } 
    i = -i + paramInt3 - 5;
    paramInt3 = paramInt2;
    paramInt2 = paramInt1;
    paramInt1 = i;
    arrayOfByte2[paramInt2] = (byte)paramInt1;
    int j = paramInt3 + 1;
  }
  
  public final String a() {
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      byte b = b[20];
      parcel1.writeInterfaceToken(a(b, b, b));
      this.a.transact(1, parcel1, parcel2, 0);
      parcel2.readException();
      return parcel2.readString();
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
  
  public final IBinder asBinder() {
    return this.a;
  }
  
  public final boolean b() {
    boolean bool = true;
    Parcel parcel1 = Parcel.obtain();
    Parcel parcel2 = Parcel.obtain();
    try {
      byte b = b[20];
      parcel1.writeInterfaceToken(a(b, b, b));
      parcel1.writeInt(1);
      this.a.transact(2, parcel1, parcel2, 0);
      parcel2.readException();
      int i = parcel2.readInt();
      if (i == 0)
        bool = false; 
      return bool;
    } finally {
      parcel2.recycle();
      parcel1.recycle();
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\datami\smi\h\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */