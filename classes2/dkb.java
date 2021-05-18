import android.annotation.TargetApi;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Parcelable;
import android.support.annotation.WorkerThread;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.zzatg;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

class dkb extends dmu {
  private static final Map<String, String> a = (Map<String, String>)new ArrayMap(1);
  
  private static final Map<String, String> b = (Map<String, String>)new ArrayMap(18);
  
  private static final Map<String, String> c = (Map<String, String>)new ArrayMap(1);
  
  private static final Map<String, String> d = (Map<String, String>)new ArrayMap(1);
  
  private static final Map<String, String> e = (Map<String, String>)new ArrayMap(1);
  
  private final dke f;
  
  private final dop g = new dop(m());
  
  static {
    e.put("previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;");
  }
  
  dkb(dlv paramdlv) {
    super(paramdlv);
    String str = B();
    this.f = new dke(this, n(), str);
  }
  
  private boolean T() {
    return n().getDatabasePath(B()).exists();
  }
  
  @TargetApi(11)
  @WorkerThread
  static int a(Cursor paramCursor, int paramInt) {
    int i = Build.VERSION.SDK_INT;
    return paramCursor.getType(paramInt);
  }
  
  @WorkerThread
  private long a(String paramString, String[] paramArrayOfString, long paramLong) {
    SQLiteDatabase sQLiteDatabase = A();
    Cursor cursor2 = null;
    Cursor cursor1 = null;
    try {
      Cursor cursor = sQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      cursor1 = cursor;
      cursor2 = cursor;
      if (cursor.moveToFirst()) {
        cursor1 = cursor;
        cursor2 = cursor;
        paramLong = cursor.getLong(0);
        long l = paramLong;
        return l;
      } 
      return paramLong;
    } catch (SQLiteException sQLiteException) {
      cursor2 = cursor1;
      u().x().a("Database error", paramString, sQLiteException);
      cursor2 = cursor1;
      throw sQLiteException;
    } finally {
      if (cursor2 != null)
        cursor2.close(); 
    } 
  }
  
  @WorkerThread
  static Set<String> a(SQLiteDatabase paramSQLiteDatabase, String paramString) {
    HashSet<? super String> hashSet = new HashSet();
    Cursor cursor = paramSQLiteDatabase.rawQuery((new StringBuilder(String.valueOf(paramString).length() + 22)).append("SELECT * FROM ").append(paramString).append(" LIMIT 0").toString(), null);
    try {
      Collections.addAll(hashSet, cursor.getColumnNames());
      return (Set)hashSet;
    } finally {
      cursor.close();
    } 
  }
  
  static void a(dkw paramdkw, SQLiteDatabase paramSQLiteDatabase) {
    if (paramdkw == null)
      throw new IllegalArgumentException("Monitor must not be null"); 
    int i = Build.VERSION.SDK_INT;
    File file = new File(paramSQLiteDatabase.getPath());
    if (!file.setReadable(false, false))
      paramdkw.z().a("Failed to turn off database read permission"); 
    if (!file.setWritable(false, false))
      paramdkw.z().a("Failed to turn off database write permission"); 
    if (!file.setReadable(true, true))
      paramdkw.z().a("Failed to turn on database read permission for owner"); 
    if (!file.setWritable(true, true))
      paramdkw.z().a("Failed to turn on database write permission for owner"); 
  }
  
  @WorkerThread
  static void a(dkw paramdkw, SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, String paramString3, Map<String, String> paramMap) {
    if (paramdkw == null)
      throw new IllegalArgumentException("Monitor must not be null"); 
    if (!a(paramdkw, paramSQLiteDatabase, paramString1))
      paramSQLiteDatabase.execSQL(paramString2); 
    try {
      a(paramdkw, paramSQLiteDatabase, paramString1, paramString3, paramMap);
      return;
    } catch (SQLiteException sQLiteException) {
      paramdkw.x().a("Failed to verify columns on table that was just created", paramString1);
      throw sQLiteException;
    } 
  }
  
  @WorkerThread
  static void a(dkw paramdkw, SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2, Map<String, String> paramMap) {
    if (paramdkw == null)
      throw new IllegalArgumentException("Monitor must not be null"); 
    Set<String> set = a(paramSQLiteDatabase, paramString1);
    for (String str : paramString2.split(",")) {
      if (!set.remove(str))
        throw new SQLiteException((new StringBuilder(String.valueOf(paramString1).length() + 35 + String.valueOf(str).length())).append("Table ").append(paramString1).append(" is missing required column: ").append(str).toString()); 
    } 
    if (paramMap != null)
      for (Map.Entry<String, String> entry : paramMap.entrySet()) {
        if (!set.remove(entry.getKey()))
          paramSQLiteDatabase.execSQL((String)entry.getValue()); 
      }  
    if (!set.isEmpty())
      paramdkw.z().a("Table has extra columns. table, columns", paramString1, TextUtils.join(", ", set)); 
  }
  
  @WorkerThread
  private void a(String paramString, dow paramdow) {
    boolean bool = false;
    R();
    e();
    csp.a(paramString);
    csp.a(paramdow);
    csp.a(paramdow.c);
    csp.a(paramdow.b);
    if (paramdow.a == null) {
      u().z().a("Audience with no ID. appId", dkw.a(paramString));
      return;
    } 
    int m = paramdow.a.intValue();
    dox[] arrayOfDox2 = paramdow.c;
    int j = arrayOfDox2.length;
    int i;
    for (i = 0; i < j; i++) {
      if ((arrayOfDox2[i]).a == null) {
        u().z().a("Event filter with no ID. Audience definition ignored. appId, audienceId", dkw.a(paramString), paramdow.a);
        return;
      } 
    } 
    dpa[] arrayOfDpa = paramdow.b;
    j = arrayOfDpa.length;
    for (i = 0; i < j; i++) {
      if ((arrayOfDpa[i]).a == null) {
        u().z().a("Property filter with no ID. Audience definition ignored. appId, audienceId", dkw.a(paramString), paramdow.a);
        return;
      } 
    } 
    int k = 1;
    dox[] arrayOfDox1 = paramdow.c;
    int n = arrayOfDox1.length;
    j = 0;
    while (true) {
      i = k;
      if (j < n)
        if (!a(paramString, m, arrayOfDox1[j])) {
          i = 0;
        } else {
          j++;
          continue;
        }  
      if (i != 0) {
        dpa[] arrayOfDpa1 = paramdow.b;
        k = arrayOfDpa1.length;
        j = 0;
        while (true) {
          if (j < k)
            if (!a(paramString, m, arrayOfDpa1[j])) {
              i = bool;
            } else {
              j++;
              continue;
            }  
          if (i == 0) {
            b(paramString, m);
            return;
          } 
          return;
        } 
        break;
      } 
      continue;
    } 
  }
  
  @WorkerThread
  static boolean a(dkw paramdkw, SQLiteDatabase paramSQLiteDatabase, String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aload_0
    //   4: ifnonnull -> 18
    //   7: new java/lang/IllegalArgumentException
    //   10: dup
    //   11: ldc_w 'Monitor must not be null'
    //   14: invokespecial <init> : (Ljava/lang/String;)V
    //   17: athrow
    //   18: aload_1
    //   19: ldc_w 'SQLITE_MASTER'
    //   22: iconst_1
    //   23: anewarray java/lang/String
    //   26: dup
    //   27: iconst_0
    //   28: ldc_w 'name'
    //   31: aastore
    //   32: ldc_w 'name=?'
    //   35: iconst_1
    //   36: anewarray java/lang/String
    //   39: dup
    //   40: iconst_0
    //   41: aload_2
    //   42: aastore
    //   43: aconst_null
    //   44: aconst_null
    //   45: aconst_null
    //   46: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   49: astore_1
    //   50: aload_1
    //   51: astore #4
    //   53: aload #4
    //   55: astore_1
    //   56: aload #4
    //   58: invokeinterface moveToFirst : ()Z
    //   63: istore_3
    //   64: aload #4
    //   66: ifnull -> 76
    //   69: aload #4
    //   71: invokeinterface close : ()V
    //   76: iload_3
    //   77: ireturn
    //   78: astore #5
    //   80: aconst_null
    //   81: astore #4
    //   83: aload #4
    //   85: astore_1
    //   86: aload_0
    //   87: invokevirtual z : ()Ldky;
    //   90: ldc_w 'Error querying for table'
    //   93: aload_2
    //   94: aload #5
    //   96: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   99: aload #4
    //   101: ifnull -> 111
    //   104: aload #4
    //   106: invokeinterface close : ()V
    //   111: iconst_0
    //   112: ireturn
    //   113: astore_0
    //   114: aload #4
    //   116: astore_1
    //   117: aload_1
    //   118: ifnull -> 127
    //   121: aload_1
    //   122: invokeinterface close : ()V
    //   127: aload_0
    //   128: athrow
    //   129: astore_0
    //   130: goto -> 117
    //   133: astore #5
    //   135: goto -> 83
    // Exception table:
    //   from	to	target	type
    //   18	50	78	android/database/sqlite/SQLiteException
    //   18	50	113	finally
    //   56	64	133	android/database/sqlite/SQLiteException
    //   56	64	129	finally
    //   86	99	129	finally
  }
  
  @WorkerThread
  private boolean a(String paramString, int paramInt, dox paramdox) {
    R();
    e();
    csp.a(paramString);
    csp.a(paramdox);
    if (TextUtils.isEmpty(paramdox.b)) {
      u().z().a("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", dkw.a(paramString), Integer.valueOf(paramInt), String.valueOf(paramdox.a));
      return false;
    } 
    try {
      byte[] arrayOfByte = new byte[paramdox.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdox.a(dqw);
      dqw.b();
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramString);
      contentValues.put("audience_id", Integer.valueOf(paramInt));
      contentValues.put("filter_id", paramdox.a);
      contentValues.put("event_name", paramdox.b);
      contentValues.put("data", arrayOfByte);
      try {
        if (A().insertWithOnConflict("event_filters", null, contentValues, 5) == -1L)
          u().x().a("Failed to insert event filter (got -1). appId", dkw.a(paramString)); 
        return true;
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing event filter. appId", dkw.a(paramString), sQLiteException);
        return false;
      } 
    } catch (IOException iOException) {
      u().x().a("Configuration loss. Failed to serialize event filter. appId", dkw.a(paramString), iOException);
      return false;
    } 
  }
  
  @WorkerThread
  private boolean a(String paramString, int paramInt, dpa paramdpa) {
    R();
    e();
    csp.a(paramString);
    csp.a(paramdpa);
    if (TextUtils.isEmpty(paramdpa.b)) {
      u().z().a("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", dkw.a(paramString), Integer.valueOf(paramInt), String.valueOf(paramdpa.a));
      return false;
    } 
    try {
      byte[] arrayOfByte = new byte[paramdpa.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdpa.a(dqw);
      dqw.b();
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramString);
      contentValues.put("audience_id", Integer.valueOf(paramInt));
      contentValues.put("filter_id", paramdpa.a);
      contentValues.put("property_name", paramdpa.b);
      contentValues.put("data", arrayOfByte);
      try {
        if (A().insertWithOnConflict("property_filters", null, contentValues, 5) == -1L) {
          u().x().a("Failed to insert property filter (got -1). appId", dkw.a(paramString));
          return false;
        } 
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing property filter. appId", dkw.a(paramString), sQLiteException);
        return false;
      } 
    } catch (IOException iOException) {
      u().x().a("Configuration loss. Failed to serialize property filter. appId", dkw.a(paramString), iOException);
      return false;
    } 
    return true;
  }
  
  @WorkerThread
  private long b(String paramString, String[] paramArrayOfString) {
    SQLiteDatabase sQLiteDatabase = A();
    Cursor cursor2 = null;
    Cursor cursor1 = null;
    try {
      Cursor cursor = sQLiteDatabase.rawQuery(paramString, paramArrayOfString);
      cursor1 = cursor;
      cursor2 = cursor;
      if (cursor.moveToFirst()) {
        cursor1 = cursor;
        cursor2 = cursor;
        return cursor.getLong(0);
      } 
      cursor1 = cursor;
      cursor2 = cursor;
      throw new SQLiteException("Database returned empty set");
    } catch (SQLiteException sQLiteException) {
      cursor2 = cursor1;
      u().x().a("Database error", paramString, sQLiteException);
      cursor2 = cursor1;
      throw sQLiteException;
    } finally {
      if (cursor2 != null)
        cursor2.close(); 
    } 
  }
  
  @WorkerThread
  SQLiteDatabase A() {
    e();
    try {
      return this.f.getWritableDatabase();
    } catch (SQLiteException sQLiteException) {
      u().z().a("Error opening database", sQLiteException);
      throw sQLiteException;
    } 
  }
  
  String B() {
    return w().S();
  }
  
  @WorkerThread
  public String C() {
    // Byte code:
    //   0: aconst_null
    //   1: astore #4
    //   3: aload_0
    //   4: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   7: astore_1
    //   8: aload_1
    //   9: ldc_w 'select app_id from queue order by has_realtime desc, rowid asc limit 1;'
    //   12: aconst_null
    //   13: invokevirtual rawQuery : (Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   16: astore_1
    //   17: aload_1
    //   18: astore_2
    //   19: aload_1
    //   20: invokeinterface moveToFirst : ()Z
    //   25: ifeq -> 54
    //   28: aload_1
    //   29: astore_2
    //   30: aload_1
    //   31: iconst_0
    //   32: invokeinterface getString : (I)Ljava/lang/String;
    //   37: astore_3
    //   38: aload_3
    //   39: astore_2
    //   40: aload_1
    //   41: ifnull -> 52
    //   44: aload_1
    //   45: invokeinterface close : ()V
    //   50: aload_3
    //   51: astore_2
    //   52: aload_2
    //   53: areturn
    //   54: aload #4
    //   56: astore_2
    //   57: aload_1
    //   58: ifnull -> 52
    //   61: aload_1
    //   62: invokeinterface close : ()V
    //   67: aconst_null
    //   68: areturn
    //   69: astore_3
    //   70: aconst_null
    //   71: astore_1
    //   72: aload_1
    //   73: astore_2
    //   74: aload_0
    //   75: invokevirtual u : ()Ldkw;
    //   78: invokevirtual x : ()Ldky;
    //   81: ldc_w 'Database error getting next bundle app id'
    //   84: aload_3
    //   85: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   88: aload #4
    //   90: astore_2
    //   91: aload_1
    //   92: ifnull -> 52
    //   95: aload_1
    //   96: invokeinterface close : ()V
    //   101: aconst_null
    //   102: areturn
    //   103: astore_1
    //   104: aconst_null
    //   105: astore_2
    //   106: aload_2
    //   107: ifnull -> 116
    //   110: aload_2
    //   111: invokeinterface close : ()V
    //   116: aload_1
    //   117: athrow
    //   118: astore_1
    //   119: goto -> 106
    //   122: astore_3
    //   123: goto -> 72
    // Exception table:
    //   from	to	target	type
    //   8	17	69	android/database/sqlite/SQLiteException
    //   8	17	103	finally
    //   19	28	122	android/database/sqlite/SQLiteException
    //   19	28	118	finally
    //   30	38	122	android/database/sqlite/SQLiteException
    //   30	38	118	finally
    //   74	88	118	finally
  }
  
  public boolean D() {
    return (b("select count(1) > 0 from queue where has_realtime = 1", (String[])null) != 0L);
  }
  
  @WorkerThread
  void E() {
    e();
    R();
    if (T()) {
      long l1 = (v()).f.a();
      long l2 = m().b();
      if (Math.abs(l2 - l1) > w().ab()) {
        (v()).f.a(l2);
        F();
        return;
      } 
    } 
  }
  
  @WorkerThread
  void F() {
    e();
    R();
    if (T()) {
      int i = A().delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[] { String.valueOf(m().a()), String.valueOf(w().aa()) });
      if (i > 0) {
        u().D().a("Deleted stale rows. rowsDeleted", Integer.valueOf(i));
        return;
      } 
    } 
  }
  
  @WorkerThread
  public long G() {
    return a("select max(bundle_end_timestamp) from queue", (String[])null, 0L);
  }
  
  @WorkerThread
  public long H() {
    return a("select max(timestamp) from raw_events", (String[])null, 0L);
  }
  
  public boolean I() {
    return (b("select count(1) > 0 from raw_events", (String[])null) != 0L);
  }
  
  public boolean J() {
    return (b("select count(1) > 0 from raw_events where realtime = 1", (String[])null) != 0L);
  }
  
  public long K() {
    long l = -1L;
    Cursor cursor = null;
    null = null;
    try {
      Cursor cursor1 = A().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
      null = cursor1;
      cursor = cursor1;
      boolean bool = cursor1.moveToFirst();
      if (!bool) {
        long l2 = l;
        return l2;
      } 
      null = cursor1;
      cursor = cursor1;
      long l1 = cursor1.getLong(0);
      l = l1;
      l1 = l;
      return l1;
    } catch (SQLiteException sQLiteException) {
      cursor = null;
      u().x().a("Error querying raw events", sQLiteException);
      return l;
    } finally {
      if (cursor != null)
        cursor.close(); 
    } 
  }
  
  public long a(dpl paramdpl) {
    e();
    R();
    csp.a(paramdpl);
    csp.a(paramdpl.o);
    try {
      byte[] arrayOfByte = new byte[paramdpl.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdpl.a(dqw);
      dqw.b();
      long l = q().d(arrayOfByte);
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramdpl.o);
      contentValues.put("metadata_fingerprint", Long.valueOf(l));
      contentValues.put("metadata", arrayOfByte);
      try {
        A().insertWithOnConflict("raw_events_metadata", null, contentValues, 4);
        return l;
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing raw event metadata. appId", dkw.a(paramdpl.o), sQLiteException);
        throw sQLiteException;
      } 
    } catch (IOException iOException) {
      u().x().a("Data loss. Failed to serialize event metadata. appId", dkw.a(paramdpl.o), iOException);
      throw iOException;
    } 
  }
  
  @WorkerThread
  public dkc a(long paramLong, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5) {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual e : ()V
    //   9: aload_0
    //   10: invokevirtual R : ()V
    //   13: new dkc
    //   16: dup
    //   17: invokespecial <init> : ()V
    //   20: astore #12
    //   22: aload_0
    //   23: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   26: astore #11
    //   28: aload #11
    //   30: ldc_w 'apps'
    //   33: bipush #6
    //   35: anewarray java/lang/String
    //   38: dup
    //   39: iconst_0
    //   40: ldc 'day'
    //   42: aastore
    //   43: dup
    //   44: iconst_1
    //   45: ldc 'daily_events_count'
    //   47: aastore
    //   48: dup
    //   49: iconst_2
    //   50: ldc 'daily_public_events_count'
    //   52: aastore
    //   53: dup
    //   54: iconst_3
    //   55: ldc 'daily_conversions_count'
    //   57: aastore
    //   58: dup
    //   59: iconst_4
    //   60: ldc 'daily_error_events_count'
    //   62: aastore
    //   63: dup
    //   64: iconst_5
    //   65: ldc 'daily_realtime_events_count'
    //   67: aastore
    //   68: ldc_w 'app_id=?'
    //   71: iconst_1
    //   72: anewarray java/lang/String
    //   75: dup
    //   76: iconst_0
    //   77: aload_3
    //   78: aastore
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   85: astore #10
    //   87: aload #10
    //   89: astore #9
    //   91: aload #10
    //   93: invokeinterface moveToFirst : ()Z
    //   98: ifne -> 137
    //   101: aload #10
    //   103: astore #9
    //   105: aload_0
    //   106: invokevirtual u : ()Ldkw;
    //   109: invokevirtual z : ()Ldky;
    //   112: ldc_w 'Not updating daily counts, app is not known. appId'
    //   115: aload_3
    //   116: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   119: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   122: aload #10
    //   124: ifnull -> 134
    //   127: aload #10
    //   129: invokeinterface close : ()V
    //   134: aload #12
    //   136: areturn
    //   137: aload #10
    //   139: astore #9
    //   141: aload #10
    //   143: iconst_0
    //   144: invokeinterface getLong : (I)J
    //   149: lload_1
    //   150: lcmp
    //   151: ifne -> 239
    //   154: aload #10
    //   156: astore #9
    //   158: aload #12
    //   160: aload #10
    //   162: iconst_1
    //   163: invokeinterface getLong : (I)J
    //   168: putfield b : J
    //   171: aload #10
    //   173: astore #9
    //   175: aload #12
    //   177: aload #10
    //   179: iconst_2
    //   180: invokeinterface getLong : (I)J
    //   185: putfield a : J
    //   188: aload #10
    //   190: astore #9
    //   192: aload #12
    //   194: aload #10
    //   196: iconst_3
    //   197: invokeinterface getLong : (I)J
    //   202: putfield c : J
    //   205: aload #10
    //   207: astore #9
    //   209: aload #12
    //   211: aload #10
    //   213: iconst_4
    //   214: invokeinterface getLong : (I)J
    //   219: putfield d : J
    //   222: aload #10
    //   224: astore #9
    //   226: aload #12
    //   228: aload #10
    //   230: iconst_5
    //   231: invokeinterface getLong : (I)J
    //   236: putfield e : J
    //   239: iload #4
    //   241: ifeq -> 260
    //   244: aload #10
    //   246: astore #9
    //   248: aload #12
    //   250: aload #12
    //   252: getfield b : J
    //   255: lconst_1
    //   256: ladd
    //   257: putfield b : J
    //   260: iload #5
    //   262: ifeq -> 281
    //   265: aload #10
    //   267: astore #9
    //   269: aload #12
    //   271: aload #12
    //   273: getfield a : J
    //   276: lconst_1
    //   277: ladd
    //   278: putfield a : J
    //   281: iload #6
    //   283: ifeq -> 302
    //   286: aload #10
    //   288: astore #9
    //   290: aload #12
    //   292: aload #12
    //   294: getfield c : J
    //   297: lconst_1
    //   298: ladd
    //   299: putfield c : J
    //   302: iload #7
    //   304: ifeq -> 323
    //   307: aload #10
    //   309: astore #9
    //   311: aload #12
    //   313: aload #12
    //   315: getfield d : J
    //   318: lconst_1
    //   319: ladd
    //   320: putfield d : J
    //   323: iload #8
    //   325: ifeq -> 344
    //   328: aload #10
    //   330: astore #9
    //   332: aload #12
    //   334: aload #12
    //   336: getfield e : J
    //   339: lconst_1
    //   340: ladd
    //   341: putfield e : J
    //   344: aload #10
    //   346: astore #9
    //   348: new android/content/ContentValues
    //   351: dup
    //   352: invokespecial <init> : ()V
    //   355: astore #13
    //   357: aload #10
    //   359: astore #9
    //   361: aload #13
    //   363: ldc 'day'
    //   365: lload_1
    //   366: invokestatic valueOf : (J)Ljava/lang/Long;
    //   369: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   372: aload #10
    //   374: astore #9
    //   376: aload #13
    //   378: ldc 'daily_public_events_count'
    //   380: aload #12
    //   382: getfield a : J
    //   385: invokestatic valueOf : (J)Ljava/lang/Long;
    //   388: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   391: aload #10
    //   393: astore #9
    //   395: aload #13
    //   397: ldc 'daily_events_count'
    //   399: aload #12
    //   401: getfield b : J
    //   404: invokestatic valueOf : (J)Ljava/lang/Long;
    //   407: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   410: aload #10
    //   412: astore #9
    //   414: aload #13
    //   416: ldc 'daily_conversions_count'
    //   418: aload #12
    //   420: getfield c : J
    //   423: invokestatic valueOf : (J)Ljava/lang/Long;
    //   426: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   429: aload #10
    //   431: astore #9
    //   433: aload #13
    //   435: ldc 'daily_error_events_count'
    //   437: aload #12
    //   439: getfield d : J
    //   442: invokestatic valueOf : (J)Ljava/lang/Long;
    //   445: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   448: aload #10
    //   450: astore #9
    //   452: aload #13
    //   454: ldc 'daily_realtime_events_count'
    //   456: aload #12
    //   458: getfield e : J
    //   461: invokestatic valueOf : (J)Ljava/lang/Long;
    //   464: invokevirtual put : (Ljava/lang/String;Ljava/lang/Long;)V
    //   467: aload #10
    //   469: astore #9
    //   471: aload #11
    //   473: ldc_w 'apps'
    //   476: aload #13
    //   478: ldc_w 'app_id=?'
    //   481: iconst_1
    //   482: anewarray java/lang/String
    //   485: dup
    //   486: iconst_0
    //   487: aload_3
    //   488: aastore
    //   489: invokevirtual update : (Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   492: pop
    //   493: aload #10
    //   495: ifnull -> 505
    //   498: aload #10
    //   500: invokeinterface close : ()V
    //   505: aload #12
    //   507: areturn
    //   508: astore #11
    //   510: aconst_null
    //   511: astore #10
    //   513: aload #10
    //   515: astore #9
    //   517: aload_0
    //   518: invokevirtual u : ()Ldkw;
    //   521: invokevirtual x : ()Ldky;
    //   524: ldc_w 'Error updating daily counts. appId'
    //   527: aload_3
    //   528: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   531: aload #11
    //   533: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   536: aload #10
    //   538: ifnull -> 548
    //   541: aload #10
    //   543: invokeinterface close : ()V
    //   548: aload #12
    //   550: areturn
    //   551: astore_3
    //   552: aconst_null
    //   553: astore #9
    //   555: aload #9
    //   557: ifnull -> 567
    //   560: aload #9
    //   562: invokeinterface close : ()V
    //   567: aload_3
    //   568: athrow
    //   569: astore_3
    //   570: goto -> 555
    //   573: astore #11
    //   575: goto -> 513
    // Exception table:
    //   from	to	target	type
    //   22	87	508	android/database/sqlite/SQLiteException
    //   22	87	551	finally
    //   91	101	573	android/database/sqlite/SQLiteException
    //   91	101	569	finally
    //   105	122	573	android/database/sqlite/SQLiteException
    //   105	122	569	finally
    //   141	154	573	android/database/sqlite/SQLiteException
    //   141	154	569	finally
    //   158	171	573	android/database/sqlite/SQLiteException
    //   158	171	569	finally
    //   175	188	573	android/database/sqlite/SQLiteException
    //   175	188	569	finally
    //   192	205	573	android/database/sqlite/SQLiteException
    //   192	205	569	finally
    //   209	222	573	android/database/sqlite/SQLiteException
    //   209	222	569	finally
    //   226	239	573	android/database/sqlite/SQLiteException
    //   226	239	569	finally
    //   248	260	573	android/database/sqlite/SQLiteException
    //   248	260	569	finally
    //   269	281	573	android/database/sqlite/SQLiteException
    //   269	281	569	finally
    //   290	302	573	android/database/sqlite/SQLiteException
    //   290	302	569	finally
    //   311	323	573	android/database/sqlite/SQLiteException
    //   311	323	569	finally
    //   332	344	573	android/database/sqlite/SQLiteException
    //   332	344	569	finally
    //   348	357	573	android/database/sqlite/SQLiteException
    //   348	357	569	finally
    //   361	372	573	android/database/sqlite/SQLiteException
    //   361	372	569	finally
    //   376	391	573	android/database/sqlite/SQLiteException
    //   376	391	569	finally
    //   395	410	573	android/database/sqlite/SQLiteException
    //   395	410	569	finally
    //   414	429	573	android/database/sqlite/SQLiteException
    //   414	429	569	finally
    //   433	448	573	android/database/sqlite/SQLiteException
    //   433	448	569	finally
    //   452	467	573	android/database/sqlite/SQLiteException
    //   452	467	569	finally
    //   471	493	573	android/database/sqlite/SQLiteException
    //   471	493	569	finally
    //   517	536	569	finally
  }
  
  @WorkerThread
  public dkj a(String paramString1, String paramString2) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #5
    //   3: aload_1
    //   4: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_2
    //   9: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_0
    //   14: invokevirtual e : ()V
    //   17: aload_0
    //   18: invokevirtual R : ()V
    //   21: aload_0
    //   22: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   25: ldc_w 'events'
    //   28: iconst_3
    //   29: anewarray java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc_w 'lifetime_count'
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: ldc_w 'current_bundle_count'
    //   43: aastore
    //   44: dup
    //   45: iconst_2
    //   46: ldc_w 'last_fire_timestamp'
    //   49: aastore
    //   50: ldc_w 'app_id=? and name=?'
    //   53: iconst_2
    //   54: anewarray java/lang/String
    //   57: dup
    //   58: iconst_0
    //   59: aload_1
    //   60: aastore
    //   61: dup
    //   62: iconst_1
    //   63: aload_2
    //   64: aastore
    //   65: aconst_null
    //   66: aconst_null
    //   67: aconst_null
    //   68: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   71: astore #4
    //   73: aload #4
    //   75: invokeinterface moveToFirst : ()Z
    //   80: istore_3
    //   81: iload_3
    //   82: ifne -> 101
    //   85: aload #4
    //   87: ifnull -> 97
    //   90: aload #4
    //   92: invokeinterface close : ()V
    //   97: aconst_null
    //   98: astore_1
    //   99: aload_1
    //   100: areturn
    //   101: new dkj
    //   104: dup
    //   105: aload_1
    //   106: aload_2
    //   107: aload #4
    //   109: iconst_0
    //   110: invokeinterface getLong : (I)J
    //   115: aload #4
    //   117: iconst_1
    //   118: invokeinterface getLong : (I)J
    //   123: aload #4
    //   125: iconst_2
    //   126: invokeinterface getLong : (I)J
    //   131: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;JJJ)V
    //   134: astore #5
    //   136: aload #4
    //   138: invokeinterface moveToNext : ()Z
    //   143: ifeq -> 163
    //   146: aload_0
    //   147: invokevirtual u : ()Ldkw;
    //   150: invokevirtual x : ()Ldky;
    //   153: ldc_w 'Got multiple records for event aggregates, expected one. appId'
    //   156: aload_1
    //   157: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   160: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   163: aload #5
    //   165: astore_1
    //   166: aload #4
    //   168: ifnull -> 99
    //   171: aload #4
    //   173: invokeinterface close : ()V
    //   178: aload #5
    //   180: areturn
    //   181: astore #5
    //   183: aconst_null
    //   184: astore #4
    //   186: aload_0
    //   187: invokevirtual u : ()Ldkw;
    //   190: invokevirtual x : ()Ldky;
    //   193: ldc_w 'Error querying events. appId'
    //   196: aload_1
    //   197: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   200: aload_2
    //   201: aload #5
    //   203: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   206: aload #4
    //   208: ifnull -> 218
    //   211: aload #4
    //   213: invokeinterface close : ()V
    //   218: aconst_null
    //   219: areturn
    //   220: astore_1
    //   221: aload #5
    //   223: astore_2
    //   224: aload_2
    //   225: ifnull -> 234
    //   228: aload_2
    //   229: invokeinterface close : ()V
    //   234: aload_1
    //   235: athrow
    //   236: astore_1
    //   237: aload #4
    //   239: astore_2
    //   240: goto -> 224
    //   243: astore_1
    //   244: aload #4
    //   246: astore_2
    //   247: goto -> 224
    //   250: astore #5
    //   252: goto -> 186
    // Exception table:
    //   from	to	target	type
    //   21	73	181	android/database/sqlite/SQLiteException
    //   21	73	220	finally
    //   73	81	250	android/database/sqlite/SQLiteException
    //   73	81	236	finally
    //   101	163	250	android/database/sqlite/SQLiteException
    //   101	163	236	finally
    //   186	206	243	finally
  }
  
  @WorkerThread
  public List<dot> a(String paramString) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #7
    //   3: aload_1
    //   4: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_0
    //   9: invokevirtual e : ()V
    //   12: aload_0
    //   13: invokevirtual R : ()V
    //   16: new java/util/ArrayList
    //   19: dup
    //   20: invokespecial <init> : ()V
    //   23: astore #9
    //   25: aload_0
    //   26: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore #6
    //   31: aload_0
    //   32: invokevirtual w : ()Ldka;
    //   35: invokevirtual J : ()I
    //   38: istore_2
    //   39: aload #6
    //   41: ldc_w 'user_attributes'
    //   44: iconst_4
    //   45: anewarray java/lang/String
    //   48: dup
    //   49: iconst_0
    //   50: ldc_w 'name'
    //   53: aastore
    //   54: dup
    //   55: iconst_1
    //   56: ldc 'origin'
    //   58: aastore
    //   59: dup
    //   60: iconst_2
    //   61: ldc_w 'set_timestamp'
    //   64: aastore
    //   65: dup
    //   66: iconst_3
    //   67: ldc_w 'value'
    //   70: aastore
    //   71: ldc_w 'app_id=?'
    //   74: iconst_1
    //   75: anewarray java/lang/String
    //   78: dup
    //   79: iconst_0
    //   80: aload_1
    //   81: aastore
    //   82: aconst_null
    //   83: aconst_null
    //   84: ldc_w 'rowid'
    //   87: iload_2
    //   88: invokestatic valueOf : (I)Ljava/lang/String;
    //   91: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   94: astore #6
    //   96: aload #6
    //   98: invokeinterface moveToFirst : ()Z
    //   103: istore_3
    //   104: iload_3
    //   105: ifne -> 123
    //   108: aload #6
    //   110: ifnull -> 120
    //   113: aload #6
    //   115: invokeinterface close : ()V
    //   120: aload #9
    //   122: areturn
    //   123: aload #6
    //   125: iconst_0
    //   126: invokeinterface getString : (I)Ljava/lang/String;
    //   131: astore #10
    //   133: aload #6
    //   135: iconst_1
    //   136: invokeinterface getString : (I)Ljava/lang/String;
    //   141: astore #8
    //   143: aload #8
    //   145: astore #7
    //   147: aload #8
    //   149: ifnonnull -> 157
    //   152: ldc_w ''
    //   155: astore #7
    //   157: aload #6
    //   159: iconst_2
    //   160: invokeinterface getLong : (I)J
    //   165: lstore #4
    //   167: aload_0
    //   168: aload #6
    //   170: iconst_3
    //   171: invokevirtual b : (Landroid/database/Cursor;I)Ljava/lang/Object;
    //   174: astore #8
    //   176: aload #8
    //   178: ifnonnull -> 225
    //   181: aload_0
    //   182: invokevirtual u : ()Ldkw;
    //   185: invokevirtual x : ()Ldky;
    //   188: ldc_w 'Read invalid user property value, ignoring it. appId'
    //   191: aload_1
    //   192: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   195: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   198: aload #6
    //   200: invokeinterface moveToNext : ()Z
    //   205: istore_3
    //   206: iload_3
    //   207: ifne -> 123
    //   210: aload #6
    //   212: ifnull -> 222
    //   215: aload #6
    //   217: invokeinterface close : ()V
    //   222: aload #9
    //   224: areturn
    //   225: aload #9
    //   227: new dot
    //   230: dup
    //   231: aload_1
    //   232: aload #7
    //   234: aload #10
    //   236: lload #4
    //   238: aload #8
    //   240: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   243: invokeinterface add : (Ljava/lang/Object;)Z
    //   248: pop
    //   249: goto -> 198
    //   252: astore #7
    //   254: aload_0
    //   255: invokevirtual u : ()Ldkw;
    //   258: invokevirtual x : ()Ldky;
    //   261: ldc_w 'Error querying user properties. appId'
    //   264: aload_1
    //   265: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   268: aload #7
    //   270: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   273: aload #6
    //   275: ifnull -> 285
    //   278: aload #6
    //   280: invokeinterface close : ()V
    //   285: aconst_null
    //   286: areturn
    //   287: astore_1
    //   288: aload #7
    //   290: astore #6
    //   292: aload #6
    //   294: ifnull -> 304
    //   297: aload #6
    //   299: invokeinterface close : ()V
    //   304: aload_1
    //   305: athrow
    //   306: astore_1
    //   307: goto -> 292
    //   310: astore_1
    //   311: goto -> 292
    //   314: astore #7
    //   316: aconst_null
    //   317: astore #6
    //   319: goto -> 254
    // Exception table:
    //   from	to	target	type
    //   25	96	314	android/database/sqlite/SQLiteException
    //   25	96	287	finally
    //   96	104	252	android/database/sqlite/SQLiteException
    //   96	104	306	finally
    //   123	143	252	android/database/sqlite/SQLiteException
    //   123	143	306	finally
    //   157	176	252	android/database/sqlite/SQLiteException
    //   157	176	306	finally
    //   181	198	252	android/database/sqlite/SQLiteException
    //   181	198	306	finally
    //   198	206	252	android/database/sqlite/SQLiteException
    //   198	206	306	finally
    //   225	249	252	android/database/sqlite/SQLiteException
    //   225	249	306	finally
    //   254	273	310	finally
  }
  
  @WorkerThread
  public List<Pair<dpl, Long>> a(String paramString, int paramInt1, int paramInt2) {
    // Byte code:
    //   0: iconst_1
    //   1: istore #6
    //   3: aload_0
    //   4: invokevirtual e : ()V
    //   7: aload_0
    //   8: invokevirtual R : ()V
    //   11: iload_2
    //   12: ifle -> 124
    //   15: iconst_1
    //   16: istore #5
    //   18: iload #5
    //   20: invokestatic b : (Z)V
    //   23: iload_3
    //   24: ifle -> 130
    //   27: iload #6
    //   29: istore #5
    //   31: iload #5
    //   33: invokestatic b : (Z)V
    //   36: aload_1
    //   37: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   40: pop
    //   41: aload_0
    //   42: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   45: ldc_w 'queue'
    //   48: iconst_2
    //   49: anewarray java/lang/String
    //   52: dup
    //   53: iconst_0
    //   54: ldc_w 'rowid'
    //   57: aastore
    //   58: dup
    //   59: iconst_1
    //   60: ldc_w 'data'
    //   63: aastore
    //   64: ldc_w 'app_id=?'
    //   67: iconst_1
    //   68: anewarray java/lang/String
    //   71: dup
    //   72: iconst_0
    //   73: aload_1
    //   74: aastore
    //   75: aconst_null
    //   76: aconst_null
    //   77: ldc_w 'rowid'
    //   80: iload_2
    //   81: invokestatic valueOf : (I)Ljava/lang/String;
    //   84: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   87: astore #9
    //   89: aload #9
    //   91: invokeinterface moveToFirst : ()Z
    //   96: ifne -> 136
    //   99: invokestatic emptyList : ()Ljava/util/List;
    //   102: astore #10
    //   104: aload #10
    //   106: astore_1
    //   107: aload #9
    //   109: ifnull -> 122
    //   112: aload #9
    //   114: invokeinterface close : ()V
    //   119: aload #10
    //   121: astore_1
    //   122: aload_1
    //   123: areturn
    //   124: iconst_0
    //   125: istore #5
    //   127: goto -> 18
    //   130: iconst_0
    //   131: istore #5
    //   133: goto -> 31
    //   136: new java/util/ArrayList
    //   139: dup
    //   140: invokespecial <init> : ()V
    //   143: astore #10
    //   145: iconst_0
    //   146: istore_2
    //   147: aload #9
    //   149: iconst_0
    //   150: invokeinterface getLong : (I)J
    //   155: lstore #7
    //   157: aload #9
    //   159: iconst_1
    //   160: invokeinterface getBlob : (I)[B
    //   165: astore #11
    //   167: aload_0
    //   168: invokevirtual q : ()Ldou;
    //   171: aload #11
    //   173: invokevirtual b : ([B)[B
    //   176: astore #11
    //   178: aload #10
    //   180: invokeinterface isEmpty : ()Z
    //   185: ifne -> 258
    //   188: aload #11
    //   190: arraylength
    //   191: istore #4
    //   193: iload #4
    //   195: iload_2
    //   196: iadd
    //   197: iload_3
    //   198: if_icmple -> 258
    //   201: aload #10
    //   203: astore_1
    //   204: aload #9
    //   206: ifnull -> 122
    //   209: aload #9
    //   211: invokeinterface close : ()V
    //   216: aload #10
    //   218: areturn
    //   219: astore #11
    //   221: aload_0
    //   222: invokevirtual u : ()Ldkw;
    //   225: invokevirtual x : ()Ldky;
    //   228: ldc_w 'Failed to unzip queued bundle. appId'
    //   231: aload_1
    //   232: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   235: aload #11
    //   237: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   240: aload #9
    //   242: invokeinterface moveToNext : ()Z
    //   247: ifeq -> 201
    //   250: iload_2
    //   251: iload_3
    //   252: if_icmpgt -> 201
    //   255: goto -> 147
    //   258: aload #11
    //   260: invokestatic a : ([B)Ldqv;
    //   263: astore #12
    //   265: new dpl
    //   268: dup
    //   269: invokespecial <init> : ()V
    //   272: astore #13
    //   274: aload #13
    //   276: aload #12
    //   278: invokevirtual b : (Ldqv;)Ldre;
    //   281: pop
    //   282: aload #11
    //   284: arraylength
    //   285: iload_2
    //   286: iadd
    //   287: istore_2
    //   288: aload #10
    //   290: aload #13
    //   292: lload #7
    //   294: invokestatic valueOf : (J)Ljava/lang/Long;
    //   297: invokestatic create : (Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   300: invokeinterface add : (Ljava/lang/Object;)Z
    //   305: pop
    //   306: goto -> 240
    //   309: astore #10
    //   311: aload_0
    //   312: invokevirtual u : ()Ldkw;
    //   315: invokevirtual x : ()Ldky;
    //   318: ldc_w 'Error querying bundles. appId'
    //   321: aload_1
    //   322: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   325: aload #10
    //   327: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   330: invokestatic emptyList : ()Ljava/util/List;
    //   333: astore #10
    //   335: aload #10
    //   337: astore_1
    //   338: aload #9
    //   340: ifnull -> 122
    //   343: aload #9
    //   345: invokeinterface close : ()V
    //   350: aload #10
    //   352: areturn
    //   353: astore #11
    //   355: aload_0
    //   356: invokevirtual u : ()Ldkw;
    //   359: invokevirtual x : ()Ldky;
    //   362: ldc_w 'Failed to merge queued bundle. appId'
    //   365: aload_1
    //   366: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   369: aload #11
    //   371: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   374: goto -> 240
    //   377: astore_1
    //   378: aconst_null
    //   379: astore #9
    //   381: aload #9
    //   383: ifnull -> 393
    //   386: aload #9
    //   388: invokeinterface close : ()V
    //   393: aload_1
    //   394: athrow
    //   395: astore_1
    //   396: goto -> 381
    //   399: astore_1
    //   400: goto -> 381
    //   403: astore #10
    //   405: aconst_null
    //   406: astore #9
    //   408: goto -> 311
    // Exception table:
    //   from	to	target	type
    //   41	89	403	android/database/sqlite/SQLiteException
    //   41	89	377	finally
    //   89	104	309	android/database/sqlite/SQLiteException
    //   89	104	395	finally
    //   136	145	309	android/database/sqlite/SQLiteException
    //   136	145	395	finally
    //   147	157	309	android/database/sqlite/SQLiteException
    //   147	157	395	finally
    //   157	178	219	java/io/IOException
    //   157	178	309	android/database/sqlite/SQLiteException
    //   157	178	395	finally
    //   178	193	309	android/database/sqlite/SQLiteException
    //   178	193	395	finally
    //   221	240	309	android/database/sqlite/SQLiteException
    //   221	240	395	finally
    //   240	250	309	android/database/sqlite/SQLiteException
    //   240	250	395	finally
    //   258	274	309	android/database/sqlite/SQLiteException
    //   258	274	395	finally
    //   274	282	353	java/io/IOException
    //   274	282	309	android/database/sqlite/SQLiteException
    //   274	282	395	finally
    //   282	306	309	android/database/sqlite/SQLiteException
    //   282	306	395	finally
    //   311	335	399	finally
    //   355	374	309	android/database/sqlite/SQLiteException
    //   355	374	395	finally
  }
  
  @WorkerThread
  public List<zzatg> a(String paramString, long paramLong) {
    csp.a(paramString);
    e();
    R();
    if (paramLong < 0L) {
      u().z().a("Invalid time querying timed out conditional properties", dkw.a(paramString), Long.valueOf(paramLong));
      return Collections.emptyList();
    } 
    return a("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[] { paramString, String.valueOf(paramLong) });
  }
  
  @WorkerThread
  public List<zzatg> a(String paramString1, String paramString2, long paramLong) {
    csp.a(paramString1);
    csp.a(paramString2);
    e();
    R();
    if (paramLong < 0L) {
      u().z().a("Invalid time querying triggered conditional properties", dkw.a(paramString1), paramString2, Long.valueOf(paramLong));
      return Collections.emptyList();
    } 
    return a("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[] { paramString1, paramString2, String.valueOf(paramLong) });
  }
  
  @WorkerThread
  public List<dot> a(String paramString1, String paramString2, String paramString3) {
    SQLiteException sQLiteException1;
    String str1;
    String str2 = null;
    csp.a(paramString1);
    e();
    R();
    ArrayList<dot> arrayList = new ArrayList();
    try {
      ArrayList<String> arrayList1 = new ArrayList(3);
      arrayList1.add(paramString1);
      StringBuilder stringBuilder = new StringBuilder("app_id=?");
      if (!TextUtils.isEmpty(paramString2)) {
        arrayList1.add(paramString2);
        stringBuilder.append(" and origin=?");
      } 
      if (!TextUtils.isEmpty(paramString3)) {
        arrayList1.add(String.valueOf(paramString3).concat("*"));
        stringBuilder.append(" and name glob ?");
      } 
      String[] arrayOfString = arrayList1.<String>toArray(new String[arrayList1.size()]);
      SQLiteDatabase sQLiteDatabase = A();
      String str = stringBuilder.toString();
      w().J();
      Cursor cursor = sQLiteDatabase.query("user_attributes", new String[] { "name", "set_timestamp", "value", "origin" }, str, arrayOfString, null, null, "rowid", String.valueOf(1001));
    } catch (SQLiteException sQLiteException2) {
    
    } finally {
      sQLiteException1 = sQLiteException3;
      if (sQLiteException1 != null)
        sQLiteException1.close(); 
    } 
    try {
      u().x().a("(2)Error querying user properties", dkw.a(paramString1), sQLiteException1, sQLiteException2);
      return null;
    } finally {
      paramString1 = null;
    } 
    if (str1 != null)
      str1.close(); 
    throw paramString1;
  }
  
  public List<zzatg> a(String paramString, String[] paramArrayOfString) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual e : ()V
    //   4: aload_0
    //   5: invokevirtual R : ()V
    //   8: new java/util/ArrayList
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: astore #12
    //   17: aload_0
    //   18: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   21: astore #13
    //   23: aload_0
    //   24: invokevirtual w : ()Ldka;
    //   27: invokevirtual L : ()I
    //   30: pop
    //   31: aload #13
    //   33: ldc_w 'conditional_properties'
    //   36: bipush #13
    //   38: anewarray java/lang/String
    //   41: dup
    //   42: iconst_0
    //   43: ldc_w 'app_id'
    //   46: aastore
    //   47: dup
    //   48: iconst_1
    //   49: ldc 'origin'
    //   51: aastore
    //   52: dup
    //   53: iconst_2
    //   54: ldc_w 'name'
    //   57: aastore
    //   58: dup
    //   59: iconst_3
    //   60: ldc_w 'value'
    //   63: aastore
    //   64: dup
    //   65: iconst_4
    //   66: ldc_w 'active'
    //   69: aastore
    //   70: dup
    //   71: iconst_5
    //   72: ldc_w 'trigger_event_name'
    //   75: aastore
    //   76: dup
    //   77: bipush #6
    //   79: ldc_w 'trigger_timeout'
    //   82: aastore
    //   83: dup
    //   84: bipush #7
    //   86: ldc_w 'timed_out_event'
    //   89: aastore
    //   90: dup
    //   91: bipush #8
    //   93: ldc_w 'creation_timestamp'
    //   96: aastore
    //   97: dup
    //   98: bipush #9
    //   100: ldc_w 'triggered_event'
    //   103: aastore
    //   104: dup
    //   105: bipush #10
    //   107: ldc_w 'triggered_timestamp'
    //   110: aastore
    //   111: dup
    //   112: bipush #11
    //   114: ldc_w 'time_to_live'
    //   117: aastore
    //   118: dup
    //   119: bipush #12
    //   121: ldc_w 'expired_event'
    //   124: aastore
    //   125: aload_1
    //   126: aload_2
    //   127: aconst_null
    //   128: aconst_null
    //   129: ldc_w 'rowid'
    //   132: sipush #1001
    //   135: invokestatic valueOf : (I)Ljava/lang/String;
    //   138: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   141: astore_1
    //   142: aload_1
    //   143: invokeinterface moveToFirst : ()Z
    //   148: istore_3
    //   149: iload_3
    //   150: ifne -> 168
    //   153: aload_1
    //   154: ifnull -> 163
    //   157: aload_1
    //   158: invokeinterface close : ()V
    //   163: aload #12
    //   165: astore_2
    //   166: aload_2
    //   167: areturn
    //   168: aload #12
    //   170: invokeinterface size : ()I
    //   175: aload_0
    //   176: invokevirtual w : ()Ldka;
    //   179: invokevirtual L : ()I
    //   182: if_icmplt -> 221
    //   185: aload_0
    //   186: invokevirtual u : ()Ldkw;
    //   189: invokevirtual x : ()Ldky;
    //   192: ldc_w 'Read more than the max allowed conditional properties, ignoring extra'
    //   195: aload_0
    //   196: invokevirtual w : ()Ldka;
    //   199: invokevirtual L : ()I
    //   202: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   205: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   208: aload_1
    //   209: ifnull -> 218
    //   212: aload_1
    //   213: invokeinterface close : ()V
    //   218: aload #12
    //   220: areturn
    //   221: aload_1
    //   222: iconst_0
    //   223: invokeinterface getString : (I)Ljava/lang/String;
    //   228: astore_2
    //   229: aload_1
    //   230: iconst_1
    //   231: invokeinterface getString : (I)Ljava/lang/String;
    //   236: astore #13
    //   238: aload_1
    //   239: iconst_2
    //   240: invokeinterface getString : (I)Ljava/lang/String;
    //   245: astore #14
    //   247: aload_0
    //   248: aload_1
    //   249: iconst_3
    //   250: invokevirtual b : (Landroid/database/Cursor;I)Ljava/lang/Object;
    //   253: astore #15
    //   255: aload_1
    //   256: iconst_4
    //   257: invokeinterface getInt : (I)I
    //   262: ifeq -> 447
    //   265: iconst_1
    //   266: istore_3
    //   267: aload_1
    //   268: iconst_5
    //   269: invokeinterface getString : (I)Ljava/lang/String;
    //   274: astore #16
    //   276: aload_1
    //   277: bipush #6
    //   279: invokeinterface getLong : (I)J
    //   284: lstore #4
    //   286: aload_0
    //   287: invokevirtual q : ()Ldou;
    //   290: aload_1
    //   291: bipush #7
    //   293: invokeinterface getBlob : (I)[B
    //   298: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   301: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   304: checkcast com/google/android/gms/internal/zzatq
    //   307: astore #17
    //   309: aload_1
    //   310: bipush #8
    //   312: invokeinterface getLong : (I)J
    //   317: lstore #6
    //   319: aload_0
    //   320: invokevirtual q : ()Ldou;
    //   323: aload_1
    //   324: bipush #9
    //   326: invokeinterface getBlob : (I)[B
    //   331: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   334: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   337: checkcast com/google/android/gms/internal/zzatq
    //   340: astore #18
    //   342: aload_1
    //   343: bipush #10
    //   345: invokeinterface getLong : (I)J
    //   350: lstore #8
    //   352: aload_1
    //   353: bipush #11
    //   355: invokeinterface getLong : (I)J
    //   360: lstore #10
    //   362: aload_0
    //   363: invokevirtual q : ()Ldou;
    //   366: aload_1
    //   367: bipush #12
    //   369: invokeinterface getBlob : (I)[B
    //   374: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   377: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   380: checkcast com/google/android/gms/internal/zzatq
    //   383: astore #19
    //   385: aload #12
    //   387: new com/google/android/gms/internal/zzatg
    //   390: dup
    //   391: aload_2
    //   392: aload #13
    //   394: new com/google/android/gms/internal/zzauq
    //   397: dup
    //   398: aload #14
    //   400: lload #8
    //   402: aload #15
    //   404: aload #13
    //   406: invokespecial <init> : (Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    //   409: lload #6
    //   411: iload_3
    //   412: aload #16
    //   414: aload #17
    //   416: lload #4
    //   418: aload #18
    //   420: lload #10
    //   422: aload #19
    //   424: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V
    //   427: invokeinterface add : (Ljava/lang/Object;)Z
    //   432: pop
    //   433: aload_1
    //   434: invokeinterface moveToNext : ()Z
    //   439: istore_3
    //   440: iload_3
    //   441: ifne -> 168
    //   444: goto -> 208
    //   447: iconst_0
    //   448: istore_3
    //   449: goto -> 267
    //   452: astore_2
    //   453: aconst_null
    //   454: astore_1
    //   455: aload_0
    //   456: invokevirtual u : ()Ldkw;
    //   459: invokevirtual x : ()Ldky;
    //   462: ldc_w 'Error querying conditional user property value'
    //   465: aload_2
    //   466: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   469: invokestatic emptyList : ()Ljava/util/List;
    //   472: astore #12
    //   474: aload #12
    //   476: astore_2
    //   477: aload_1
    //   478: ifnull -> 166
    //   481: aload_1
    //   482: invokeinterface close : ()V
    //   487: aload #12
    //   489: areturn
    //   490: astore_2
    //   491: aconst_null
    //   492: astore_1
    //   493: aload_1
    //   494: ifnull -> 503
    //   497: aload_1
    //   498: invokeinterface close : ()V
    //   503: aload_2
    //   504: athrow
    //   505: astore_2
    //   506: goto -> 493
    //   509: astore_2
    //   510: goto -> 493
    //   513: astore_2
    //   514: goto -> 455
    // Exception table:
    //   from	to	target	type
    //   17	142	452	android/database/sqlite/SQLiteException
    //   17	142	490	finally
    //   142	149	513	android/database/sqlite/SQLiteException
    //   142	149	505	finally
    //   168	208	513	android/database/sqlite/SQLiteException
    //   168	208	505	finally
    //   221	265	513	android/database/sqlite/SQLiteException
    //   221	265	505	finally
    //   267	440	513	android/database/sqlite/SQLiteException
    //   267	440	505	finally
    //   455	474	509	finally
  }
  
  protected void a() {}
  
  @WorkerThread
  public void a(long paramLong) {
    e();
    R();
    SQLiteDatabase sQLiteDatabase = A();
    try {
      if (sQLiteDatabase.delete("queue", "rowid=?", new String[] { String.valueOf(paramLong) }) != 1)
        throw new SQLiteException("Deleted fewer rows from queue than expected"); 
    } catch (SQLiteException sQLiteException) {
      u().x().a("Failed to delete a bundle in a queue table", sQLiteException);
      throw sQLiteException;
    } 
  }
  
  @WorkerThread
  void a(ContentValues paramContentValues, String paramString, Object paramObject) {
    csp.a(paramString);
    csp.a(paramObject);
    if (paramObject instanceof String) {
      paramContentValues.put(paramString, (String)paramObject);
      return;
    } 
    if (paramObject instanceof Long) {
      paramContentValues.put(paramString, (Long)paramObject);
      return;
    } 
    if (paramObject instanceof Double) {
      paramContentValues.put(paramString, (Double)paramObject);
      return;
    } 
    throw new IllegalArgumentException("Invalid value type");
  }
  
  @WorkerThread
  public void a(djw paramdjw) {
    csp.a(paramdjw);
    e();
    R();
    ContentValues contentValues = new ContentValues();
    contentValues.put("app_id", paramdjw.b());
    contentValues.put("app_instance_id", paramdjw.c());
    contentValues.put("gmp_app_id", paramdjw.d());
    contentValues.put("resettable_device_id_hash", paramdjw.e());
    contentValues.put("last_bundle_index", Long.valueOf(paramdjw.o()));
    contentValues.put("last_bundle_start_timestamp", Long.valueOf(paramdjw.g()));
    contentValues.put("last_bundle_end_timestamp", Long.valueOf(paramdjw.h()));
    contentValues.put("app_version", paramdjw.i());
    contentValues.put("app_store", paramdjw.k());
    contentValues.put("gmp_version", Long.valueOf(paramdjw.l()));
    contentValues.put("dev_cert_hash", Long.valueOf(paramdjw.m()));
    contentValues.put("measurement_enabled", Boolean.valueOf(paramdjw.n()));
    contentValues.put("day", Long.valueOf(paramdjw.s()));
    contentValues.put("daily_public_events_count", Long.valueOf(paramdjw.t()));
    contentValues.put("daily_events_count", Long.valueOf(paramdjw.u()));
    contentValues.put("daily_conversions_count", Long.valueOf(paramdjw.v()));
    contentValues.put("config_fetched_time", Long.valueOf(paramdjw.p()));
    contentValues.put("failed_config_fetch_time", Long.valueOf(paramdjw.q()));
    contentValues.put("app_version_int", Long.valueOf(paramdjw.j()));
    contentValues.put("firebase_instance_id", paramdjw.f());
    contentValues.put("daily_error_events_count", Long.valueOf(paramdjw.x()));
    contentValues.put("daily_realtime_events_count", Long.valueOf(paramdjw.w()));
    contentValues.put("health_monitor_sample", paramdjw.y());
    contentValues.put("android_id", Long.valueOf(paramdjw.A()));
    try {
      SQLiteDatabase sQLiteDatabase = A();
      if (sQLiteDatabase.update("apps", contentValues, "app_id = ?", new String[] { paramdjw.b() }) == 0L && sQLiteDatabase.insertWithOnConflict("apps", null, contentValues, 5) == -1L)
        u().x().a("Failed to insert/update app (got -1). appId", dkw.a(paramdjw.b())); 
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error storing app. appId", dkw.a(paramdjw.b()), sQLiteException);
      return;
    } 
  }
  
  @WorkerThread
  public void a(dkj paramdkj) {
    csp.a(paramdkj);
    e();
    R();
    ContentValues contentValues = new ContentValues();
    contentValues.put("app_id", paramdkj.a);
    contentValues.put("name", paramdkj.b);
    contentValues.put("lifetime_count", Long.valueOf(paramdkj.c));
    contentValues.put("current_bundle_count", Long.valueOf(paramdkj.d));
    contentValues.put("last_fire_timestamp", Long.valueOf(paramdkj.e));
    try {
      if (A().insertWithOnConflict("events", null, contentValues, 5) == -1L)
        u().x().a("Failed to insert/update event aggregates (got -1). appId", dkw.a(paramdkj.a)); 
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error storing event aggregates. appId", dkw.a(paramdkj.a), sQLiteException);
      return;
    } 
  }
  
  @WorkerThread
  public void a(String paramString, int paramInt) {
    csp.a(paramString);
    e();
    R();
    try {
      A().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", (Object[])new String[] { paramString, paramString, String.valueOf(paramInt) });
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error pruning currencies. appId", dkw.a(paramString), sQLiteException);
      return;
    } 
  }
  
  void a(String paramString, int paramInt, dpm paramdpm) {
    R();
    e();
    csp.a(paramString);
    csp.a(paramdpm);
    try {
      byte[] arrayOfByte = new byte[paramdpm.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdpm.a(dqw);
      dqw.b();
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramString);
      contentValues.put("audience_id", Integer.valueOf(paramInt));
      contentValues.put("current_results", arrayOfByte);
      try {
        if (A().insertWithOnConflict("audience_filter_values", null, contentValues, 5) == -1L)
          u().x().a("Failed to insert filter results (got -1). appId", dkw.a(paramString)); 
        return;
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing filter results. appId", dkw.a(paramString), sQLiteException);
      } 
    } catch (IOException iOException) {
      u().x().a("Configuration loss. Failed to serialize filter results. appId", dkw.a(paramString), iOException);
      return;
    } 
  }
  
  public void a(String paramString, long paramLong1, long paramLong2, dkd paramdkd) {
    SQLiteDatabase sQLiteDatabase;
    csp.a(paramdkd);
    e();
    R();
    Cursor cursor5 = null;
    Cursor cursor4 = null;
    Cursor cursor1 = cursor4;
    Cursor cursor2 = cursor5;
    String str1 = paramString;
    try {
      sQLiteDatabase = A();
      cursor1 = cursor4;
      cursor2 = cursor5;
      str1 = paramString;
    } catch (SQLiteException sQLiteException) {
      cursor1 = cursor2;
      u().x().a("Data loss. Error selecting raw event. appId", dkw.a(str1), sQLiteException);
      return;
    } finally {
      if (cursor1 != null)
        cursor1.close(); 
    } 
    if (paramLong2 != -1L) {
      str2 = "rowid <= ? and ";
    } else {
      str2 = "";
    } 
    cursor1 = cursor4;
    cursor2 = cursor5;
    str1 = paramString;
    Cursor cursor3 = sQLiteDatabase.rawQuery((new StringBuilder(String.valueOf(str2).length() + 148)).append("select app_id, metadata_fingerprint from raw_events where ").append(str2).append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;").toString(), (String[])cursor3);
    cursor1 = cursor3;
    cursor2 = cursor3;
    str1 = paramString;
    boolean bool = cursor3.moveToFirst();
    if (!bool) {
      if (cursor3 != null)
        cursor3.close(); 
      return;
    } 
    cursor1 = cursor3;
    cursor2 = cursor3;
    str1 = paramString;
    paramString = cursor3.getString(0);
    cursor1 = cursor3;
    cursor2 = cursor3;
    str1 = paramString;
    String str2 = cursor3.getString(1);
    cursor1 = cursor3;
    cursor2 = cursor3;
    str1 = paramString;
    cursor3.close();
    str1 = str2;
    cursor1 = cursor3;
    cursor2 = cursor1;
  }
  
  @WorkerThread
  public void a(String paramString, byte[] paramArrayOfbyte) {
    csp.a(paramString);
    e();
    R();
    ContentValues contentValues = new ContentValues();
    contentValues.put("remote_config", paramArrayOfbyte);
    try {
      if (A().update("apps", contentValues, "app_id = ?", new String[] { paramString }) == 0L)
        u().x().a("Failed to update remote config (got 0). appId", dkw.a(paramString)); 
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error storing remote config. appId", dkw.a(paramString), sQLiteException);
      return;
    } 
  }
  
  @WorkerThread
  void a(String paramString, dow[] paramArrayOfdow) {
    boolean bool = false;
    R();
    e();
    csp.a(paramString);
    csp.a(paramArrayOfdow);
    SQLiteDatabase sQLiteDatabase = A();
    sQLiteDatabase.beginTransaction();
    try {
      e(paramString);
      int j = paramArrayOfdow.length;
      int i;
      for (i = 0; i < j; i++)
        a(paramString, paramArrayOfdow[i]); 
      ArrayList<Integer> arrayList = new ArrayList();
      j = paramArrayOfdow.length;
      for (i = bool; i < j; i++)
        arrayList.add((paramArrayOfdow[i]).a); 
      a(paramString, arrayList);
      sQLiteDatabase.setTransactionSuccessful();
      return;
    } finally {
      sQLiteDatabase.endTransaction();
    } 
  }
  
  public void a(List<Long> paramList) {
    csp.a(paramList);
    e();
    R();
    StringBuilder stringBuilder = new StringBuilder("rowid in (");
    int i;
    for (i = 0; i < paramList.size(); i++) {
      if (i != 0)
        stringBuilder.append(","); 
      stringBuilder.append(((Long)paramList.get(i)).longValue());
    } 
    stringBuilder.append(")");
    i = A().delete("raw_events", stringBuilder.toString(), null);
    if (i != paramList.size())
      u().x().a("Deleted fewer rows from raw events table than expected", Integer.valueOf(i), Integer.valueOf(paramList.size())); 
  }
  
  @WorkerThread
  public boolean a(zzatg paramzzatg) {
    csp.a(paramzzatg);
    e();
    R();
    if (c(paramzzatg.b, paramzzatg.d.b) == null) {
      long l = b("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[] { paramzzatg.b });
      w().L();
      if (l >= 1000L)
        return false; 
    } 
    ContentValues contentValues = new ContentValues();
    contentValues.put("app_id", paramzzatg.b);
    contentValues.put("origin", paramzzatg.c);
    contentValues.put("name", paramzzatg.d.b);
    a(contentValues, "value", paramzzatg.d.a());
    contentValues.put("active", Boolean.valueOf(paramzzatg.f));
    contentValues.put("trigger_event_name", paramzzatg.g);
    contentValues.put("trigger_timeout", Long.valueOf(paramzzatg.i));
    contentValues.put("timed_out_event", q().a((Parcelable)paramzzatg.h));
    contentValues.put("creation_timestamp", Long.valueOf(paramzzatg.e));
    contentValues.put("triggered_event", q().a((Parcelable)paramzzatg.j));
    contentValues.put("triggered_timestamp", Long.valueOf(paramzzatg.d.c));
    contentValues.put("time_to_live", Long.valueOf(paramzzatg.k));
    contentValues.put("expired_event", q().a((Parcelable)paramzzatg.l));
    try {
      if (A().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1L)
        u().x().a("Failed to insert/update conditional user property (got -1)", dkw.a(paramzzatg.b)); 
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error storing conditional user property", dkw.a(paramzzatg.b), sQLiteException);
    } 
    return true;
  }
  
  public boolean a(dki paramdki, long paramLong, boolean paramBoolean) {
    e();
    R();
    csp.a(paramdki);
    csp.a(paramdki.a);
    dpi dpi = new dpi();
    dpi.d = Long.valueOf(paramdki.e);
    dpi.a = new dpj[paramdki.f.a()];
    Iterator<String> iterator = paramdki.f.iterator();
    int i;
    for (i = 0; iterator.hasNext(); i++) {
      String str = iterator.next();
      dpj dpj = new dpj();
      dpi.a[i] = dpj;
      dpj.a = str;
      Object object = paramdki.f.a(str);
      q().a(dpj, object);
    } 
    try {
      byte[] arrayOfByte = new byte[dpi.g()];
      dqw dqw = dqw.a(arrayOfByte);
      dpi.a(dqw);
      dqw.b();
      u().D().a("Saving event, name, data size", paramdki.b, Integer.valueOf(arrayOfByte.length));
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramdki.a);
      contentValues.put("name", paramdki.b);
      contentValues.put("timestamp", Long.valueOf(paramdki.d));
      contentValues.put("metadata_fingerprint", Long.valueOf(paramLong));
      contentValues.put("data", arrayOfByte);
      if (paramBoolean) {
        i = 1;
      } else {
        i = 0;
      } 
      contentValues.put("realtime", Integer.valueOf(i));
      try {
        if (A().insert("raw_events", null, contentValues) == -1L) {
          u().x().a("Failed to insert raw event (got -1). appId", dkw.a(paramdki.a));
          return false;
        } 
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing raw event. appId", dkw.a(paramdki.a), sQLiteException);
        return false;
      } 
    } catch (IOException iOException) {
      u().x().a("Data loss. Failed to serialize event params/data. appId", dkw.a(paramdki.a), iOException);
      return false;
    } 
  }
  
  @WorkerThread
  public boolean a(dot paramdot) {
    csp.a(paramdot);
    e();
    R();
    if (c(paramdot.a, paramdot.c) == null)
      if (dou.a(paramdot.c)) {
        long l = b("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[] { paramdot.a });
        w().I();
        if (l >= 25L)
          return false; 
      } else {
        long l = b("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[] { paramdot.a, paramdot.b });
        w().K();
        if (l >= 25L)
          return false; 
      }  
    ContentValues contentValues = new ContentValues();
    contentValues.put("app_id", paramdot.a);
    contentValues.put("origin", paramdot.b);
    contentValues.put("name", paramdot.c);
    contentValues.put("set_timestamp", Long.valueOf(paramdot.d));
    a(contentValues, "value", paramdot.e);
    try {
      if (A().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1L)
        u().x().a("Failed to insert/update user property (got -1). appId", dkw.a(paramdot.a)); 
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error storing user property. appId", dkw.a(paramdot.a), sQLiteException);
    } 
    return true;
  }
  
  @WorkerThread
  public boolean a(dpl paramdpl, boolean paramBoolean) {
    e();
    R();
    csp.a(paramdpl);
    csp.a(paramdpl.o);
    csp.a(paramdpl.f);
    E();
    long l = m().a();
    if (paramdpl.f.longValue() < l - w().aa() || paramdpl.f.longValue() > w().aa() + l)
      u().z().a("Storing bundle outside of the max uploading time span. appId, now, timestamp", dkw.a(paramdpl.o), Long.valueOf(l), paramdpl.f); 
    try {
      boolean bool;
      byte[] arrayOfByte = new byte[paramdpl.g()];
      dqw dqw = dqw.a(arrayOfByte);
      paramdpl.a(dqw);
      dqw.b();
      arrayOfByte = q().a(arrayOfByte);
      u().D().a("Saving bundle, size", Integer.valueOf(arrayOfByte.length));
      ContentValues contentValues = new ContentValues();
      contentValues.put("app_id", paramdpl.o);
      contentValues.put("bundle_end_timestamp", paramdpl.f);
      contentValues.put("data", arrayOfByte);
      if (paramBoolean) {
        bool = true;
      } else {
        bool = false;
      } 
      contentValues.put("has_realtime", Integer.valueOf(bool));
      try {
        if (A().insert("queue", null, contentValues) == -1L) {
          u().x().a("Failed to insert bundle (got -1). appId", dkw.a(paramdpl.o));
          return false;
        } 
      } catch (SQLiteException sQLiteException) {
        u().x().a("Error storing bundle. appId", dkw.a(paramdpl.o), sQLiteException);
        return false;
      } 
    } catch (IOException iOException) {
      u().x().a("Data loss. Failed to serialize bundle. appId", dkw.a(paramdpl.o), iOException);
      return false;
    } 
  }
  
  boolean a(String paramString, List<Integer> paramList) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual R : ()V
    //   9: aload_0
    //   10: invokevirtual e : ()V
    //   13: aload_0
    //   14: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore #7
    //   19: aload_0
    //   20: ldc_w 'select count(1) from audience_filter_values where app_id=?'
    //   23: iconst_1
    //   24: anewarray java/lang/String
    //   27: dup
    //   28: iconst_0
    //   29: aload_1
    //   30: aastore
    //   31: invokespecial b : (Ljava/lang/String;[Ljava/lang/String;)J
    //   34: lstore #5
    //   36: aload_0
    //   37: invokevirtual w : ()Ldka;
    //   40: aload_1
    //   41: invokevirtual f : (Ljava/lang/String;)I
    //   44: istore #4
    //   46: lload #5
    //   48: iload #4
    //   50: i2l
    //   51: lcmp
    //   52: ifgt -> 78
    //   55: iconst_0
    //   56: ireturn
    //   57: astore_2
    //   58: aload_0
    //   59: invokevirtual u : ()Ldkw;
    //   62: invokevirtual x : ()Ldky;
    //   65: ldc_w 'Database error querying filters. appId'
    //   68: aload_1
    //   69: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   72: aload_2
    //   73: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   76: iconst_0
    //   77: ireturn
    //   78: new java/util/ArrayList
    //   81: dup
    //   82: invokespecial <init> : ()V
    //   85: astore #8
    //   87: aload_2
    //   88: ifnull -> 151
    //   91: iconst_0
    //   92: istore_3
    //   93: iload_3
    //   94: aload_2
    //   95: invokeinterface size : ()I
    //   100: if_icmpge -> 151
    //   103: aload_2
    //   104: iload_3
    //   105: invokeinterface get : (I)Ljava/lang/Object;
    //   110: checkcast java/lang/Integer
    //   113: astore #9
    //   115: aload #9
    //   117: ifnull -> 55
    //   120: aload #9
    //   122: instanceof java/lang/Integer
    //   125: ifeq -> 55
    //   128: aload #8
    //   130: aload #9
    //   132: invokevirtual intValue : ()I
    //   135: invokestatic toString : (I)Ljava/lang/String;
    //   138: invokeinterface add : (Ljava/lang/Object;)Z
    //   143: pop
    //   144: iload_3
    //   145: iconst_1
    //   146: iadd
    //   147: istore_3
    //   148: goto -> 93
    //   151: ldc_w ','
    //   154: aload #8
    //   156: invokestatic join : (Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   159: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   162: astore_2
    //   163: new java/lang/StringBuilder
    //   166: dup
    //   167: aload_2
    //   168: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   171: invokevirtual length : ()I
    //   174: iconst_2
    //   175: iadd
    //   176: invokespecial <init> : (I)V
    //   179: ldc_w '('
    //   182: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: aload_2
    //   186: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc_w ')'
    //   192: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: invokevirtual toString : ()Ljava/lang/String;
    //   198: astore_2
    //   199: aload #7
    //   201: ldc_w 'audience_filter_values'
    //   204: new java/lang/StringBuilder
    //   207: dup
    //   208: aload_2
    //   209: invokestatic valueOf : (Ljava/lang/Object;)Ljava/lang/String;
    //   212: invokevirtual length : ()I
    //   215: sipush #140
    //   218: iadd
    //   219: invokespecial <init> : (I)V
    //   222: ldc_w 'audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in '
    //   225: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: aload_2
    //   229: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: ldc_w ' order by rowid desc limit -1 offset ?)'
    //   235: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   238: invokevirtual toString : ()Ljava/lang/String;
    //   241: iconst_2
    //   242: anewarray java/lang/String
    //   245: dup
    //   246: iconst_0
    //   247: aload_1
    //   248: aastore
    //   249: dup
    //   250: iconst_1
    //   251: iload #4
    //   253: invokestatic toString : (I)Ljava/lang/String;
    //   256: aastore
    //   257: invokevirtual delete : (Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   260: ifle -> 55
    //   263: iconst_1
    //   264: ireturn
    // Exception table:
    //   from	to	target	type
    //   19	36	57	android/database/sqlite/SQLiteException
  }
  
  @WorkerThread
  public djw b(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual e : ()V
    //   9: aload_0
    //   10: invokevirtual R : ()V
    //   13: aload_0
    //   14: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc_w 'apps'
    //   20: bipush #23
    //   22: anewarray java/lang/String
    //   25: dup
    //   26: iconst_0
    //   27: ldc_w 'app_instance_id'
    //   30: aastore
    //   31: dup
    //   32: iconst_1
    //   33: ldc_w 'gmp_app_id'
    //   36: aastore
    //   37: dup
    //   38: iconst_2
    //   39: ldc_w 'resettable_device_id_hash'
    //   42: aastore
    //   43: dup
    //   44: iconst_3
    //   45: ldc_w 'last_bundle_index'
    //   48: aastore
    //   49: dup
    //   50: iconst_4
    //   51: ldc 'last_bundle_start_timestamp'
    //   53: aastore
    //   54: dup
    //   55: iconst_5
    //   56: ldc_w 'last_bundle_end_timestamp'
    //   59: aastore
    //   60: dup
    //   61: bipush #6
    //   63: ldc 'app_version'
    //   65: aastore
    //   66: dup
    //   67: bipush #7
    //   69: ldc 'app_store'
    //   71: aastore
    //   72: dup
    //   73: bipush #8
    //   75: ldc 'gmp_version'
    //   77: aastore
    //   78: dup
    //   79: bipush #9
    //   81: ldc 'dev_cert_hash'
    //   83: aastore
    //   84: dup
    //   85: bipush #10
    //   87: ldc 'measurement_enabled'
    //   89: aastore
    //   90: dup
    //   91: bipush #11
    //   93: ldc 'day'
    //   95: aastore
    //   96: dup
    //   97: bipush #12
    //   99: ldc 'daily_public_events_count'
    //   101: aastore
    //   102: dup
    //   103: bipush #13
    //   105: ldc 'daily_events_count'
    //   107: aastore
    //   108: dup
    //   109: bipush #14
    //   111: ldc 'daily_conversions_count'
    //   113: aastore
    //   114: dup
    //   115: bipush #15
    //   117: ldc 'config_fetched_time'
    //   119: aastore
    //   120: dup
    //   121: bipush #16
    //   123: ldc 'failed_config_fetch_time'
    //   125: aastore
    //   126: dup
    //   127: bipush #17
    //   129: ldc 'app_version_int'
    //   131: aastore
    //   132: dup
    //   133: bipush #18
    //   135: ldc 'firebase_instance_id'
    //   137: aastore
    //   138: dup
    //   139: bipush #19
    //   141: ldc 'daily_error_events_count'
    //   143: aastore
    //   144: dup
    //   145: bipush #20
    //   147: ldc 'daily_realtime_events_count'
    //   149: aastore
    //   150: dup
    //   151: bipush #21
    //   153: ldc 'health_monitor_sample'
    //   155: aastore
    //   156: dup
    //   157: bipush #22
    //   159: ldc 'android_id'
    //   161: aastore
    //   162: ldc_w 'app_id=?'
    //   165: iconst_1
    //   166: anewarray java/lang/String
    //   169: dup
    //   170: iconst_0
    //   171: aload_1
    //   172: aastore
    //   173: aconst_null
    //   174: aconst_null
    //   175: aconst_null
    //   176: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   179: astore #7
    //   181: aload #7
    //   183: astore #6
    //   185: aload #7
    //   187: invokeinterface moveToFirst : ()Z
    //   192: istore_3
    //   193: iload_3
    //   194: ifne -> 213
    //   197: aload #7
    //   199: ifnull -> 209
    //   202: aload #7
    //   204: invokeinterface close : ()V
    //   209: aconst_null
    //   210: astore_1
    //   211: aload_1
    //   212: areturn
    //   213: aload #7
    //   215: astore #6
    //   217: new djw
    //   220: dup
    //   221: aload_0
    //   222: getfield n : Ldlv;
    //   225: aload_1
    //   226: invokespecial <init> : (Ldlv;Ljava/lang/String;)V
    //   229: astore #8
    //   231: aload #7
    //   233: astore #6
    //   235: aload #8
    //   237: aload #7
    //   239: iconst_0
    //   240: invokeinterface getString : (I)Ljava/lang/String;
    //   245: invokevirtual a : (Ljava/lang/String;)V
    //   248: aload #7
    //   250: astore #6
    //   252: aload #8
    //   254: aload #7
    //   256: iconst_1
    //   257: invokeinterface getString : (I)Ljava/lang/String;
    //   262: invokevirtual b : (Ljava/lang/String;)V
    //   265: aload #7
    //   267: astore #6
    //   269: aload #8
    //   271: aload #7
    //   273: iconst_2
    //   274: invokeinterface getString : (I)Ljava/lang/String;
    //   279: invokevirtual c : (Ljava/lang/String;)V
    //   282: aload #7
    //   284: astore #6
    //   286: aload #8
    //   288: aload #7
    //   290: iconst_3
    //   291: invokeinterface getLong : (I)J
    //   296: invokevirtual f : (J)V
    //   299: aload #7
    //   301: astore #6
    //   303: aload #8
    //   305: aload #7
    //   307: iconst_4
    //   308: invokeinterface getLong : (I)J
    //   313: invokevirtual a : (J)V
    //   316: aload #7
    //   318: astore #6
    //   320: aload #8
    //   322: aload #7
    //   324: iconst_5
    //   325: invokeinterface getLong : (I)J
    //   330: invokevirtual b : (J)V
    //   333: aload #7
    //   335: astore #6
    //   337: aload #8
    //   339: aload #7
    //   341: bipush #6
    //   343: invokeinterface getString : (I)Ljava/lang/String;
    //   348: invokevirtual e : (Ljava/lang/String;)V
    //   351: aload #7
    //   353: astore #6
    //   355: aload #8
    //   357: aload #7
    //   359: bipush #7
    //   361: invokeinterface getString : (I)Ljava/lang/String;
    //   366: invokevirtual f : (Ljava/lang/String;)V
    //   369: aload #7
    //   371: astore #6
    //   373: aload #8
    //   375: aload #7
    //   377: bipush #8
    //   379: invokeinterface getLong : (I)J
    //   384: invokevirtual d : (J)V
    //   387: aload #7
    //   389: astore #6
    //   391: aload #8
    //   393: aload #7
    //   395: bipush #9
    //   397: invokeinterface getLong : (I)J
    //   402: invokevirtual e : (J)V
    //   405: aload #7
    //   407: astore #6
    //   409: aload #7
    //   411: bipush #10
    //   413: invokeinterface isNull : (I)Z
    //   418: ifeq -> 740
    //   421: iconst_1
    //   422: istore_2
    //   423: goto -> 863
    //   426: aload #7
    //   428: astore #6
    //   430: aload #8
    //   432: iload_3
    //   433: invokevirtual a : (Z)V
    //   436: aload #7
    //   438: astore #6
    //   440: aload #8
    //   442: aload #7
    //   444: bipush #11
    //   446: invokeinterface getLong : (I)J
    //   451: invokevirtual i : (J)V
    //   454: aload #7
    //   456: astore #6
    //   458: aload #8
    //   460: aload #7
    //   462: bipush #12
    //   464: invokeinterface getLong : (I)J
    //   469: invokevirtual j : (J)V
    //   472: aload #7
    //   474: astore #6
    //   476: aload #8
    //   478: aload #7
    //   480: bipush #13
    //   482: invokeinterface getLong : (I)J
    //   487: invokevirtual k : (J)V
    //   490: aload #7
    //   492: astore #6
    //   494: aload #8
    //   496: aload #7
    //   498: bipush #14
    //   500: invokeinterface getLong : (I)J
    //   505: invokevirtual l : (J)V
    //   508: aload #7
    //   510: astore #6
    //   512: aload #8
    //   514: aload #7
    //   516: bipush #15
    //   518: invokeinterface getLong : (I)J
    //   523: invokevirtual g : (J)V
    //   526: aload #7
    //   528: astore #6
    //   530: aload #8
    //   532: aload #7
    //   534: bipush #16
    //   536: invokeinterface getLong : (I)J
    //   541: invokevirtual h : (J)V
    //   544: aload #7
    //   546: astore #6
    //   548: aload #7
    //   550: bipush #17
    //   552: invokeinterface isNull : (I)Z
    //   557: ifeq -> 757
    //   560: ldc2_w -2147483648
    //   563: lstore #4
    //   565: aload #7
    //   567: astore #6
    //   569: aload #8
    //   571: lload #4
    //   573: invokevirtual c : (J)V
    //   576: aload #7
    //   578: astore #6
    //   580: aload #8
    //   582: aload #7
    //   584: bipush #18
    //   586: invokeinterface getString : (I)Ljava/lang/String;
    //   591: invokevirtual d : (Ljava/lang/String;)V
    //   594: aload #7
    //   596: astore #6
    //   598: aload #8
    //   600: aload #7
    //   602: bipush #19
    //   604: invokeinterface getLong : (I)J
    //   609: invokevirtual n : (J)V
    //   612: aload #7
    //   614: astore #6
    //   616: aload #8
    //   618: aload #7
    //   620: bipush #20
    //   622: invokeinterface getLong : (I)J
    //   627: invokevirtual m : (J)V
    //   630: aload #7
    //   632: astore #6
    //   634: aload #8
    //   636: aload #7
    //   638: bipush #21
    //   640: invokeinterface getString : (I)Ljava/lang/String;
    //   645: invokevirtual g : (Ljava/lang/String;)V
    //   648: aload #7
    //   650: astore #6
    //   652: aload #7
    //   654: bipush #22
    //   656: invokeinterface isNull : (I)Z
    //   661: ifeq -> 776
    //   664: lconst_0
    //   665: lstore #4
    //   667: aload #7
    //   669: astore #6
    //   671: aload #8
    //   673: lload #4
    //   675: invokevirtual o : (J)V
    //   678: aload #7
    //   680: astore #6
    //   682: aload #8
    //   684: invokevirtual a : ()V
    //   687: aload #7
    //   689: astore #6
    //   691: aload #7
    //   693: invokeinterface moveToNext : ()Z
    //   698: ifeq -> 722
    //   701: aload #7
    //   703: astore #6
    //   705: aload_0
    //   706: invokevirtual u : ()Ldkw;
    //   709: invokevirtual x : ()Ldky;
    //   712: ldc_w 'Got multiple records for app, expected one. appId'
    //   715: aload_1
    //   716: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   719: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   722: aload #8
    //   724: astore_1
    //   725: aload #7
    //   727: ifnull -> 211
    //   730: aload #7
    //   732: invokeinterface close : ()V
    //   737: aload #8
    //   739: areturn
    //   740: aload #7
    //   742: astore #6
    //   744: aload #7
    //   746: bipush #10
    //   748: invokeinterface getInt : (I)I
    //   753: istore_2
    //   754: goto -> 863
    //   757: aload #7
    //   759: astore #6
    //   761: aload #7
    //   763: bipush #17
    //   765: invokeinterface getInt : (I)I
    //   770: i2l
    //   771: lstore #4
    //   773: goto -> 565
    //   776: aload #7
    //   778: astore #6
    //   780: aload #7
    //   782: bipush #22
    //   784: invokeinterface getLong : (I)J
    //   789: lstore #4
    //   791: goto -> 667
    //   794: astore #8
    //   796: aconst_null
    //   797: astore #7
    //   799: aload #7
    //   801: astore #6
    //   803: aload_0
    //   804: invokevirtual u : ()Ldkw;
    //   807: invokevirtual x : ()Ldky;
    //   810: ldc_w 'Error querying app. appId'
    //   813: aload_1
    //   814: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   817: aload #8
    //   819: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   822: aload #7
    //   824: ifnull -> 834
    //   827: aload #7
    //   829: invokeinterface close : ()V
    //   834: aconst_null
    //   835: areturn
    //   836: astore_1
    //   837: aconst_null
    //   838: astore #6
    //   840: aload #6
    //   842: ifnull -> 852
    //   845: aload #6
    //   847: invokeinterface close : ()V
    //   852: aload_1
    //   853: athrow
    //   854: astore_1
    //   855: goto -> 840
    //   858: astore #8
    //   860: goto -> 799
    //   863: iload_2
    //   864: ifeq -> 872
    //   867: iconst_1
    //   868: istore_3
    //   869: goto -> 426
    //   872: iconst_0
    //   873: istore_3
    //   874: goto -> 426
    // Exception table:
    //   from	to	target	type
    //   13	181	794	android/database/sqlite/SQLiteException
    //   13	181	836	finally
    //   185	193	858	android/database/sqlite/SQLiteException
    //   185	193	854	finally
    //   217	231	858	android/database/sqlite/SQLiteException
    //   217	231	854	finally
    //   235	248	858	android/database/sqlite/SQLiteException
    //   235	248	854	finally
    //   252	265	858	android/database/sqlite/SQLiteException
    //   252	265	854	finally
    //   269	282	858	android/database/sqlite/SQLiteException
    //   269	282	854	finally
    //   286	299	858	android/database/sqlite/SQLiteException
    //   286	299	854	finally
    //   303	316	858	android/database/sqlite/SQLiteException
    //   303	316	854	finally
    //   320	333	858	android/database/sqlite/SQLiteException
    //   320	333	854	finally
    //   337	351	858	android/database/sqlite/SQLiteException
    //   337	351	854	finally
    //   355	369	858	android/database/sqlite/SQLiteException
    //   355	369	854	finally
    //   373	387	858	android/database/sqlite/SQLiteException
    //   373	387	854	finally
    //   391	405	858	android/database/sqlite/SQLiteException
    //   391	405	854	finally
    //   409	421	858	android/database/sqlite/SQLiteException
    //   409	421	854	finally
    //   430	436	858	android/database/sqlite/SQLiteException
    //   430	436	854	finally
    //   440	454	858	android/database/sqlite/SQLiteException
    //   440	454	854	finally
    //   458	472	858	android/database/sqlite/SQLiteException
    //   458	472	854	finally
    //   476	490	858	android/database/sqlite/SQLiteException
    //   476	490	854	finally
    //   494	508	858	android/database/sqlite/SQLiteException
    //   494	508	854	finally
    //   512	526	858	android/database/sqlite/SQLiteException
    //   512	526	854	finally
    //   530	544	858	android/database/sqlite/SQLiteException
    //   530	544	854	finally
    //   548	560	858	android/database/sqlite/SQLiteException
    //   548	560	854	finally
    //   569	576	858	android/database/sqlite/SQLiteException
    //   569	576	854	finally
    //   580	594	858	android/database/sqlite/SQLiteException
    //   580	594	854	finally
    //   598	612	858	android/database/sqlite/SQLiteException
    //   598	612	854	finally
    //   616	630	858	android/database/sqlite/SQLiteException
    //   616	630	854	finally
    //   634	648	858	android/database/sqlite/SQLiteException
    //   634	648	854	finally
    //   652	664	858	android/database/sqlite/SQLiteException
    //   652	664	854	finally
    //   671	678	858	android/database/sqlite/SQLiteException
    //   671	678	854	finally
    //   682	687	858	android/database/sqlite/SQLiteException
    //   682	687	854	finally
    //   691	701	858	android/database/sqlite/SQLiteException
    //   691	701	854	finally
    //   705	722	858	android/database/sqlite/SQLiteException
    //   705	722	854	finally
    //   744	754	858	android/database/sqlite/SQLiteException
    //   744	754	854	finally
    //   761	773	858	android/database/sqlite/SQLiteException
    //   761	773	854	finally
    //   780	791	858	android/database/sqlite/SQLiteException
    //   780	791	854	finally
    //   803	822	854	finally
  }
  
  @WorkerThread
  Object b(Cursor paramCursor, int paramInt) {
    int i = a(paramCursor, paramInt);
    switch (i) {
      default:
        u().x().a("Loaded invalid unknown value type, ignoring it", Integer.valueOf(i));
        return null;
      case 0:
        u().x().a("Loaded invalid null value from database");
        return null;
      case 1:
        return Long.valueOf(paramCursor.getLong(paramInt));
      case 2:
        return Double.valueOf(paramCursor.getDouble(paramInt));
      case 3:
        return paramCursor.getString(paramInt);
      case 4:
        break;
    } 
    u().x().a("Loaded invalid blob type value, ignoring it");
    return null;
  }
  
  public String b(long paramLong) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #6
    //   3: aload_0
    //   4: invokevirtual e : ()V
    //   7: aload_0
    //   8: invokevirtual R : ()V
    //   11: aload_0
    //   12: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   15: ldc_w 'select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;'
    //   18: iconst_1
    //   19: anewarray java/lang/String
    //   22: dup
    //   23: iconst_0
    //   24: lload_1
    //   25: invokestatic valueOf : (J)Ljava/lang/String;
    //   28: aastore
    //   29: invokevirtual rawQuery : (Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   32: astore_3
    //   33: aload_3
    //   34: astore #4
    //   36: aload_3
    //   37: invokeinterface moveToFirst : ()Z
    //   42: ifne -> 82
    //   45: aload_3
    //   46: astore #4
    //   48: aload_0
    //   49: invokevirtual u : ()Ldkw;
    //   52: invokevirtual D : ()Ldky;
    //   55: ldc_w 'No expired configs for apps with pending events'
    //   58: invokevirtual a : (Ljava/lang/String;)V
    //   61: aload #6
    //   63: astore #4
    //   65: aload_3
    //   66: ifnull -> 79
    //   69: aload_3
    //   70: invokeinterface close : ()V
    //   75: aload #6
    //   77: astore #4
    //   79: aload #4
    //   81: areturn
    //   82: aload_3
    //   83: astore #4
    //   85: aload_3
    //   86: iconst_0
    //   87: invokeinterface getString : (I)Ljava/lang/String;
    //   92: astore #5
    //   94: aload #5
    //   96: astore #4
    //   98: aload_3
    //   99: ifnull -> 79
    //   102: aload_3
    //   103: invokeinterface close : ()V
    //   108: aload #5
    //   110: areturn
    //   111: astore #5
    //   113: aconst_null
    //   114: astore_3
    //   115: aload_3
    //   116: astore #4
    //   118: aload_0
    //   119: invokevirtual u : ()Ldkw;
    //   122: invokevirtual x : ()Ldky;
    //   125: ldc_w 'Error selecting expired configs'
    //   128: aload #5
    //   130: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   133: aload #6
    //   135: astore #4
    //   137: aload_3
    //   138: ifnull -> 79
    //   141: aload_3
    //   142: invokeinterface close : ()V
    //   147: aconst_null
    //   148: areturn
    //   149: astore_3
    //   150: aconst_null
    //   151: astore #4
    //   153: aload #4
    //   155: ifnull -> 165
    //   158: aload #4
    //   160: invokeinterface close : ()V
    //   165: aload_3
    //   166: athrow
    //   167: astore_3
    //   168: goto -> 153
    //   171: astore #5
    //   173: goto -> 115
    // Exception table:
    //   from	to	target	type
    //   11	33	111	android/database/sqlite/SQLiteException
    //   11	33	149	finally
    //   36	45	171	android/database/sqlite/SQLiteException
    //   36	45	167	finally
    //   48	61	171	android/database/sqlite/SQLiteException
    //   48	61	167	finally
    //   85	94	171	android/database/sqlite/SQLiteException
    //   85	94	167	finally
    //   118	133	167	finally
  }
  
  @WorkerThread
  public List<zzatg> b(String paramString, long paramLong) {
    csp.a(paramString);
    e();
    R();
    if (paramLong < 0L) {
      u().z().a("Invalid time querying expired conditional properties", dkw.a(paramString), Long.valueOf(paramLong));
      return Collections.emptyList();
    } 
    return a("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[] { paramString, String.valueOf(paramLong) });
  }
  
  @WorkerThread
  public List<zzatg> b(String paramString1, String paramString2, String paramString3) {
    csp.a(paramString1);
    e();
    R();
    ArrayList<String> arrayList = new ArrayList(3);
    arrayList.add(paramString1);
    StringBuilder stringBuilder = new StringBuilder("app_id=?");
    if (!TextUtils.isEmpty(paramString2)) {
      arrayList.add(paramString2);
      stringBuilder.append(" and origin=?");
    } 
    if (!TextUtils.isEmpty(paramString3)) {
      arrayList.add(String.valueOf(paramString3).concat("*"));
      stringBuilder.append(" and name glob ?");
    } 
    String[] arrayOfString = arrayList.<String>toArray(new String[arrayList.size()]);
    return a(stringBuilder.toString(), arrayOfString);
  }
  
  @WorkerThread
  void b(String paramString, int paramInt) {
    R();
    e();
    csp.a(paramString);
    SQLiteDatabase sQLiteDatabase = A();
    sQLiteDatabase.delete("property_filters", "app_id=? and audience_id=?", new String[] { paramString, String.valueOf(paramInt) });
    sQLiteDatabase.delete("event_filters", "app_id=? and audience_id=?", new String[] { paramString, String.valueOf(paramInt) });
  }
  
  @WorkerThread
  public void b(String paramString1, String paramString2) {
    csp.a(paramString1);
    csp.a(paramString2);
    e();
    R();
    try {
      int i = A().delete("user_attributes", "app_id=? and name=?", new String[] { paramString1, paramString2 });
      u().D().a("Deleted user attribute rows", Integer.valueOf(i));
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error deleting user attribute. appId", dkw.a(paramString1), paramString2, sQLiteException);
      return;
    } 
  }
  
  public long c(String paramString) {
    csp.a(paramString);
    e();
    R();
    try {
      int i = A().delete("raw_events", "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)", new String[] { paramString, String.valueOf(w().j(paramString)) });
      return i;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error deleting over the limit events. appId", dkw.a(paramString), sQLiteException);
      return 0L;
    } 
  }
  
  @WorkerThread
  public dot c(String paramString1, String paramString2) {
    // Byte code:
    //   0: aconst_null
    //   1: astore #7
    //   3: aload_1
    //   4: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   7: pop
    //   8: aload_2
    //   9: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_0
    //   14: invokevirtual e : ()V
    //   17: aload_0
    //   18: invokevirtual R : ()V
    //   21: aload_0
    //   22: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   25: ldc_w 'user_attributes'
    //   28: iconst_3
    //   29: anewarray java/lang/String
    //   32: dup
    //   33: iconst_0
    //   34: ldc_w 'set_timestamp'
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: ldc_w 'value'
    //   43: aastore
    //   44: dup
    //   45: iconst_2
    //   46: ldc 'origin'
    //   48: aastore
    //   49: ldc_w 'app_id=? and name=?'
    //   52: iconst_2
    //   53: anewarray java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: aload_1
    //   59: aastore
    //   60: dup
    //   61: iconst_1
    //   62: aload_2
    //   63: aastore
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   70: astore #6
    //   72: aload #6
    //   74: invokeinterface moveToFirst : ()Z
    //   79: istore_3
    //   80: iload_3
    //   81: ifne -> 100
    //   84: aload #6
    //   86: ifnull -> 96
    //   89: aload #6
    //   91: invokeinterface close : ()V
    //   96: aconst_null
    //   97: astore_1
    //   98: aload_1
    //   99: areturn
    //   100: aload #6
    //   102: iconst_0
    //   103: invokeinterface getLong : (I)J
    //   108: lstore #4
    //   110: aload_0
    //   111: aload #6
    //   113: iconst_1
    //   114: invokevirtual b : (Landroid/database/Cursor;I)Ljava/lang/Object;
    //   117: astore #7
    //   119: new dot
    //   122: dup
    //   123: aload_1
    //   124: aload #6
    //   126: iconst_2
    //   127: invokeinterface getString : (I)Ljava/lang/String;
    //   132: aload_2
    //   133: lload #4
    //   135: aload #7
    //   137: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    //   140: astore #7
    //   142: aload #6
    //   144: invokeinterface moveToNext : ()Z
    //   149: ifeq -> 169
    //   152: aload_0
    //   153: invokevirtual u : ()Ldkw;
    //   156: invokevirtual x : ()Ldky;
    //   159: ldc_w 'Got multiple records for user property, expected one. appId'
    //   162: aload_1
    //   163: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   166: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   169: aload #7
    //   171: astore_1
    //   172: aload #6
    //   174: ifnull -> 98
    //   177: aload #6
    //   179: invokeinterface close : ()V
    //   184: aload #7
    //   186: areturn
    //   187: astore #7
    //   189: aconst_null
    //   190: astore #6
    //   192: aload_0
    //   193: invokevirtual u : ()Ldkw;
    //   196: invokevirtual x : ()Ldky;
    //   199: ldc_w 'Error querying user property. appId'
    //   202: aload_1
    //   203: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   206: aload_2
    //   207: aload #7
    //   209: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   212: aload #6
    //   214: ifnull -> 224
    //   217: aload #6
    //   219: invokeinterface close : ()V
    //   224: aconst_null
    //   225: areturn
    //   226: astore_1
    //   227: aload #7
    //   229: astore_2
    //   230: aload_2
    //   231: ifnull -> 240
    //   234: aload_2
    //   235: invokeinterface close : ()V
    //   240: aload_1
    //   241: athrow
    //   242: astore_1
    //   243: aload #6
    //   245: astore_2
    //   246: goto -> 230
    //   249: astore_1
    //   250: aload #6
    //   252: astore_2
    //   253: goto -> 230
    //   256: astore #7
    //   258: goto -> 192
    // Exception table:
    //   from	to	target	type
    //   21	72	187	android/database/sqlite/SQLiteException
    //   21	72	226	finally
    //   72	80	256	android/database/sqlite/SQLiteException
    //   72	80	242	finally
    //   100	169	256	android/database/sqlite/SQLiteException
    //   100	169	242	finally
    //   192	212	249	finally
  }
  
  @WorkerThread
  public zzatg d(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_2
    //   6: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   9: pop
    //   10: aload_0
    //   11: invokevirtual e : ()V
    //   14: aload_0
    //   15: invokevirtual R : ()V
    //   18: aload_0
    //   19: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   22: ldc_w 'conditional_properties'
    //   25: bipush #11
    //   27: anewarray java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: ldc 'origin'
    //   34: aastore
    //   35: dup
    //   36: iconst_1
    //   37: ldc_w 'value'
    //   40: aastore
    //   41: dup
    //   42: iconst_2
    //   43: ldc_w 'active'
    //   46: aastore
    //   47: dup
    //   48: iconst_3
    //   49: ldc_w 'trigger_event_name'
    //   52: aastore
    //   53: dup
    //   54: iconst_4
    //   55: ldc_w 'trigger_timeout'
    //   58: aastore
    //   59: dup
    //   60: iconst_5
    //   61: ldc_w 'timed_out_event'
    //   64: aastore
    //   65: dup
    //   66: bipush #6
    //   68: ldc_w 'creation_timestamp'
    //   71: aastore
    //   72: dup
    //   73: bipush #7
    //   75: ldc_w 'triggered_event'
    //   78: aastore
    //   79: dup
    //   80: bipush #8
    //   82: ldc_w 'triggered_timestamp'
    //   85: aastore
    //   86: dup
    //   87: bipush #9
    //   89: ldc_w 'time_to_live'
    //   92: aastore
    //   93: dup
    //   94: bipush #10
    //   96: ldc_w 'expired_event'
    //   99: aastore
    //   100: ldc_w 'app_id=? and name=?'
    //   103: iconst_2
    //   104: anewarray java/lang/String
    //   107: dup
    //   108: iconst_0
    //   109: aload_1
    //   110: aastore
    //   111: dup
    //   112: iconst_1
    //   113: aload_2
    //   114: aastore
    //   115: aconst_null
    //   116: aconst_null
    //   117: aconst_null
    //   118: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   121: astore #12
    //   123: aload #12
    //   125: invokeinterface moveToFirst : ()Z
    //   130: istore_3
    //   131: iload_3
    //   132: ifne -> 151
    //   135: aload #12
    //   137: ifnull -> 147
    //   140: aload #12
    //   142: invokeinterface close : ()V
    //   147: aconst_null
    //   148: astore_1
    //   149: aload_1
    //   150: areturn
    //   151: aload #12
    //   153: iconst_0
    //   154: invokeinterface getString : (I)Ljava/lang/String;
    //   159: astore #13
    //   161: aload_0
    //   162: aload #12
    //   164: iconst_1
    //   165: invokevirtual b : (Landroid/database/Cursor;I)Ljava/lang/Object;
    //   168: astore #14
    //   170: aload #12
    //   172: iconst_2
    //   173: invokeinterface getInt : (I)I
    //   178: ifeq -> 394
    //   181: iconst_1
    //   182: istore_3
    //   183: aload #12
    //   185: iconst_3
    //   186: invokeinterface getString : (I)Ljava/lang/String;
    //   191: astore #15
    //   193: aload #12
    //   195: iconst_4
    //   196: invokeinterface getLong : (I)J
    //   201: lstore #4
    //   203: aload_0
    //   204: invokevirtual q : ()Ldou;
    //   207: aload #12
    //   209: iconst_5
    //   210: invokeinterface getBlob : (I)[B
    //   215: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   218: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   221: checkcast com/google/android/gms/internal/zzatq
    //   224: astore #16
    //   226: aload #12
    //   228: bipush #6
    //   230: invokeinterface getLong : (I)J
    //   235: lstore #6
    //   237: aload_0
    //   238: invokevirtual q : ()Ldou;
    //   241: aload #12
    //   243: bipush #7
    //   245: invokeinterface getBlob : (I)[B
    //   250: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   253: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   256: checkcast com/google/android/gms/internal/zzatq
    //   259: astore #17
    //   261: aload #12
    //   263: bipush #8
    //   265: invokeinterface getLong : (I)J
    //   270: lstore #8
    //   272: aload #12
    //   274: bipush #9
    //   276: invokeinterface getLong : (I)J
    //   281: lstore #10
    //   283: aload_0
    //   284: invokevirtual q : ()Ldou;
    //   287: aload #12
    //   289: bipush #10
    //   291: invokeinterface getBlob : (I)[B
    //   296: getstatic com/google/android/gms/internal/zzatq.CREATOR : Landroid/os/Parcelable$Creator;
    //   299: invokevirtual a : ([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;
    //   302: checkcast com/google/android/gms/internal/zzatq
    //   305: astore #18
    //   307: new com/google/android/gms/internal/zzatg
    //   310: dup
    //   311: aload_1
    //   312: aload #13
    //   314: new com/google/android/gms/internal/zzauq
    //   317: dup
    //   318: aload_2
    //   319: lload #8
    //   321: aload #14
    //   323: aload #13
    //   325: invokespecial <init> : (Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V
    //   328: lload #6
    //   330: iload_3
    //   331: aload #15
    //   333: aload #16
    //   335: lload #4
    //   337: aload #17
    //   339: lload #10
    //   341: aload #18
    //   343: invokespecial <init> : (Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzauq;JZLjava/lang/String;Lcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;JLcom/google/android/gms/internal/zzatq;)V
    //   346: astore #13
    //   348: aload #12
    //   350: invokeinterface moveToNext : ()Z
    //   355: ifeq -> 376
    //   358: aload_0
    //   359: invokevirtual u : ()Ldkw;
    //   362: invokevirtual x : ()Ldky;
    //   365: ldc_w 'Got multiple records for conditional property, expected one'
    //   368: aload_1
    //   369: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   372: aload_2
    //   373: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   376: aload #13
    //   378: astore_1
    //   379: aload #12
    //   381: ifnull -> 149
    //   384: aload #12
    //   386: invokeinterface close : ()V
    //   391: aload #13
    //   393: areturn
    //   394: iconst_0
    //   395: istore_3
    //   396: goto -> 183
    //   399: astore #13
    //   401: aconst_null
    //   402: astore #12
    //   404: aload_0
    //   405: invokevirtual u : ()Ldkw;
    //   408: invokevirtual x : ()Ldky;
    //   411: ldc_w 'Error querying conditional property'
    //   414: aload_1
    //   415: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   418: aload_2
    //   419: aload #13
    //   421: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   424: aload #12
    //   426: ifnull -> 436
    //   429: aload #12
    //   431: invokeinterface close : ()V
    //   436: aconst_null
    //   437: areturn
    //   438: astore_1
    //   439: aconst_null
    //   440: astore #12
    //   442: aload #12
    //   444: ifnull -> 454
    //   447: aload #12
    //   449: invokeinterface close : ()V
    //   454: aload_1
    //   455: athrow
    //   456: astore_1
    //   457: goto -> 442
    //   460: astore_1
    //   461: goto -> 442
    //   464: astore #13
    //   466: goto -> 404
    // Exception table:
    //   from	to	target	type
    //   18	123	399	android/database/sqlite/SQLiteException
    //   18	123	438	finally
    //   123	131	464	android/database/sqlite/SQLiteException
    //   123	131	456	finally
    //   151	181	464	android/database/sqlite/SQLiteException
    //   151	181	456	finally
    //   183	376	464	android/database/sqlite/SQLiteException
    //   183	376	456	finally
    //   404	424	460	finally
  }
  
  @WorkerThread
  public byte[] d(String paramString) {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   4: pop
    //   5: aload_0
    //   6: invokevirtual e : ()V
    //   9: aload_0
    //   10: invokevirtual R : ()V
    //   13: aload_0
    //   14: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   17: ldc_w 'apps'
    //   20: iconst_1
    //   21: anewarray java/lang/String
    //   24: dup
    //   25: iconst_0
    //   26: ldc 'remote_config'
    //   28: aastore
    //   29: ldc_w 'app_id=?'
    //   32: iconst_1
    //   33: anewarray java/lang/String
    //   36: dup
    //   37: iconst_0
    //   38: aload_1
    //   39: aastore
    //   40: aconst_null
    //   41: aconst_null
    //   42: aconst_null
    //   43: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   46: astore #4
    //   48: aload #4
    //   50: astore_3
    //   51: aload #4
    //   53: invokeinterface moveToFirst : ()Z
    //   58: istore_2
    //   59: iload_2
    //   60: ifne -> 79
    //   63: aload #4
    //   65: ifnull -> 75
    //   68: aload #4
    //   70: invokeinterface close : ()V
    //   75: aconst_null
    //   76: astore_1
    //   77: aload_1
    //   78: areturn
    //   79: aload #4
    //   81: astore_3
    //   82: aload #4
    //   84: iconst_0
    //   85: invokeinterface getBlob : (I)[B
    //   90: astore #5
    //   92: aload #4
    //   94: astore_3
    //   95: aload #4
    //   97: invokeinterface moveToNext : ()Z
    //   102: ifeq -> 125
    //   105: aload #4
    //   107: astore_3
    //   108: aload_0
    //   109: invokevirtual u : ()Ldkw;
    //   112: invokevirtual x : ()Ldky;
    //   115: ldc_w 'Got multiple records for app config, expected one. appId'
    //   118: aload_1
    //   119: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   122: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;)V
    //   125: aload #5
    //   127: astore_1
    //   128: aload #4
    //   130: ifnull -> 77
    //   133: aload #4
    //   135: invokeinterface close : ()V
    //   140: aload #5
    //   142: areturn
    //   143: astore #5
    //   145: aconst_null
    //   146: astore #4
    //   148: aload #4
    //   150: astore_3
    //   151: aload_0
    //   152: invokevirtual u : ()Ldkw;
    //   155: invokevirtual x : ()Ldky;
    //   158: ldc_w 'Error querying remote config. appId'
    //   161: aload_1
    //   162: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   165: aload #5
    //   167: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   170: aload #4
    //   172: ifnull -> 182
    //   175: aload #4
    //   177: invokeinterface close : ()V
    //   182: aconst_null
    //   183: areturn
    //   184: astore_1
    //   185: aconst_null
    //   186: astore_3
    //   187: aload_3
    //   188: ifnull -> 197
    //   191: aload_3
    //   192: invokeinterface close : ()V
    //   197: aload_1
    //   198: athrow
    //   199: astore_1
    //   200: goto -> 187
    //   203: astore #5
    //   205: goto -> 148
    // Exception table:
    //   from	to	target	type
    //   13	48	143	android/database/sqlite/SQLiteException
    //   13	48	184	finally
    //   51	59	203	android/database/sqlite/SQLiteException
    //   51	59	199	finally
    //   82	92	203	android/database/sqlite/SQLiteException
    //   82	92	199	finally
    //   95	105	203	android/database/sqlite/SQLiteException
    //   95	105	199	finally
    //   108	125	203	android/database/sqlite/SQLiteException
    //   108	125	199	finally
    //   151	170	199	finally
  }
  
  @WorkerThread
  public int e(String paramString1, String paramString2) {
    csp.a(paramString1);
    csp.a(paramString2);
    e();
    R();
    try {
      return A().delete("conditional_properties", "app_id=? and name=?", new String[] { paramString1, paramString2 });
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error deleting conditional property", dkw.a(paramString1), paramString2, sQLiteException);
      return 0;
    } 
  }
  
  @WorkerThread
  void e(String paramString) {
    R();
    e();
    csp.a(paramString);
    SQLiteDatabase sQLiteDatabase = A();
    sQLiteDatabase.delete("property_filters", "app_id=?", new String[] { paramString });
    sQLiteDatabase.delete("event_filters", "app_id=?", new String[] { paramString });
  }
  
  Map<Integer, dpm> f(String paramString) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual R : ()V
    //   4: aload_0
    //   5: invokevirtual e : ()V
    //   8: aload_1
    //   9: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_0
    //   14: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore #4
    //   19: aload #4
    //   21: ldc_w 'audience_filter_values'
    //   24: iconst_2
    //   25: anewarray java/lang/String
    //   28: dup
    //   29: iconst_0
    //   30: ldc_w 'audience_id'
    //   33: aastore
    //   34: dup
    //   35: iconst_1
    //   36: ldc_w 'current_results'
    //   39: aastore
    //   40: ldc_w 'app_id=?'
    //   43: iconst_1
    //   44: anewarray java/lang/String
    //   47: dup
    //   48: iconst_0
    //   49: aload_1
    //   50: aastore
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore #5
    //   59: aload #5
    //   61: astore #4
    //   63: aload #5
    //   65: invokeinterface moveToFirst : ()Z
    //   70: istore_3
    //   71: iload_3
    //   72: ifne -> 91
    //   75: aload #5
    //   77: ifnull -> 87
    //   80: aload #5
    //   82: invokeinterface close : ()V
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: areturn
    //   91: aload #5
    //   93: astore #4
    //   95: new android/support/v4/util/ArrayMap
    //   98: dup
    //   99: invokespecial <init> : ()V
    //   102: astore #6
    //   104: aload #5
    //   106: astore #4
    //   108: aload #5
    //   110: iconst_0
    //   111: invokeinterface getInt : (I)I
    //   116: istore_2
    //   117: aload #5
    //   119: astore #4
    //   121: aload #5
    //   123: iconst_1
    //   124: invokeinterface getBlob : (I)[B
    //   129: invokestatic a : ([B)Ldqv;
    //   132: astore #7
    //   134: aload #5
    //   136: astore #4
    //   138: new dpm
    //   141: dup
    //   142: invokespecial <init> : ()V
    //   145: astore #8
    //   147: aload #5
    //   149: astore #4
    //   151: aload #8
    //   153: aload #7
    //   155: invokevirtual b : (Ldqv;)Ldre;
    //   158: pop
    //   159: aload #5
    //   161: astore #4
    //   163: aload #6
    //   165: iload_2
    //   166: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   169: aload #8
    //   171: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   176: pop
    //   177: aload #5
    //   179: astore #4
    //   181: aload #5
    //   183: invokeinterface moveToNext : ()Z
    //   188: istore_3
    //   189: iload_3
    //   190: ifne -> 104
    //   193: aload #6
    //   195: astore_1
    //   196: aload #5
    //   198: ifnull -> 89
    //   201: aload #5
    //   203: invokeinterface close : ()V
    //   208: aload #6
    //   210: areturn
    //   211: astore #7
    //   213: aload #5
    //   215: astore #4
    //   217: aload_0
    //   218: invokevirtual u : ()Ldkw;
    //   221: invokevirtual x : ()Ldky;
    //   224: ldc_w 'Failed to merge filter results. appId, audienceId, error'
    //   227: aload_1
    //   228: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   231: iload_2
    //   232: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   235: aload #7
    //   237: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    //   240: goto -> 177
    //   243: astore #6
    //   245: aload #5
    //   247: astore #4
    //   249: aload_0
    //   250: invokevirtual u : ()Ldkw;
    //   253: invokevirtual x : ()Ldky;
    //   256: ldc_w 'Database error querying filter results. appId'
    //   259: aload_1
    //   260: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   263: aload #6
    //   265: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   268: aload #5
    //   270: ifnull -> 280
    //   273: aload #5
    //   275: invokeinterface close : ()V
    //   280: aconst_null
    //   281: areturn
    //   282: astore_1
    //   283: aconst_null
    //   284: astore #4
    //   286: aload #4
    //   288: ifnull -> 298
    //   291: aload #4
    //   293: invokeinterface close : ()V
    //   298: aload_1
    //   299: athrow
    //   300: astore_1
    //   301: goto -> 286
    //   304: astore #6
    //   306: aconst_null
    //   307: astore #5
    //   309: goto -> 245
    // Exception table:
    //   from	to	target	type
    //   19	59	304	android/database/sqlite/SQLiteException
    //   19	59	282	finally
    //   63	71	243	android/database/sqlite/SQLiteException
    //   63	71	300	finally
    //   95	104	243	android/database/sqlite/SQLiteException
    //   95	104	300	finally
    //   108	117	243	android/database/sqlite/SQLiteException
    //   108	117	300	finally
    //   121	134	243	android/database/sqlite/SQLiteException
    //   121	134	300	finally
    //   138	147	243	android/database/sqlite/SQLiteException
    //   138	147	300	finally
    //   151	159	211	java/io/IOException
    //   151	159	243	android/database/sqlite/SQLiteException
    //   151	159	300	finally
    //   163	177	243	android/database/sqlite/SQLiteException
    //   163	177	300	finally
    //   181	189	243	android/database/sqlite/SQLiteException
    //   181	189	300	finally
    //   217	240	243	android/database/sqlite/SQLiteException
    //   217	240	300	finally
    //   249	268	300	finally
  }
  
  Map<Integer, List<dox>> f(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual R : ()V
    //   4: aload_0
    //   5: invokevirtual e : ()V
    //   8: aload_1
    //   9: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_2
    //   14: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   17: pop
    //   18: new android/support/v4/util/ArrayMap
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: astore #8
    //   27: aload_0
    //   28: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore #5
    //   33: aload #5
    //   35: ldc_w 'event_filters'
    //   38: iconst_2
    //   39: anewarray java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 'audience_id'
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 'data'
    //   53: aastore
    //   54: ldc_w 'app_id=? AND event_name=?'
    //   57: iconst_2
    //   58: anewarray java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: aload_1
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: aload_2
    //   68: aastore
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore #5
    //   77: aload #5
    //   79: astore_2
    //   80: aload #5
    //   82: invokeinterface moveToFirst : ()Z
    //   87: ifne -> 113
    //   90: aload #5
    //   92: astore_2
    //   93: invokestatic emptyMap : ()Ljava/util/Map;
    //   96: astore #6
    //   98: aload #5
    //   100: ifnull -> 110
    //   103: aload #5
    //   105: invokeinterface close : ()V
    //   110: aload #6
    //   112: areturn
    //   113: aload #5
    //   115: astore_2
    //   116: aload #5
    //   118: iconst_1
    //   119: invokeinterface getBlob : (I)[B
    //   124: invokestatic a : ([B)Ldqv;
    //   127: astore #6
    //   129: aload #5
    //   131: astore_2
    //   132: new dox
    //   135: dup
    //   136: invokespecial <init> : ()V
    //   139: astore #9
    //   141: aload #5
    //   143: astore_2
    //   144: aload #9
    //   146: aload #6
    //   148: invokevirtual b : (Ldqv;)Ldre;
    //   151: pop
    //   152: aload #5
    //   154: astore_2
    //   155: aload #5
    //   157: iconst_0
    //   158: invokeinterface getInt : (I)I
    //   163: istore_3
    //   164: aload #5
    //   166: astore_2
    //   167: aload #8
    //   169: iload_3
    //   170: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   173: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   178: checkcast java/util/List
    //   181: astore #7
    //   183: aload #7
    //   185: astore #6
    //   187: aload #7
    //   189: ifnonnull -> 221
    //   192: aload #5
    //   194: astore_2
    //   195: new java/util/ArrayList
    //   198: dup
    //   199: invokespecial <init> : ()V
    //   202: astore #6
    //   204: aload #5
    //   206: astore_2
    //   207: aload #8
    //   209: iload_3
    //   210: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   213: aload #6
    //   215: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   220: pop
    //   221: aload #5
    //   223: astore_2
    //   224: aload #6
    //   226: aload #9
    //   228: invokeinterface add : (Ljava/lang/Object;)Z
    //   233: pop
    //   234: aload #5
    //   236: astore_2
    //   237: aload #5
    //   239: invokeinterface moveToNext : ()Z
    //   244: istore #4
    //   246: iload #4
    //   248: ifne -> 113
    //   251: aload #5
    //   253: ifnull -> 263
    //   256: aload #5
    //   258: invokeinterface close : ()V
    //   263: aload #8
    //   265: areturn
    //   266: astore #6
    //   268: aload #5
    //   270: astore_2
    //   271: aload_0
    //   272: invokevirtual u : ()Ldkw;
    //   275: invokevirtual x : ()Ldky;
    //   278: ldc_w 'Failed to merge filter. appId'
    //   281: aload_1
    //   282: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   285: aload #6
    //   287: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   290: goto -> 234
    //   293: astore #6
    //   295: aload #5
    //   297: astore_2
    //   298: aload_0
    //   299: invokevirtual u : ()Ldkw;
    //   302: invokevirtual x : ()Ldky;
    //   305: ldc_w 'Database error querying filters. appId'
    //   308: aload_1
    //   309: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   312: aload #6
    //   314: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   317: aload #5
    //   319: ifnull -> 329
    //   322: aload #5
    //   324: invokeinterface close : ()V
    //   329: aconst_null
    //   330: areturn
    //   331: astore_1
    //   332: aconst_null
    //   333: astore_2
    //   334: aload_2
    //   335: ifnull -> 344
    //   338: aload_2
    //   339: invokeinterface close : ()V
    //   344: aload_1
    //   345: athrow
    //   346: astore_1
    //   347: goto -> 334
    //   350: astore #6
    //   352: aconst_null
    //   353: astore #5
    //   355: goto -> 295
    // Exception table:
    //   from	to	target	type
    //   33	77	350	android/database/sqlite/SQLiteException
    //   33	77	331	finally
    //   80	90	293	android/database/sqlite/SQLiteException
    //   80	90	346	finally
    //   93	98	293	android/database/sqlite/SQLiteException
    //   93	98	346	finally
    //   116	129	293	android/database/sqlite/SQLiteException
    //   116	129	346	finally
    //   132	141	293	android/database/sqlite/SQLiteException
    //   132	141	346	finally
    //   144	152	266	java/io/IOException
    //   144	152	293	android/database/sqlite/SQLiteException
    //   144	152	346	finally
    //   155	164	293	android/database/sqlite/SQLiteException
    //   155	164	346	finally
    //   167	183	293	android/database/sqlite/SQLiteException
    //   167	183	346	finally
    //   195	204	293	android/database/sqlite/SQLiteException
    //   195	204	346	finally
    //   207	221	293	android/database/sqlite/SQLiteException
    //   207	221	346	finally
    //   224	234	293	android/database/sqlite/SQLiteException
    //   224	234	346	finally
    //   237	246	293	android/database/sqlite/SQLiteException
    //   237	246	346	finally
    //   271	290	293	android/database/sqlite/SQLiteException
    //   271	290	346	finally
    //   298	317	346	finally
  }
  
  Map<Integer, List<dpa>> g(String paramString1, String paramString2) {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual R : ()V
    //   4: aload_0
    //   5: invokevirtual e : ()V
    //   8: aload_1
    //   9: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   12: pop
    //   13: aload_2
    //   14: invokestatic a : (Ljava/lang/String;)Ljava/lang/String;
    //   17: pop
    //   18: new android/support/v4/util/ArrayMap
    //   21: dup
    //   22: invokespecial <init> : ()V
    //   25: astore #8
    //   27: aload_0
    //   28: invokevirtual A : ()Landroid/database/sqlite/SQLiteDatabase;
    //   31: astore #5
    //   33: aload #5
    //   35: ldc_w 'property_filters'
    //   38: iconst_2
    //   39: anewarray java/lang/String
    //   42: dup
    //   43: iconst_0
    //   44: ldc_w 'audience_id'
    //   47: aastore
    //   48: dup
    //   49: iconst_1
    //   50: ldc_w 'data'
    //   53: aastore
    //   54: ldc_w 'app_id=? AND property_name=?'
    //   57: iconst_2
    //   58: anewarray java/lang/String
    //   61: dup
    //   62: iconst_0
    //   63: aload_1
    //   64: aastore
    //   65: dup
    //   66: iconst_1
    //   67: aload_2
    //   68: aastore
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: invokevirtual query : (Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore #5
    //   77: aload #5
    //   79: astore_2
    //   80: aload #5
    //   82: invokeinterface moveToFirst : ()Z
    //   87: ifne -> 113
    //   90: aload #5
    //   92: astore_2
    //   93: invokestatic emptyMap : ()Ljava/util/Map;
    //   96: astore #6
    //   98: aload #5
    //   100: ifnull -> 110
    //   103: aload #5
    //   105: invokeinterface close : ()V
    //   110: aload #6
    //   112: areturn
    //   113: aload #5
    //   115: astore_2
    //   116: aload #5
    //   118: iconst_1
    //   119: invokeinterface getBlob : (I)[B
    //   124: invokestatic a : ([B)Ldqv;
    //   127: astore #6
    //   129: aload #5
    //   131: astore_2
    //   132: new dpa
    //   135: dup
    //   136: invokespecial <init> : ()V
    //   139: astore #9
    //   141: aload #5
    //   143: astore_2
    //   144: aload #9
    //   146: aload #6
    //   148: invokevirtual b : (Ldqv;)Ldre;
    //   151: pop
    //   152: aload #5
    //   154: astore_2
    //   155: aload #5
    //   157: iconst_0
    //   158: invokeinterface getInt : (I)I
    //   163: istore_3
    //   164: aload #5
    //   166: astore_2
    //   167: aload #8
    //   169: iload_3
    //   170: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   173: invokeinterface get : (Ljava/lang/Object;)Ljava/lang/Object;
    //   178: checkcast java/util/List
    //   181: astore #7
    //   183: aload #7
    //   185: astore #6
    //   187: aload #7
    //   189: ifnonnull -> 221
    //   192: aload #5
    //   194: astore_2
    //   195: new java/util/ArrayList
    //   198: dup
    //   199: invokespecial <init> : ()V
    //   202: astore #6
    //   204: aload #5
    //   206: astore_2
    //   207: aload #8
    //   209: iload_3
    //   210: invokestatic valueOf : (I)Ljava/lang/Integer;
    //   213: aload #6
    //   215: invokeinterface put : (Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   220: pop
    //   221: aload #5
    //   223: astore_2
    //   224: aload #6
    //   226: aload #9
    //   228: invokeinterface add : (Ljava/lang/Object;)Z
    //   233: pop
    //   234: aload #5
    //   236: astore_2
    //   237: aload #5
    //   239: invokeinterface moveToNext : ()Z
    //   244: istore #4
    //   246: iload #4
    //   248: ifne -> 113
    //   251: aload #5
    //   253: ifnull -> 263
    //   256: aload #5
    //   258: invokeinterface close : ()V
    //   263: aload #8
    //   265: areturn
    //   266: astore #6
    //   268: aload #5
    //   270: astore_2
    //   271: aload_0
    //   272: invokevirtual u : ()Ldkw;
    //   275: invokevirtual x : ()Ldky;
    //   278: ldc_w 'Failed to merge filter'
    //   281: aload_1
    //   282: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   285: aload #6
    //   287: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   290: goto -> 234
    //   293: astore #6
    //   295: aload #5
    //   297: astore_2
    //   298: aload_0
    //   299: invokevirtual u : ()Ldkw;
    //   302: invokevirtual x : ()Ldky;
    //   305: ldc_w 'Database error querying filters. appId'
    //   308: aload_1
    //   309: invokestatic a : (Ljava/lang/String;)Ljava/lang/Object;
    //   312: aload #6
    //   314: invokevirtual a : (Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    //   317: aload #5
    //   319: ifnull -> 329
    //   322: aload #5
    //   324: invokeinterface close : ()V
    //   329: aconst_null
    //   330: areturn
    //   331: astore_1
    //   332: aconst_null
    //   333: astore_2
    //   334: aload_2
    //   335: ifnull -> 344
    //   338: aload_2
    //   339: invokeinterface close : ()V
    //   344: aload_1
    //   345: athrow
    //   346: astore_1
    //   347: goto -> 334
    //   350: astore #6
    //   352: aconst_null
    //   353: astore #5
    //   355: goto -> 295
    // Exception table:
    //   from	to	target	type
    //   33	77	350	android/database/sqlite/SQLiteException
    //   33	77	331	finally
    //   80	90	293	android/database/sqlite/SQLiteException
    //   80	90	346	finally
    //   93	98	293	android/database/sqlite/SQLiteException
    //   93	98	346	finally
    //   116	129	293	android/database/sqlite/SQLiteException
    //   116	129	346	finally
    //   132	141	293	android/database/sqlite/SQLiteException
    //   132	141	346	finally
    //   144	152	266	java/io/IOException
    //   144	152	293	android/database/sqlite/SQLiteException
    //   144	152	346	finally
    //   155	164	293	android/database/sqlite/SQLiteException
    //   155	164	346	finally
    //   167	183	293	android/database/sqlite/SQLiteException
    //   167	183	346	finally
    //   195	204	293	android/database/sqlite/SQLiteException
    //   195	204	346	finally
    //   207	221	293	android/database/sqlite/SQLiteException
    //   207	221	346	finally
    //   224	234	293	android/database/sqlite/SQLiteException
    //   224	234	346	finally
    //   237	246	293	android/database/sqlite/SQLiteException
    //   237	246	346	finally
    //   271	290	293	android/database/sqlite/SQLiteException
    //   271	290	346	finally
    //   298	317	346	finally
  }
  
  @WorkerThread
  void g(String paramString) {
    R();
    e();
    csp.a(paramString);
    try {
      SQLiteDatabase sQLiteDatabase = A();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramString;
      int i = sQLiteDatabase.delete("events", "app_id=?", arrayOfString);
      int j = sQLiteDatabase.delete("user_attributes", "app_id=?", arrayOfString);
      int k = sQLiteDatabase.delete("conditional_properties", "app_id=?", arrayOfString);
      int m = sQLiteDatabase.delete("apps", "app_id=?", arrayOfString);
      int n = sQLiteDatabase.delete("raw_events", "app_id=?", arrayOfString);
      int i1 = sQLiteDatabase.delete("raw_events_metadata", "app_id=?", arrayOfString);
      int i2 = sQLiteDatabase.delete("event_filters", "app_id=?", arrayOfString);
      int i3 = sQLiteDatabase.delete("property_filters", "app_id=?", arrayOfString);
      i = sQLiteDatabase.delete("audience_filter_values", "app_id=?", arrayOfString) + i + 0 + j + k + m + n + i1 + i2 + i3;
      if (i > 0)
        u().D().a("Deleted application data. app, records", paramString, Integer.valueOf(i)); 
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Error deleting application data. appId, error", dkw.a(paramString), sQLiteException);
      return;
    } 
  }
  
  @WorkerThread
  public long h(String paramString) {
    csp.a(paramString);
    e();
    R();
    return h(paramString, "first_open_count");
  }
  
  @WorkerThread
  protected long h(String paramString1, String paramString2) {
    csp.a(paramString1);
    csp.a(paramString2);
    e();
    R();
    SQLiteDatabase sQLiteDatabase = A();
    sQLiteDatabase.beginTransaction();
    try {
      long l2 = a((new StringBuilder(String.valueOf(paramString2).length() + 32)).append("select ").append(paramString2).append(" from app2 where app_id=?").toString(), new String[] { paramString1 }, -1L);
      long l1 = l2;
      if (l2 == -1L) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", paramString1);
        contentValues.put("first_open_count", Integer.valueOf(0));
        contentValues.put("previous_install_count", Integer.valueOf(0));
        if (sQLiteDatabase.insertWithOnConflict("app2", null, contentValues, 5) == -1L) {
          u().x().a("Failed to insert column (got -1). appId", dkw.a(paramString1), paramString2);
          return -1L;
        } 
        l1 = 0L;
      } 
    } catch (SQLiteException sQLiteException) {
      long l = 0L;
      u().x().a("Error inserting column. appId", dkw.a(paramString1), paramString2, sQLiteException);
      return l;
    } finally {
      sQLiteDatabase.endTransaction();
    } 
  }
  
  public void i(String paramString) {
    SQLiteDatabase sQLiteDatabase = A();
    try {
      sQLiteDatabase.execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", (Object[])new String[] { paramString, paramString });
      return;
    } catch (SQLiteException sQLiteException) {
      u().x().a("Failed to remove unused event metadata. appId", dkw.a(paramString), sQLiteException);
      return;
    } 
  }
  
  public long j(String paramString) {
    csp.a(paramString);
    return a("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[] { paramString }, 0L);
  }
  
  @WorkerThread
  public void x() {
    R();
    A().beginTransaction();
  }
  
  @WorkerThread
  public void y() {
    R();
    A().setTransactionSuccessful();
  }
  
  @WorkerThread
  public void z() {
    R();
    A().endTransaction();
  }
  
  static {
    a.put("origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;");
  }
  
  static {
    b.put("app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;");
    b.put("app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;");
    b.put("gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;");
    b.put("dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;");
    b.put("measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;");
    b.put("last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;");
    b.put("day", "ALTER TABLE apps ADD COLUMN day INTEGER;");
    b.put("daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;");
    b.put("daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;");
    b.put("daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;");
    b.put("remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;");
    b.put("config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;");
    b.put("failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;");
    b.put("app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;");
    b.put("firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;");
    b.put("daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;");
    b.put("daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;");
    b.put("health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;");
    b.put("android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;");
  }
  
  static {
    c.put("realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;");
  }
  
  static {
    d.put("has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dkb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */