import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzan;

public abstract class cus extends Binder implements cur {
  public static cur a(IBinder paramIBinder) {
    if (paramIBinder == null)
      return null; 
    IInterface iInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
    return (iInterface != null && iInterface instanceof cur) ? (cur)iInterface : new cut(paramIBinder);
  }
  
  protected void a(int paramInt1, cuo paramcuo, int paramInt2, String paramString1, String paramString2, String[] paramArrayOfString, Bundle paramBundle, IBinder paramIBinder, String paramString3, String paramString4) {
    throw new UnsupportedOperationException();
  }
  
  protected void a(cuo paramcuo, zzan paramzzan) {
    throw new UnsupportedOperationException();
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2) {
    // Byte code:
    //   0: iload_1
    //   1: ldc 16777215
    //   3: if_icmple -> 16
    //   6: aload_0
    //   7: iload_1
    //   8: aload_2
    //   9: aload_3
    //   10: iload #4
    //   12: invokespecial onTransact : (ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    //   15: ireturn
    //   16: aload_2
    //   17: ldc 'com.google.android.gms.common.internal.IGmsServiceBroker'
    //   19: invokevirtual enforceInterface : (Ljava/lang/String;)V
    //   22: aload_2
    //   23: invokevirtual readStrongBinder : ()Landroid/os/IBinder;
    //   26: invokestatic a : (Landroid/os/IBinder;)Lcuo;
    //   29: astore #11
    //   31: iload_1
    //   32: bipush #46
    //   34: if_icmpne -> 70
    //   37: aload_2
    //   38: invokevirtual readInt : ()I
    //   41: ifeq -> 684
    //   44: getstatic com/google/android/gms/common/internal/zzj.CREATOR : Landroid/os/Parcelable$Creator;
    //   47: aload_2
    //   48: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   53: checkcast com/google/android/gms/common/internal/zzj
    //   56: astore_2
    //   57: aload_0
    //   58: aload #11
    //   60: aload_2
    //   61: invokevirtual a : (Lcuo;Lcom/google/android/gms/common/internal/zzj;)V
    //   64: aload_3
    //   65: invokevirtual writeNoException : ()V
    //   68: iconst_1
    //   69: ireturn
    //   70: iload_1
    //   71: bipush #47
    //   73: if_icmpne -> 106
    //   76: aload_2
    //   77: invokevirtual readInt : ()I
    //   80: ifeq -> 679
    //   83: getstatic com/google/android/gms/common/internal/zzan.CREATOR : Landroid/os/Parcelable$Creator;
    //   86: aload_2
    //   87: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   92: checkcast com/google/android/gms/common/internal/zzan
    //   95: astore_2
    //   96: aload_0
    //   97: aload #11
    //   99: aload_2
    //   100: invokevirtual a : (Lcuo;Lcom/google/android/gms/common/internal/zzan;)V
    //   103: goto -> 64
    //   106: aload_2
    //   107: invokevirtual readInt : ()I
    //   110: istore #4
    //   112: iload_1
    //   113: iconst_4
    //   114: if_icmpeq -> 673
    //   117: aload_2
    //   118: invokevirtual readString : ()Ljava/lang/String;
    //   121: astore #10
    //   123: iload_1
    //   124: tableswitch default -> 312, 1 -> 395, 2 -> 588, 3 -> 312, 4 -> 312, 5 -> 588, 6 -> 588, 7 -> 588, 8 -> 588, 9 -> 442, 10 -> 539, 11 -> 588, 12 -> 588, 13 -> 588, 14 -> 588, 15 -> 588, 16 -> 588, 17 -> 588, 18 -> 588, 19 -> 354, 20 -> 495, 21 -> 312, 22 -> 312, 23 -> 588, 24 -> 312, 25 -> 588, 26 -> 312, 27 -> 588, 28 -> 312, 29 -> 312, 30 -> 495, 31 -> 312, 32 -> 312, 33 -> 312, 34 -> 565, 35 -> 312, 36 -> 312, 37 -> 588, 38 -> 588, 39 -> 312, 40 -> 312, 41 -> 588, 42 -> 312, 43 -> 588
    //   312: aconst_null
    //   313: astore #5
    //   315: aconst_null
    //   316: astore #7
    //   318: aconst_null
    //   319: astore #6
    //   321: aconst_null
    //   322: astore_2
    //   323: aconst_null
    //   324: astore #9
    //   326: aconst_null
    //   327: astore #8
    //   329: aload_0
    //   330: iload_1
    //   331: aload #11
    //   333: iload #4
    //   335: aload #10
    //   337: aload #8
    //   339: aload #9
    //   341: aload_2
    //   342: aload #6
    //   344: aload #7
    //   346: aload #5
    //   348: invokevirtual a : (ILcuo;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V
    //   351: goto -> 64
    //   354: aload_2
    //   355: invokevirtual readStrongBinder : ()Landroid/os/IBinder;
    //   358: astore #6
    //   360: aload_2
    //   361: invokevirtual readInt : ()I
    //   364: ifeq -> 656
    //   367: getstatic android/os/Bundle.CREATOR : Landroid/os/Parcelable$Creator;
    //   370: aload_2
    //   371: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   376: checkcast android/os/Bundle
    //   379: astore_2
    //   380: aconst_null
    //   381: astore #5
    //   383: aconst_null
    //   384: astore #7
    //   386: aconst_null
    //   387: astore #9
    //   389: aconst_null
    //   390: astore #8
    //   392: goto -> 329
    //   395: aload_2
    //   396: invokevirtual readString : ()Ljava/lang/String;
    //   399: astore #7
    //   401: aload_2
    //   402: invokevirtual createStringArray : ()[Ljava/lang/String;
    //   405: astore #9
    //   407: aload_2
    //   408: invokevirtual readString : ()Ljava/lang/String;
    //   411: astore #8
    //   413: aload_2
    //   414: invokevirtual readInt : ()I
    //   417: ifeq -> 645
    //   420: getstatic android/os/Bundle.CREATOR : Landroid/os/Parcelable$Creator;
    //   423: aload_2
    //   424: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   429: checkcast android/os/Bundle
    //   432: astore_2
    //   433: aconst_null
    //   434: astore #5
    //   436: aconst_null
    //   437: astore #6
    //   439: goto -> 329
    //   442: aload_2
    //   443: invokevirtual readString : ()Ljava/lang/String;
    //   446: astore #8
    //   448: aload_2
    //   449: invokevirtual createStringArray : ()[Ljava/lang/String;
    //   452: astore #9
    //   454: aload_2
    //   455: invokevirtual readString : ()Ljava/lang/String;
    //   458: astore #7
    //   460: aload_2
    //   461: invokevirtual readStrongBinder : ()Landroid/os/IBinder;
    //   464: astore #6
    //   466: aload_2
    //   467: invokevirtual readString : ()Ljava/lang/String;
    //   470: astore #5
    //   472: aload_2
    //   473: invokevirtual readInt : ()I
    //   476: ifeq -> 640
    //   479: getstatic android/os/Bundle.CREATOR : Landroid/os/Parcelable$Creator;
    //   482: aload_2
    //   483: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   488: checkcast android/os/Bundle
    //   491: astore_2
    //   492: goto -> 329
    //   495: aload_2
    //   496: invokevirtual createStringArray : ()[Ljava/lang/String;
    //   499: astore #9
    //   501: aload_2
    //   502: invokevirtual readString : ()Ljava/lang/String;
    //   505: astore #8
    //   507: aload_2
    //   508: invokevirtual readInt : ()I
    //   511: ifeq -> 626
    //   514: getstatic android/os/Bundle.CREATOR : Landroid/os/Parcelable$Creator;
    //   517: aload_2
    //   518: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   523: checkcast android/os/Bundle
    //   526: astore_2
    //   527: aconst_null
    //   528: astore #5
    //   530: aconst_null
    //   531: astore #7
    //   533: aconst_null
    //   534: astore #6
    //   536: goto -> 329
    //   539: aload_2
    //   540: invokevirtual readString : ()Ljava/lang/String;
    //   543: astore #8
    //   545: aload_2
    //   546: invokevirtual createStringArray : ()[Ljava/lang/String;
    //   549: astore #9
    //   551: aconst_null
    //   552: astore #5
    //   554: aconst_null
    //   555: astore #7
    //   557: aconst_null
    //   558: astore #6
    //   560: aconst_null
    //   561: astore_2
    //   562: goto -> 329
    //   565: aload_2
    //   566: invokevirtual readString : ()Ljava/lang/String;
    //   569: astore #8
    //   571: aconst_null
    //   572: astore #5
    //   574: aconst_null
    //   575: astore #7
    //   577: aconst_null
    //   578: astore #6
    //   580: aconst_null
    //   581: astore_2
    //   582: aconst_null
    //   583: astore #9
    //   585: goto -> 329
    //   588: aload_2
    //   589: invokevirtual readInt : ()I
    //   592: ifeq -> 312
    //   595: getstatic android/os/Bundle.CREATOR : Landroid/os/Parcelable$Creator;
    //   598: aload_2
    //   599: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   604: checkcast android/os/Bundle
    //   607: astore_2
    //   608: aconst_null
    //   609: astore #5
    //   611: aconst_null
    //   612: astore #7
    //   614: aconst_null
    //   615: astore #6
    //   617: aconst_null
    //   618: astore #9
    //   620: aconst_null
    //   621: astore #8
    //   623: goto -> 329
    //   626: aconst_null
    //   627: astore #5
    //   629: aconst_null
    //   630: astore #7
    //   632: aconst_null
    //   633: astore #6
    //   635: aconst_null
    //   636: astore_2
    //   637: goto -> 329
    //   640: aconst_null
    //   641: astore_2
    //   642: goto -> 329
    //   645: aconst_null
    //   646: astore #5
    //   648: aconst_null
    //   649: astore #6
    //   651: aconst_null
    //   652: astore_2
    //   653: goto -> 329
    //   656: aconst_null
    //   657: astore #5
    //   659: aconst_null
    //   660: astore #7
    //   662: aconst_null
    //   663: astore_2
    //   664: aconst_null
    //   665: astore #9
    //   667: aconst_null
    //   668: astore #8
    //   670: goto -> 329
    //   673: aconst_null
    //   674: astore #10
    //   676: goto -> 123
    //   679: aconst_null
    //   680: astore_2
    //   681: goto -> 96
    //   684: aconst_null
    //   685: astore_2
    //   686: goto -> 57
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\cus.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */