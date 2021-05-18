package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.zza;
import csg;
import cwy;
import edm;
import efl;

public class Cap extends zza {
  public static final Parcelable.Creator<Cap> CREATOR;
  
  private static final String a = Cap.class.getSimpleName();
  
  private final int b;
  
  @Nullable
  private final edm c;
  
  @Nullable
  private final Float d;
  
  static {
    CREATOR = (Parcelable.Creator<Cap>)new efl();
  }
  
  protected Cap(int paramInt) {
    this(paramInt, (edm)null, (Float)null);
  }
  
  public Cap(int paramInt, @Nullable IBinder paramIBinder, @Nullable Float paramFloat) {
    this(paramInt, a(paramIBinder), paramFloat);
  }
  
  private Cap(int paramInt, @Nullable edm paramedm, @Nullable Float paramFloat) {
    // Byte code:
    //   0: iconst_0
    //   1: istore #6
    //   3: aload_0
    //   4: invokespecial <init> : ()V
    //   7: aload_3
    //   8: ifnull -> 140
    //   11: aload_3
    //   12: invokevirtual floatValue : ()F
    //   15: fconst_0
    //   16: fcmpl
    //   17: ifle -> 140
    //   20: iconst_1
    //   21: istore #4
    //   23: iload_1
    //   24: iconst_3
    //   25: if_icmpne -> 45
    //   28: iload #6
    //   30: istore #5
    //   32: aload_2
    //   33: ifnull -> 48
    //   36: iload #6
    //   38: istore #5
    //   40: iload #4
    //   42: ifeq -> 48
    //   45: iconst_1
    //   46: istore #5
    //   48: aload_2
    //   49: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore #7
    //   54: aload_3
    //   55: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   58: astore #8
    //   60: iload #5
    //   62: new java/lang/StringBuilder
    //   65: dup
    //   66: aload #7
    //   68: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   71: invokevirtual length : ()I
    //   74: bipush #63
    //   76: iadd
    //   77: aload #8
    //   79: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   82: invokevirtual length : ()I
    //   85: iadd
    //   86: invokespecial <init> : (I)V
    //   89: ldc 'Invalid Cap: type='
    //   91: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: iload_1
    //   95: invokevirtual append : (I)Ljava/lang/StringBuilder;
    //   98: ldc ' bitmapDescriptor='
    //   100: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: aload #7
    //   105: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: ldc ' bitmapRefWidth='
    //   110: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: aload #8
    //   115: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: invokevirtual toString : ()Ljava/lang/String;
    //   121: invokestatic b : (ZLjava/lang/Object;)V
    //   124: aload_0
    //   125: iload_1
    //   126: putfield b : I
    //   129: aload_0
    //   130: aload_2
    //   131: putfield c : Ledm;
    //   134: aload_0
    //   135: aload_3
    //   136: putfield d : Ljava/lang/Float;
    //   139: return
    //   140: iconst_0
    //   141: istore #4
    //   143: goto -> 23
  }
  
  protected Cap(@NonNull edm paramedm, float paramFloat) {
    this(3, paramedm, Float.valueOf(paramFloat));
  }
  
  @Nullable
  private static edm a(@Nullable IBinder paramIBinder) {
    return (paramIBinder == null) ? null : new edm(cwy.a(paramIBinder));
  }
  
  public int a() {
    return this.b;
  }
  
  @Nullable
  public Float b() {
    return this.d;
  }
  
  @Nullable
  public IBinder c() {
    return (this.c == null) ? null : this.c.a().asBinder();
  }
  
  public Cap d() {
    int i;
    String str;
    switch (this.b) {
      default:
        str = a;
        i = this.b;
        Log.w(str, (new StringBuilder(29)).append("Unknown Cap type: ").append(i).toString());
        return this;
      case 0:
        return new ButtCap();
      case 1:
        return new SquareCap();
      case 2:
        return new RoundCap();
      case 3:
        break;
    } 
    return new CustomCap(this.c, this.d.floatValue());
  }
  
  public boolean equals(Object paramObject) {
    if (this != paramObject) {
      if (!(paramObject instanceof Cap))
        return false; 
      paramObject = paramObject;
      if (this.b != ((Cap)paramObject).b || !csg.a(this.c, ((Cap)paramObject).c) || !csg.a(this.d, ((Cap)paramObject).d))
        return false; 
    } 
    return true;
  }
  
  public int hashCode() {
    return csg.a(new Object[] { Integer.valueOf(this.b), this.c, this.d });
  }
  
  public String toString() {
    int i = this.b;
    return (new StringBuilder(23)).append("[Cap: type=").append(i).append("]").toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {
    efl.a(this, paramParcel, paramInt);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\google\android\gms\maps\model\Cap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */