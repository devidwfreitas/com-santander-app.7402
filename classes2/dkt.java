import android.annotation.TargetApi;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.internal.zzatg;
import com.google.android.gms.internal.zzatq;
import com.google.android.gms.internal.zzauq;
import java.util.List;

public class dkt extends dmu {
  private final dku a = new dku(this, n(), z());
  
  private boolean b;
  
  dkt(dlv paramdlv) {
    super(paramdlv);
  }
  
  @TargetApi(11)
  @WorkerThread
  private boolean a(int paramInt, byte[] paramArrayOfbyte) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual c : ()V
    //   4: aload_0
    //   5: invokevirtual e : ()V
    //   8: aload_0
    //   9: getfield b : Z
    //   12: ifeq -> 17
    //   15: iconst_0
    //   16: ireturn
    //   17: new android/content/ContentValues
    //   20: dup
    //   21: invokespecial <init> : ()V
    //   24: astore #12
    //   26: aload #12
    //   28: ldc 'type'
    //   30: iload_1
    //   31: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   34: invokevirtual put : (Ljava/lang/String;Ljava/lang/Integer;)V
    //   37: aload #12
    //   39: ldc 'entry'
    //   41: aload_2
    //   42: invokevirtual put : (Ljava/lang/String;[B)V
    //   45: aload_0
    //   46: invokevirtual w : ()Ldka;
    //   49: invokevirtual ah : ()I
    //   52: pop
    //   53: iconst_0
    //   54: istore_3
    //   55: iconst_5
    //   56: istore_1
    //   57: iload_3
    //   58: iconst_5
    //   59: if_icmpge -> 570
    //   62: aconst_null
    //   63: astore #10
    //   65: aconst_null
    //   66: astore_2
    //   67: aconst_null
    //   68: astore #9
    //   70: aload_0
    //   71: invokevirtual x : ()Landroid/database/sqlite/SQLiteDatabase;
    //   74: astore #11
    //   76: aload #11
    //   78: ifnonnull -> 109
    //   81: aload #11
    //   83: astore #9
    //   85: aload #11
    //   87: astore #10
    //   89: aload #11
    //   91: astore_2
    //   92: aload_0
    //   93: iconst_1
    //   94: putfield b : Z
    //   97: aload #11
    //   99: ifnull -> 107
    //   102: aload #11
    //   104: invokevirtual close : ()V
    //   107: iconst_0
    //   108: ireturn
    //   109: aload #11
    //   111: astore #9
    //   113: aload #11
    //   115: astore #10
    //   117: aload #11
    //   119: astore_2
    //   120: aload #11
    //   122: invokevirtual beginTransaction : ()V
    //   125: lconst_0
    //   126: lstore #7
    //   128: aload #11
    //   130: astore #9
    //   132: aload #11
    //   134: astore #10
    //   136: aload #11
    //   138: astore_2
    //   139: aload #11
    //   141: ldc 'select count(1) from messages'
    //   143: aconst_null
    //   144: invokevirtual rawQuery : (Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   147: astore #13
    //   149: lload #7
    //   151: lstore #5
    //   153: aload #13
    //   155: ifnull -> 204
    //   158: lload #7
    //   160: lstore #5
    //   162: aload #11
    //   164: astore #9
    //   166: aload #11
    //   168: astore #10
    //   170: aload #11
    //   172: astore_2
    //   173: aload #13
    //   175: invokeinterface moveToFirst : ()Z
    //   180: ifeq -> 204
    //   183: aload #11
    //   185: astore #9
    //   187: aload #11
    //   189: astore #10
    //   191: aload #11
    //   193: astore_2
    //   194: aload #13
    //   196: iconst_0
    //   197: invokeinterface getLong : (I)J
    //   202: lstore #5
    //   204: lload #5
    //   206: ldc2_w 100000
    //   209: lcmp
    //   210: iflt -> 330
    //   213: aload #11
    //   215: astore #9
    //   217: aload #11
    //   219: astore #10
    //   221: aload #11
    //   223: astore_2
    //   224: aload_0
    //   225: invokevirtual u : ()Ldkw;
    //   228: invokevirtual x : ()Ldky;
    //   231: ldc 'Data loss, local db full'
    //   233: invokevirtual a : (Ljava/lang/String;)V
    //   236: ldc2_w 100000
    //   239: lload #5
    //   241: lsub
    //   242: lconst_1
    //   243: ladd
    //   244: lstore #5
    //   246: aload #11
    //   248: astore #9
    //   250: aload #11
    //   252: astore #10
    //   254: aload #11
    //   256: astore_2
    //   257: aload #11
    //   259: ldc 'messages'
    //   261: ldc 'rowid in (select rowid from messages order by rowid asc limit ?)'
    //   263: iconst_1
    //   264: anewarray java/lang/String
    //   267: dup
    //   268: iconst_0
    //   269: lload #5
    //   271: invokestatic toString : (J)Ljava/lang/String;
    //   274: aastore
    //   275: invokevirtual delete : (Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   278: i2l
    //   279: lstore #7
    //   281: lload #7
    //   283: lload #5
    //   285: lcmp
    //   286: ifeq -> 330
    //   289: aload #11
    //   291: astore #9
    //   293: aload #11
    //   295: astore #10
    //   297: aload #11
    //   299: astore_2
    //   300: aload_0
    //   301: invokevirtual u : ()Ldkw;
    //   304: invokevirtual x : ()Ldky;
    //   307: ldc 'Different delete count than expected in local db. expected, received, difference'
    //   309: lload #5
    //   311: invokestatic valueOf : (J)Ljava/lang/Long;
    //   314: lload #7
    //   316: invokestatic valueOf : (J)Ljava/lang/Long;
    //   319: lload #5
    //   321: lload #7
    //   323: lsub
    //   324: invokestatic valueOf : (J)Ljava/lang/Long;
    //   327: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   330: aload #11
    //   332: astore #9
    //   334: aload #11
    //   336: astore #10
    //   338: aload #11
    //   340: astore_2
    //   341: aload #11
    //   343: ldc 'messages'
    //   345: aconst_null
    //   346: aload #12
    //   348: invokevirtual insertOrThrow : (Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   351: pop2
    //   352: aload #11
    //   354: astore #9
    //   356: aload #11
    //   358: astore #10
    //   360: aload #11
    //   362: astore_2
    //   363: aload #11
    //   365: invokevirtual setTransactionSuccessful : ()V
    //   368: aload #11
    //   370: astore #9
    //   372: aload #11
    //   374: astore #10
    //   376: aload #11
    //   378: astore_2
    //   379: aload #11
    //   381: invokevirtual endTransaction : ()V
    //   384: aload #11
    //   386: ifnull -> 394
    //   389: aload #11
    //   391: invokevirtual close : ()V
    //   394: iconst_1
    //   395: ireturn
    //   396: astore #10
    //   398: aload #9
    //   400: astore_2
    //   401: aload_0
    //   402: invokevirtual u : ()Ldkw;
    //   405: invokevirtual x : ()Ldky;
    //   408: ldc 'Error writing entry to local database'
    //   410: aload #10
    //   412: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   415: aload #9
    //   417: astore_2
    //   418: aload_0
    //   419: iconst_1
    //   420: putfield b : Z
    //   423: iload_1
    //   424: istore #4
    //   426: aload #9
    //   428: ifnull -> 439
    //   431: aload #9
    //   433: invokevirtual close : ()V
    //   436: iload_1
    //   437: istore #4
    //   439: iload_3
    //   440: iconst_1
    //   441: iadd
    //   442: istore_3
    //   443: iload #4
    //   445: istore_1
    //   446: goto -> 57
    //   449: astore #9
    //   451: aload #10
    //   453: astore_2
    //   454: getstatic android/os/Build$VERSION.SDK_INT : I
    //   457: bipush #11
    //   459: if_icmplt -> 505
    //   462: aload #10
    //   464: astore_2
    //   465: aload #9
    //   467: instanceof android/database/sqlite/SQLiteDatabaseLockedException
    //   470: ifeq -> 505
    //   473: aload #10
    //   475: astore_2
    //   476: iload_1
    //   477: i2l
    //   478: invokestatic sleep : (J)V
    //   481: iload_1
    //   482: bipush #20
    //   484: iadd
    //   485: istore_1
    //   486: iload_1
    //   487: istore #4
    //   489: aload #10
    //   491: ifnull -> 439
    //   494: aload #10
    //   496: invokevirtual close : ()V
    //   499: iload_1
    //   500: istore #4
    //   502: goto -> 439
    //   505: aload #10
    //   507: ifnull -> 529
    //   510: aload #10
    //   512: astore_2
    //   513: aload #10
    //   515: invokevirtual inTransaction : ()Z
    //   518: ifeq -> 529
    //   521: aload #10
    //   523: astore_2
    //   524: aload #10
    //   526: invokevirtual endTransaction : ()V
    //   529: aload #10
    //   531: astore_2
    //   532: aload_0
    //   533: invokevirtual u : ()Ldkw;
    //   536: invokevirtual x : ()Ldky;
    //   539: ldc 'Error writing entry to local database'
    //   541: aload #9
    //   543: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   546: aload #10
    //   548: astore_2
    //   549: aload_0
    //   550: iconst_1
    //   551: putfield b : Z
    //   554: goto -> 486
    //   557: astore #9
    //   559: aload_2
    //   560: ifnull -> 567
    //   563: aload_2
    //   564: invokevirtual close : ()V
    //   567: aload #9
    //   569: athrow
    //   570: aload_0
    //   571: invokevirtual u : ()Ldkw;
    //   574: invokevirtual z : ()Ldky;
    //   577: ldc 'Failed to write entry to local database'
    //   579: invokevirtual a : (Ljava/lang/String;)V
    //   582: iconst_0
    //   583: ireturn
    // Exception table:
    //   from	to	target	type
    //   70	76	396	android/database/sqlite/SQLiteFullException
    //   70	76	449	android/database/sqlite/SQLiteException
    //   70	76	557	finally
    //   92	97	396	android/database/sqlite/SQLiteFullException
    //   92	97	449	android/database/sqlite/SQLiteException
    //   92	97	557	finally
    //   120	125	396	android/database/sqlite/SQLiteFullException
    //   120	125	449	android/database/sqlite/SQLiteException
    //   120	125	557	finally
    //   139	149	396	android/database/sqlite/SQLiteFullException
    //   139	149	449	android/database/sqlite/SQLiteException
    //   139	149	557	finally
    //   173	183	396	android/database/sqlite/SQLiteFullException
    //   173	183	449	android/database/sqlite/SQLiteException
    //   173	183	557	finally
    //   194	204	396	android/database/sqlite/SQLiteFullException
    //   194	204	449	android/database/sqlite/SQLiteException
    //   194	204	557	finally
    //   224	236	396	android/database/sqlite/SQLiteFullException
    //   224	236	449	android/database/sqlite/SQLiteException
    //   224	236	557	finally
    //   257	281	396	android/database/sqlite/SQLiteFullException
    //   257	281	449	android/database/sqlite/SQLiteException
    //   257	281	557	finally
    //   300	330	396	android/database/sqlite/SQLiteFullException
    //   300	330	449	android/database/sqlite/SQLiteException
    //   300	330	557	finally
    //   341	352	396	android/database/sqlite/SQLiteFullException
    //   341	352	449	android/database/sqlite/SQLiteException
    //   341	352	557	finally
    //   363	368	396	android/database/sqlite/SQLiteFullException
    //   363	368	449	android/database/sqlite/SQLiteException
    //   363	368	557	finally
    //   379	384	396	android/database/sqlite/SQLiteFullException
    //   379	384	449	android/database/sqlite/SQLiteException
    //   379	384	557	finally
    //   401	415	557	finally
    //   418	423	557	finally
    //   454	462	557	finally
    //   465	473	557	finally
    //   476	481	557	finally
    //   513	521	557	finally
    //   524	529	557	finally
    //   532	546	557	finally
    //   549	554	557	finally
  }
  
  @TargetApi(11)
  public List<zza> a(int paramInt) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual e : ()V
    //   4: aload_0
    //   5: invokevirtual c : ()V
    //   8: getstatic android/os/Build$VERSION.SDK_INT : I
    //   11: istore_2
    //   12: aload_0
    //   13: getfield b : Z
    //   16: ifeq -> 21
    //   19: aconst_null
    //   20: areturn
    //   21: new java/util/ArrayList
    //   24: dup
    //   25: invokespecial <init> : ()V
    //   28: astore #12
    //   30: aload_0
    //   31: invokevirtual y : ()Z
    //   34: ifne -> 40
    //   37: aload #12
    //   39: areturn
    //   40: iconst_5
    //   41: istore_2
    //   42: iconst_0
    //   43: istore #4
    //   45: iload #4
    //   47: iconst_5
    //   48: if_icmpge -> 756
    //   51: aconst_null
    //   52: astore #11
    //   54: aconst_null
    //   55: astore #7
    //   57: aconst_null
    //   58: astore #10
    //   60: aload_0
    //   61: invokevirtual x : ()Landroid/database/sqlite/SQLiteDatabase;
    //   64: astore #8
    //   66: aload #8
    //   68: ifnonnull -> 88
    //   71: aload_0
    //   72: iconst_1
    //   73: putfield b : Z
    //   76: aload #8
    //   78: ifnull -> 86
    //   81: aload #8
    //   83: invokevirtual close : ()V
    //   86: aconst_null
    //   87: areturn
    //   88: aload #8
    //   90: invokevirtual beginTransaction : ()V
    //   93: iload_1
    //   94: invokestatic toString : (I)Ljava/lang/String;
    //   97: astore #7
    //   99: aload #8
    //   101: ldc 'messages'
    //   103: iconst_3
    //   104: anewarray java/lang/String
    //   107: dup
    //   108: iconst_0
    //   109: ldc 'rowid'
    //   111: aastore
    //   112: dup
    //   113: iconst_1
    //   114: ldc 'type'
    //   116: aastore
    //   117: dup
    //   118: iconst_2
    //   119: ldc 'entry'
    //   121: aastore
    //   122: aconst_null
    //   123: aconst_null
    //   124: aconst_null
    //   125: aconst_null
    //   126: ldc 'rowid asc'
    //   128: aload #7
    //   130: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   133: astore #9
    //   135: ldc2_w -1
    //   138: lstore #5
    //   140: aload #9
    //   142: invokeinterface moveToNext : ()Z
    //   147: ifeq -> 622
    //   150: aload #9
    //   152: iconst_0
    //   153: invokeinterface getLong : (I)J
    //   158: lstore #5
    //   160: aload #9
    //   162: iconst_1
    //   163: invokeinterface getInt : (I)I
    //   168: istore_3
    //   169: aload #9
    //   171: iconst_2
    //   172: invokeinterface getBlob : (I)[B
    //   177: astore #11
    //   179: iload_3
    //   180: ifne -> 324
    //   183: invokestatic obtain : ()Landroid/os/Parcel;
    //   186: astore #7
    //   188: aload #7
    //   190: aload #11
    //   192: iconst_0
    //   193: aload #11
    //   195: arraylength
    //   196: invokevirtual unmarshall : ([BII)V
    //   199: aload #7
    //   201: iconst_0
    //   202: invokevirtual setDataPosition : (I)V
    //   205: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   208: aload #7
    //   210: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   215: checkcast com/google/android/gms/internal/zzatq
    //   218: astore #10
    //   220: aload #7
    //   222: invokevirtual recycle : ()V
    //   225: aload #10
    //   227: ifnull -> 240
    //   230: aload #12
    //   232: aload #10
    //   234: invokeinterface add : (Ljava/lang/Object;)Z
    //   239: pop
    //   240: goto -> 140
    //   243: astore #10
    //   245: aload_0
    //   246: invokevirtual u : ()Ldkw;
    //   249: invokevirtual x : ()Ldky;
    //   252: ldc 'Failed to load event from local database'
    //   254: invokevirtual a : (Ljava/lang/String;)V
    //   257: aload #7
    //   259: invokevirtual recycle : ()V
    //   262: goto -> 140
    //   265: astore #9
    //   267: aload #7
    //   269: invokevirtual recycle : ()V
    //   272: aload #9
    //   274: athrow
    //   275: astore #9
    //   277: aload #8
    //   279: astore #7
    //   281: aload_0
    //   282: invokevirtual u : ()Ldkw;
    //   285: invokevirtual x : ()Ldky;
    //   288: ldc_w 'Error reading entries from local database'
    //   291: aload #9
    //   293: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   296: aload #8
    //   298: astore #7
    //   300: aload_0
    //   301: iconst_1
    //   302: putfield b : Z
    //   305: aload #8
    //   307: ifnull -> 798
    //   310: aload #8
    //   312: invokevirtual close : ()V
    //   315: iload #4
    //   317: iconst_1
    //   318: iadd
    //   319: istore #4
    //   321: goto -> 45
    //   324: iload_3
    //   325: iconst_1
    //   326: if_icmpne -> 505
    //   329: invokestatic obtain : ()Landroid/os/Parcel;
    //   332: astore #10
    //   334: aload #10
    //   336: aload #11
    //   338: iconst_0
    //   339: aload #11
    //   341: arraylength
    //   342: invokevirtual unmarshall : ([BII)V
    //   345: aload #10
    //   347: iconst_0
    //   348: invokevirtual setDataPosition : (I)V
    //   351: getstatic com/google/android/gms/internal/zzauq.CREATOR : Landroid/os/Parcelable$Creator;
    //   354: aload #10
    //   356: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   361: checkcast com/google/android/gms/internal/zzauq
    //   364: astore #7
    //   366: aload #10
    //   368: invokevirtual recycle : ()V
    //   371: aload #7
    //   373: ifnull -> 240
    //   376: aload #12
    //   378: aload #7
    //   380: invokeinterface add : (Ljava/lang/Object;)Z
    //   385: pop
    //   386: goto -> 240
    //   389: astore #9
    //   391: aload #8
    //   393: astore #7
    //   395: getstatic android/os/Build$VERSION.SDK_INT : I
    //   398: bipush #11
    //   400: if_icmplt -> 697
    //   403: aload #8
    //   405: astore #7
    //   407: aload #9
    //   409: instanceof android/database/sqlite/SQLiteDatabaseLockedException
    //   412: ifeq -> 697
    //   415: aload #8
    //   417: astore #7
    //   419: iload_2
    //   420: i2l
    //   421: invokestatic sleep : (J)V
    //   424: iload_2
    //   425: bipush #20
    //   427: iadd
    //   428: istore_3
    //   429: iload_3
    //   430: istore_2
    //   431: aload #8
    //   433: ifnull -> 315
    //   436: aload #8
    //   438: invokevirtual close : ()V
    //   441: iload_3
    //   442: istore_2
    //   443: goto -> 315
    //   446: astore #7
    //   448: aload_0
    //   449: invokevirtual u : ()Ldkw;
    //   452: invokevirtual x : ()Ldky;
    //   455: ldc_w 'Failed to load user property from local database'
    //   458: invokevirtual a : (Ljava/lang/String;)V
    //   461: aload #10
    //   463: invokevirtual recycle : ()V
    //   466: aconst_null
    //   467: astore #7
    //   469: goto -> 371
    //   472: astore #7
    //   474: aload #10
    //   476: invokevirtual recycle : ()V
    //   479: aload #7
    //   481: athrow
    //   482: astore #7
    //   484: aload #8
    //   486: astore #9
    //   488: aload #7
    //   490: astore #8
    //   492: aload #9
    //   494: ifnull -> 502
    //   497: aload #9
    //   499: invokevirtual close : ()V
    //   502: aload #8
    //   504: athrow
    //   505: iload_3
    //   506: iconst_2
    //   507: if_icmpne -> 606
    //   510: invokestatic obtain : ()Landroid/os/Parcel;
    //   513: astore #10
    //   515: aload #10
    //   517: aload #11
    //   519: iconst_0
    //   520: aload #11
    //   522: arraylength
    //   523: invokevirtual unmarshall : ([BII)V
    //   526: aload #10
    //   528: iconst_0
    //   529: invokevirtual setDataPosition : (I)V
    //   532: getstatic com/google/android/gms/internal/zzatg.CREATOR : Landroid/os/Parcelable$Creator;
    //   535: aload #10
    //   537: invokeinterface createFromParcel : (Landroid/os/Parcel;)Ljava/lang/Object;
    //   542: checkcast com/google/android/gms/internal/zzatg
    //   545: astore #7
    //   547: aload #10
    //   549: invokevirtual recycle : ()V
    //   552: aload #7
    //   554: ifnull -> 240
    //   557: aload #12
    //   559: aload #7
    //   561: invokeinterface add : (Ljava/lang/Object;)Z
    //   566: pop
    //   567: goto -> 240
    //   570: astore #7
    //   572: aload_0
    //   573: invokevirtual u : ()Ldkw;
    //   576: invokevirtual x : ()Ldky;
    //   579: ldc_w 'Failed to load user property from local database'
    //   582: invokevirtual a : (Ljava/lang/String;)V
    //   585: aload #10
    //   587: invokevirtual recycle : ()V
    //   590: aconst_null
    //   591: astore #7
    //   593: goto -> 552
    //   596: astore #7
    //   598: aload #10
    //   600: invokevirtual recycle : ()V
    //   603: aload #7
    //   605: athrow
    //   606: aload_0
    //   607: invokevirtual u : ()Ldkw;
    //   610: invokevirtual x : ()Ldky;
    //   613: ldc_w 'Unknown record type in local database'
    //   616: invokevirtual a : (Ljava/lang/String;)V
    //   619: goto -> 240
    //   622: aload #9
    //   624: invokeinterface close : ()V
    //   629: aload #8
    //   631: ldc 'messages'
    //   633: ldc_w 'rowid <= ?'
    //   636: iconst_1
    //   637: anewarray java/lang/String
    //   640: dup
    //   641: iconst_0
    //   642: lload #5
    //   644: invokestatic toString : (J)Ljava/lang/String;
    //   647: aastore
    //   648: invokevirtual delete : (Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   651: aload #12
    //   653: invokeinterface size : ()I
    //   658: if_icmpge -> 674
    //   661: aload_0
    //   662: invokevirtual u : ()Ldkw;
    //   665: invokevirtual x : ()Ldky;
    //   668: ldc_w 'Fewer entries removed from local database than expected'
    //   671: invokevirtual a : (Ljava/lang/String;)V
    //   674: aload #8
    //   676: invokevirtual setTransactionSuccessful : ()V
    //   679: aload #8
    //   681: invokevirtual endTransaction : ()V
    //   684: aload #8
    //   686: ifnull -> 694
    //   689: aload #8
    //   691: invokevirtual close : ()V
    //   694: aload #12
    //   696: areturn
    //   697: aload #8
    //   699: ifnull -> 723
    //   702: aload #8
    //   704: astore #7
    //   706: aload #8
    //   708: invokevirtual inTransaction : ()Z
    //   711: ifeq -> 723
    //   714: aload #8
    //   716: astore #7
    //   718: aload #8
    //   720: invokevirtual endTransaction : ()V
    //   723: aload #8
    //   725: astore #7
    //   727: aload_0
    //   728: invokevirtual u : ()Ldkw;
    //   731: invokevirtual x : ()Ldky;
    //   734: ldc_w 'Error reading entries from local database'
    //   737: aload #9
    //   739: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   742: aload #8
    //   744: astore #7
    //   746: aload_0
    //   747: iconst_1
    //   748: putfield b : Z
    //   751: iload_2
    //   752: istore_3
    //   753: goto -> 429
    //   756: aload_0
    //   757: invokevirtual u : ()Ldkw;
    //   760: invokevirtual z : ()Ldky;
    //   763: ldc_w 'Failed to read events from database in reasonable time'
    //   766: invokevirtual a : (Ljava/lang/String;)V
    //   769: aconst_null
    //   770: areturn
    //   771: astore #8
    //   773: aload #7
    //   775: astore #9
    //   777: goto -> 492
    //   780: astore #9
    //   782: aload #11
    //   784: astore #8
    //   786: goto -> 391
    //   789: astore #9
    //   791: aload #10
    //   793: astore #8
    //   795: goto -> 277
    //   798: goto -> 315
    // Exception table:
    //   from	to	target	type
    //   60	66	789	android/database/sqlite/SQLiteFullException
    //   60	66	780	android/database/sqlite/SQLiteException
    //   60	66	771	finally
    //   71	76	275	android/database/sqlite/SQLiteFullException
    //   71	76	389	android/database/sqlite/SQLiteException
    //   71	76	482	finally
    //   88	135	275	android/database/sqlite/SQLiteFullException
    //   88	135	389	android/database/sqlite/SQLiteException
    //   88	135	482	finally
    //   140	179	275	android/database/sqlite/SQLiteFullException
    //   140	179	389	android/database/sqlite/SQLiteException
    //   140	179	482	finally
    //   183	188	275	android/database/sqlite/SQLiteFullException
    //   183	188	389	android/database/sqlite/SQLiteException
    //   183	188	482	finally
    //   188	220	243	csc
    //   188	220	265	finally
    //   220	225	275	android/database/sqlite/SQLiteFullException
    //   220	225	389	android/database/sqlite/SQLiteException
    //   220	225	482	finally
    //   230	240	275	android/database/sqlite/SQLiteFullException
    //   230	240	389	android/database/sqlite/SQLiteException
    //   230	240	482	finally
    //   245	257	265	finally
    //   257	262	275	android/database/sqlite/SQLiteFullException
    //   257	262	389	android/database/sqlite/SQLiteException
    //   257	262	482	finally
    //   267	275	275	android/database/sqlite/SQLiteFullException
    //   267	275	389	android/database/sqlite/SQLiteException
    //   267	275	482	finally
    //   281	296	771	finally
    //   300	305	771	finally
    //   329	334	275	android/database/sqlite/SQLiteFullException
    //   329	334	389	android/database/sqlite/SQLiteException
    //   329	334	482	finally
    //   334	366	446	csc
    //   334	366	472	finally
    //   366	371	275	android/database/sqlite/SQLiteFullException
    //   366	371	389	android/database/sqlite/SQLiteException
    //   366	371	482	finally
    //   376	386	275	android/database/sqlite/SQLiteFullException
    //   376	386	389	android/database/sqlite/SQLiteException
    //   376	386	482	finally
    //   395	403	771	finally
    //   407	415	771	finally
    //   419	424	771	finally
    //   448	461	472	finally
    //   461	466	275	android/database/sqlite/SQLiteFullException
    //   461	466	389	android/database/sqlite/SQLiteException
    //   461	466	482	finally
    //   474	482	275	android/database/sqlite/SQLiteFullException
    //   474	482	389	android/database/sqlite/SQLiteException
    //   474	482	482	finally
    //   510	515	275	android/database/sqlite/SQLiteFullException
    //   510	515	389	android/database/sqlite/SQLiteException
    //   510	515	482	finally
    //   515	547	570	csc
    //   515	547	596	finally
    //   547	552	275	android/database/sqlite/SQLiteFullException
    //   547	552	389	android/database/sqlite/SQLiteException
    //   547	552	482	finally
    //   557	567	275	android/database/sqlite/SQLiteFullException
    //   557	567	389	android/database/sqlite/SQLiteException
    //   557	567	482	finally
    //   572	585	596	finally
    //   585	590	275	android/database/sqlite/SQLiteFullException
    //   585	590	389	android/database/sqlite/SQLiteException
    //   585	590	482	finally
    //   598	606	275	android/database/sqlite/SQLiteFullException
    //   598	606	389	android/database/sqlite/SQLiteException
    //   598	606	482	finally
    //   606	619	275	android/database/sqlite/SQLiteFullException
    //   606	619	389	android/database/sqlite/SQLiteException
    //   606	619	482	finally
    //   622	674	275	android/database/sqlite/SQLiteFullException
    //   622	674	389	android/database/sqlite/SQLiteException
    //   622	674	482	finally
    //   674	684	275	android/database/sqlite/SQLiteFullException
    //   674	684	389	android/database/sqlite/SQLiteException
    //   674	684	482	finally
    //   706	714	771	finally
    //   718	723	771	finally
    //   727	742	771	finally
    //   746	751	771	finally
  }
  
  protected void a() {}
  
  public boolean a(zzatg paramzzatg) {
    int i = Build.VERSION.SDK_INT;
    byte[] arrayOfByte = q().a((Parcelable)paramzzatg);
    if (arrayOfByte.length > 131072) {
      u().z().a("Conditional user property too long for local database. Sending directly to service");
      return false;
    } 
    return a(2, arrayOfByte);
  }
  
  public boolean a(zzatq paramzzatq) {
    int i = Build.VERSION.SDK_INT;
    Parcel parcel = Parcel.obtain();
    paramzzatq.writeToParcel(parcel, 0);
    byte[] arrayOfByte = parcel.marshall();
    parcel.recycle();
    if (arrayOfByte.length > 131072) {
      u().z().a("Event is too long for local database. Sending event directly to service");
      return false;
    } 
    return a(0, arrayOfByte);
  }
  
  public boolean a(zzauq paramzzauq) {
    int i = Build.VERSION.SDK_INT;
    Parcel parcel = Parcel.obtain();
    paramzzauq.writeToParcel(parcel, 0);
    byte[] arrayOfByte = parcel.marshall();
    parcel.recycle();
    if (arrayOfByte.length > 131072) {
      u().z().a("User property too long for local database. Sending directly to service");
      return false;
    } 
    return a(1, arrayOfByte);
  }
  
  @WorkerThread
  SQLiteDatabase x() {
    int i = Build.VERSION.SDK_INT;
    if (this.b)
      return null; 
    SQLiteDatabase sQLiteDatabase = this.a.getWritableDatabase();
    if (sQLiteDatabase == null) {
      this.b = true;
      return null;
    } 
    return sQLiteDatabase;
  }
  
  boolean y() {
    return n().getDatabasePath(z()).exists();
  }
  
  String z() {
    return w().T();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */