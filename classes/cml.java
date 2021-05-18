import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.util.Log;
import java.util.List;
import java.util.Locale;

public class cml {
  private static final String a = String.format(Locale.US, "CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT, %s INTEGER, %s INTEGER, %s TEXT, %s INTEGER, %s INTEGER,%s INTEGER);", new Object[] { "conversiontracking", "conversion_ping_id", "string_url", "preference_key", "is_repeatable", "parameter_is_null", "preference_name", "record_time", "retry_count", "last_retry_time" });
  
  private final cmm b;
  
  private final Object c = new Object();
  
  public cml(Context paramContext) {
    this.b = new cmm(this, paramContext, "google_conversion_tracking.db");
  }
  
  public SQLiteDatabase a() {
    try {
      return this.b.getWritableDatabase();
    } catch (SQLiteException sQLiteException) {
      Log.w("GoogleConversionReporter", "Error opening writable conversion tracking database");
      return null;
    } 
  }
  
  public cmg a(Cursor paramCursor) {
    boolean bool1;
    boolean bool2 = true;
    if (paramCursor == null)
      return null; 
    int i = paramCursor.getInt(7);
    String str2 = paramCursor.getString(1);
    String str1 = str2;
    if (i > 0)
      str1 = Uri.parse(str2).buildUpon().appendQueryParameter("retry", Integer.toString(i)).build().toString(); 
    long l = paramCursor.getLong(0);
    str2 = paramCursor.getString(2);
    if (paramCursor.getInt(3) > 0) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    if (paramCursor.getInt(4) <= 0)
      bool2 = false; 
    return new cmg(l, str1, str2, bool1, bool2, paramCursor.getString(5), paramCursor.getLong(6), i);
  }
  
  public List<cmg> a(long paramLong) {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Ljava/lang/Object;
    //   4: astore #7
    //   6: aload #7
    //   8: monitorenter
    //   9: new java/util/LinkedList
    //   12: dup
    //   13: invokespecial <init> : ()V
    //   16: astore #8
    //   18: lload_1
    //   19: lconst_0
    //   20: lcmp
    //   21: ifgt -> 30
    //   24: aload #7
    //   26: monitorexit
    //   27: aload #8
    //   29: areturn
    //   30: aload_0
    //   31: invokevirtual a : ()Landroid/database/sqlite/SQLiteDatabase;
    //   34: astore #4
    //   36: aload #4
    //   38: ifnonnull -> 47
    //   41: aload #7
    //   43: monitorexit
    //   44: aload #8
    //   46: areturn
    //   47: aload #4
    //   49: ldc 'conversiontracking'
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: aconst_null
    //   56: ldc 'last_retry_time ASC'
    //   58: lload_1
    //   59: invokestatic valueOf : (J)Ljava/lang/String;
    //   62: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: astore #5
    //   67: aload #5
    //   69: astore #4
    //   71: aload #5
    //   73: invokeinterface moveToFirst : ()Z
    //   78: ifeq -> 115
    //   81: aload #5
    //   83: astore #4
    //   85: aload #8
    //   87: aload_0
    //   88: aload #5
    //   90: invokevirtual a : (Landroid/database/Cursor;)Lcmg;
    //   93: invokeinterface add : (Ljava/lang/Object;)Z
    //   98: pop
    //   99: aload #5
    //   101: astore #4
    //   103: aload #5
    //   105: invokeinterface moveToNext : ()Z
    //   110: istore_3
    //   111: iload_3
    //   112: ifne -> 81
    //   115: aload #5
    //   117: ifnull -> 127
    //   120: aload #5
    //   122: invokeinterface close : ()V
    //   127: aload #7
    //   129: monitorexit
    //   130: aload #8
    //   132: areturn
    //   133: astore #6
    //   135: aconst_null
    //   136: astore #5
    //   138: aload #5
    //   140: astore #4
    //   142: aload #6
    //   144: invokevirtual getMessage : ()Ljava/lang/String;
    //   147: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   150: astore #6
    //   152: aload #5
    //   154: astore #4
    //   156: aload #6
    //   158: invokevirtual length : ()I
    //   161: ifeq -> 212
    //   164: aload #5
    //   166: astore #4
    //   168: ldc 'Error extracing ping Info: '
    //   170: aload #6
    //   172: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   175: astore #6
    //   177: aload #5
    //   179: astore #4
    //   181: ldc 'GoogleConversionReporter'
    //   183: aload #6
    //   185: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   188: pop
    //   189: aload #5
    //   191: ifnull -> 127
    //   194: aload #5
    //   196: invokeinterface close : ()V
    //   201: goto -> 127
    //   204: astore #4
    //   206: aload #7
    //   208: monitorexit
    //   209: aload #4
    //   211: athrow
    //   212: aload #5
    //   214: astore #4
    //   216: new java/lang/String
    //   219: dup
    //   220: ldc 'Error extracing ping Info: '
    //   222: invokespecial <init> : (Ljava/lang/String;)V
    //   225: astore #6
    //   227: goto -> 177
    //   230: astore #6
    //   232: aload #4
    //   234: astore #5
    //   236: aload #6
    //   238: astore #4
    //   240: aload #5
    //   242: ifnull -> 252
    //   245: aload #5
    //   247: invokeinterface close : ()V
    //   252: aload #4
    //   254: athrow
    //   255: astore #4
    //   257: aconst_null
    //   258: astore #5
    //   260: goto -> 240
    //   263: astore #6
    //   265: goto -> 138
    // Exception table:
    //   from	to	target	type
    //   9	18	204	finally
    //   24	27	204	finally
    //   30	36	204	finally
    //   41	44	204	finally
    //   47	67	133	android/database/sqlite/SQLiteException
    //   47	67	255	finally
    //   71	81	263	android/database/sqlite/SQLiteException
    //   71	81	230	finally
    //   85	99	263	android/database/sqlite/SQLiteException
    //   85	99	230	finally
    //   103	111	263	android/database/sqlite/SQLiteException
    //   103	111	230	finally
    //   120	127	204	finally
    //   127	130	204	finally
    //   142	152	230	finally
    //   156	164	230	finally
    //   168	177	230	finally
    //   181	189	230	finally
    //   194	201	204	finally
    //   206	209	204	finally
    //   216	227	230	finally
    //   245	252	204	finally
    //   252	255	204	finally
  }
  
  public void a(cmg paramcmg) {
    SQLiteDatabase sQLiteDatabase;
    if (paramcmg == null)
      return; 
    synchronized (this.c) {
      sQLiteDatabase = a();
      if (sQLiteDatabase == null)
        return; 
    } 
    sQLiteDatabase.delete("conversiontracking", String.format(Locale.US, "%s = %d", new Object[] { "conversion_ping_id", Long.valueOf(paramcmg.h) }), null);
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
  
  public void b() {
    synchronized (this.c) {
      SQLiteDatabase sQLiteDatabase = a();
      if (sQLiteDatabase == null)
        return; 
      sQLiteDatabase.delete("conversiontracking", String.format(Locale.US, "(%s > %d) or (%s < %d and %s > 0)", new Object[] { "retry_count", Long.valueOf(9000L), "record_time", Long.valueOf(cmn.a() - 43200000L), "retry_count" }), null);
      return;
    } 
  }
  
  public void b(cmg paramcmg) {
    boolean bool1;
    SQLiteDatabase sQLiteDatabase;
    boolean bool2 = true;
    if (paramcmg == null)
      return; 
    synchronized (this.c) {
      sQLiteDatabase = a();
      if (sQLiteDatabase == null)
        return; 
    } 
    ContentValues contentValues = new ContentValues();
    contentValues.put("string_url", paramcmg.g);
    contentValues.put("preference_key", paramcmg.f);
    if (paramcmg.b) {
      bool1 = true;
    } else {
      bool1 = false;
    } 
    contentValues.put("is_repeatable", Integer.valueOf(bool1));
    if (paramcmg.a) {
      bool1 = bool2;
    } else {
      bool1 = false;
    } 
    contentValues.put("parameter_is_null", Integer.valueOf(bool1));
    contentValues.put("preference_name", paramcmg.e);
    contentValues.put("record_time", Long.valueOf(paramcmg.d));
    contentValues.put("retry_count", Integer.valueOf(0));
    contentValues.put("last_retry_time", Long.valueOf(paramcmg.d));
    paramcmg.h = sQLiteDatabase.insert("conversiontracking", null, contentValues);
    b();
    if (c() > 20000L)
      d(); 
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_4} */
  }
  
  public int c() {
    Cursor cursor = null;
    null = null;
    synchronized (this.c) {
      SQLiteDatabase sQLiteDatabase = a();
      if (sQLiteDatabase == null)
        return 0; 
      try {
        Cursor cursor1 = sQLiteDatabase.rawQuery("select count(*) from conversiontracking", null);
        null = cursor1;
        cursor = cursor1;
        if (cursor1.moveToFirst()) {
          null = cursor1;
          cursor = cursor1;
          int i = cursor1.getInt(0);
          if (cursor1 != null)
            cursor1.close(); 
          return i;
        } 
        if (cursor1 != null)
          cursor1.close(); 
        return 0;
      } catch (SQLiteException sQLiteException) {
        cursor = null;
        String str = String.valueOf(sQLiteException.getMessage());
        cursor = null;
        if (str.length() != 0) {
          cursor = null;
          str = "Error getting record count".concat(str);
        } else {
          cursor = null;
          str = new String("Error getting record count");
        } 
        cursor = null;
        Log.w("GoogleConversionReporter", str);
        if (null != null)
          null.close(); 
        return 0;
      } finally {}
    } 
    if (cursor != null)
      cursor.close(); 
    throw SYNTHETIC_LOCAL_VARIABLE_2;
  }
  
  public void c(cmg paramcmg) {
    SQLiteDatabase sQLiteDatabase;
    if (paramcmg == null)
      return; 
    synchronized (this.c) {
      sQLiteDatabase = a();
      if (sQLiteDatabase == null)
        return; 
    } 
    ContentValues contentValues = new ContentValues();
    contentValues.put("last_retry_time", Long.valueOf(cmn.a()));
    contentValues.put("retry_count", Integer.valueOf(paramcmg.c + 1));
    sQLiteDatabase.update("conversiontracking", contentValues, String.format(Locale.US, "%s = %d", new Object[] { "conversion_ping_id", Long.valueOf(paramcmg.h) }), null);
    b();
    /* monitor exit ClassFileLocalVariableReferenceExpression{type=ObjectType{java/lang/Object}, name=SYNTHETIC_LOCAL_VARIABLE_2} */
  }
  
  public void d() {
    // Byte code:
    //   0: aload_0
    //   1: getfield c : Ljava/lang/Object;
    //   4: astore #4
    //   6: aload #4
    //   8: monitorenter
    //   9: aload_0
    //   10: invokevirtual a : ()Landroid/database/sqlite/SQLiteDatabase;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnonnull -> 22
    //   18: aload #4
    //   20: monitorexit
    //   21: return
    //   22: aload_1
    //   23: ldc 'conversiontracking'
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: aconst_null
    //   30: ldc_w 'record_time ASC'
    //   33: ldc_w '1'
    //   36: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore_2
    //   40: aload_2
    //   41: ifnull -> 66
    //   44: aload_2
    //   45: astore_1
    //   46: aload_2
    //   47: invokeinterface moveToFirst : ()Z
    //   52: ifeq -> 66
    //   55: aload_2
    //   56: astore_1
    //   57: aload_0
    //   58: aload_0
    //   59: aload_2
    //   60: invokevirtual a : (Landroid/database/Cursor;)Lcmg;
    //   63: invokevirtual a : (Lcmg;)V
    //   66: aload_2
    //   67: ifnull -> 76
    //   70: aload_2
    //   71: invokeinterface close : ()V
    //   76: aload #4
    //   78: monitorexit
    //   79: return
    //   80: astore_1
    //   81: aload #4
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    //   86: astore_3
    //   87: aconst_null
    //   88: astore_2
    //   89: aload_2
    //   90: astore_1
    //   91: aload_3
    //   92: invokevirtual getMessage : ()Ljava/lang/String;
    //   95: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   98: astore_3
    //   99: aload_2
    //   100: astore_1
    //   101: aload_3
    //   102: invokevirtual length : ()I
    //   105: ifeq -> 140
    //   108: aload_2
    //   109: astore_1
    //   110: ldc_w 'Error remove oldest record'
    //   113: aload_3
    //   114: invokevirtual concat : (Ljava/lang/String;)Ljava/lang/String;
    //   117: astore_3
    //   118: aload_2
    //   119: astore_1
    //   120: ldc 'GoogleConversionReporter'
    //   122: aload_3
    //   123: invokestatic w : (Ljava/lang/String;Ljava/lang/String;)I
    //   126: pop
    //   127: aload_2
    //   128: ifnull -> 76
    //   131: aload_2
    //   132: invokeinterface close : ()V
    //   137: goto -> 76
    //   140: aload_2
    //   141: astore_1
    //   142: new java/lang/String
    //   145: dup
    //   146: ldc_w 'Error remove oldest record'
    //   149: invokespecial <init> : (Ljava/lang/String;)V
    //   152: astore_3
    //   153: goto -> 118
    //   156: astore_3
    //   157: aload_1
    //   158: astore_2
    //   159: aload_3
    //   160: astore_1
    //   161: aload_2
    //   162: ifnull -> 171
    //   165: aload_2
    //   166: invokeinterface close : ()V
    //   171: aload_1
    //   172: athrow
    //   173: astore_1
    //   174: aconst_null
    //   175: astore_2
    //   176: goto -> 161
    //   179: astore_3
    //   180: goto -> 89
    // Exception table:
    //   from	to	target	type
    //   9	14	80	finally
    //   18	21	80	finally
    //   22	40	86	android/database/sqlite/SQLiteException
    //   22	40	173	finally
    //   46	55	179	android/database/sqlite/SQLiteException
    //   46	55	156	finally
    //   57	66	179	android/database/sqlite/SQLiteException
    //   57	66	156	finally
    //   70	76	80	finally
    //   76	79	80	finally
    //   81	84	80	finally
    //   91	99	156	finally
    //   101	108	156	finally
    //   110	118	156	finally
    //   120	127	156	finally
    //   131	137	80	finally
    //   142	153	156	finally
    //   165	171	80	finally
    //   171	173	80	finally
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cml.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */