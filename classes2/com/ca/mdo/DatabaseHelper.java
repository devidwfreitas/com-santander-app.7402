package com.ca.mdo;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class DatabaseHelper extends SQLiteOpenHelper {
  public static final String DATABASE_NAME = "CAMDODataModel.db";
  
  public static final String DATABASE_PATH = File.separator + "databases" + File.separator + "CAMDODataModel.db";
  
  public static final int DATABASE_VERSION = 4;
  
  public static final String DB_EVENTS_TABLE = "SESSION_DATA";
  
  private static final String DB_META_DATA_TABLE = "SESSION_META_DATA";
  
  public static final String[] DB_TABLE_FIELD_NAMES = new String[] { "session_id", "session_json", "session_json_type" };
  
  private static String dbPath = null;
  
  private static DatabaseHelper mOpenHelper;
  
  private DatabaseHelper(Context paramContext) {
    super(paramContext, "CAMDODataModel.db", null, 4);
  }
  
  public static DatabaseHelper getDatabaseHelper(Context paramContext) {
    if (mOpenHelper == null)
      mOpenHelper = new DatabaseHelper(paramContext); 
    return mOpenHelper;
  }
  
  private String getPlaceHolders(int paramInt) {
    StringBuffer stringBuffer = new StringBuffer("(");
    for (int i = 0; i < paramInt; i++)
      stringBuffer.append("?,"); 
    return stringBuffer.toString().replaceAll(",$", ")");
  }
  
  private void updateSessionMetadata(ContentValues paramContentValues, String paramString) {
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    if (sQLiteDatabase.update("SESSION_META_DATA", paramContentValues, "session_id='" + paramString + "'", null) == -1L)
      CALog.w("Not able to update session metadata:" + paramContentValues.toString()); 
    sQLiteDatabase.close();
  }
  
  public void clearDatabase(Context paramContext) {
    SQLiteDatabase sQLiteDatabase = mOpenHelper.getWritableDatabase();
    sQLiteDatabase.delete("SESSION_DATA", null, null);
    sQLiteDatabase.close();
  }
  
  protected Map<String, SessionMetaData> getAllSessionMetadata() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    Cursor cursor = getWritableDatabase().query("SESSION_META_DATA", new String[] { "session_id", "session_status", "session_state", "header_json" }, null, null, null, null, "row_id ASC", null);
    while (cursor.moveToNext()) {
      SessionMetaData sessionMetaData = new SessionMetaData(cursor.getString(0), cursor.getString(1), cursor.getInt(2), cursor.getString(3));
      hashMap.put(sessionMetaData.getSessionId(), sessionMetaData);
    } 
    cursor.close();
    return (Map)hashMap;
  }
  
  protected JSONObject getEventsData(String paramString1, String paramString2) {
    JSONObject jSONObject = new JSONObject();
    if (paramString2 != null)
      try {
        JSONArray jSONArray = getJsonData(new String[] { paramString1, "evt" });
        if (jSONArray != null && jSONArray.length() > 0) {
          JSONArray jSONArray1 = getJsonData(new String[] { paramString1, "prf" });
          jSONObject.put("hdr", new JSONObject(paramString2));
          jSONObject.put("evt", jSONArray);
          jSONObject.put("prf", jSONArray1);
          return jSONObject;
        } 
        return null;
      } catch (JSONException jSONException) {
        CALog.e(jSONException.getMessage(), (Throwable)jSONException);
        return null;
      }  
    return jSONObject;
  }
  
  protected JSONArray getJsonData(String[] paramArrayOfString) throws JSONException {
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    JSONArray jSONArray = new JSONArray();
    Cursor cursor = sQLiteDatabase.query("SESSION_DATA", new String[] { "row_id", "session_json" }, "session_id=? and session_json_type in (?)", paramArrayOfString, null, null, "row_id ASC", null);
    while (cursor.moveToNext())
      jSONArray.put(new JSONObject(cursor.getString(1))); 
    cursor.close();
    return jSONArray;
  }
  
  public String getMDODBPath() {
    if (dbPath == null)
      dbPath = getWritableDatabase().getPath(); 
    return dbPath;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SESSION_DATA ( row_id INTEGER PRIMARY KEY ASC NOT NULL,  session_id TEXT NOT NULL , session_json TEXT NOT NULL , session_json_type TEXT NOT NULL ); ");
    paramSQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS SESSION_META_DATA(row_id INTEGER PRIMARY KEY ASC NOT NULL, session_id TEXT NOT NULL , header_json TEXT NOT NULL,session_state TINYINT NOT NULL DEFAULT 0, session_status TEXT );");
    CALog.d("CREATE TABLE IF NOT EXISTS SESSION_DATA ( row_id INTEGER PRIMARY KEY ASC NOT NULL,  session_id TEXT NOT NULL , session_json TEXT NOT NULL , session_json_type TEXT NOT NULL ); ");
    CALog.d("CREATE TABLE IF NOT EXISTS SESSION_META_DATA(row_id INTEGER PRIMARY KEY ASC NOT NULL, session_id TEXT NOT NULL , header_json TEXT NOT NULL,session_state TINYINT NOT NULL DEFAULT 0, session_status TEXT );");
    dbPath = paramSQLiteDatabase.getPath();
  }
  
  public void onOpen(SQLiteDatabase paramSQLiteDatabase) {
    super.onOpen(paramSQLiteDatabase);
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {
    CALog.i("Upgrading database from version " + paramInt1 + " to " + paramInt2 + ", which will destroy all old data");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS SESSION_DATA");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS SESSION_META_DATA");
    onCreate(paramSQLiteDatabase);
  }
  
  protected void persistEvent(String paramString1, String paramString2, String paramString3, int paramInt) {
    // Byte code:
    //   0: aload_2
    //   1: invokevirtual length : ()I
    //   4: aload_1
    //   5: invokevirtual length : ()I
    //   8: iadd
    //   9: aload_3
    //   10: invokevirtual length : ()I
    //   13: iadd
    //   14: i2l
    //   15: ldc2_w 2097152
    //   18: lcmp
    //   19: ifle -> 30
    //   22: ldc_w 'JSON EVENT is more than 2 MB not persisting '
    //   25: invokestatic d : (Ljava/lang/String;)I
    //   28: pop
    //   29: return
    //   30: aload_0
    //   31: monitorenter
    //   32: aload_0
    //   33: invokevirtual getWritableDatabase : ()Landroid/database/sqlite/SQLiteDatabase;
    //   36: astore #7
    //   38: ldc 'SESSION_DATA'
    //   40: astore #5
    //   42: ldc 'hdr'
    //   44: aload_3
    //   45: invokevirtual equals : (Ljava/lang/Object;)Z
    //   48: ifeq -> 221
    //   51: ldc 'SESSION_META_DATA'
    //   53: astore #5
    //   55: new android/content/ContentValues
    //   58: dup
    //   59: invokespecial <init> : ()V
    //   62: astore_3
    //   63: aload_3
    //   64: ldc 'session_id'
    //   66: aload_1
    //   67: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   70: aload_3
    //   71: ldc 'header_json'
    //   73: aload_2
    //   74: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   77: aload #7
    //   79: aload #5
    //   81: aconst_null
    //   82: aload_3
    //   83: invokevirtual insert : (Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   86: ldc2_w -1
    //   89: lcmp
    //   90: ifne -> 117
    //   93: new java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial <init> : ()V
    //   100: ldc_w 'Not able to add event:'
    //   103: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload_2
    //   107: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: invokevirtual toString : ()Ljava/lang/String;
    //   113: invokestatic w : (Ljava/lang/String;)I
    //   116: pop
    //   117: aload #7
    //   119: invokevirtual close : ()V
    //   122: iload #4
    //   124: iconst_2
    //   125: if_icmpne -> 164
    //   128: aload_0
    //   129: aload_1
    //   130: iconst_1
    //   131: invokevirtual updateSessionMetadataState : (Ljava/lang/String;I)V
    //   134: new java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial <init> : ()V
    //   141: ldc_w 'Metadata:: Session End event :: session id '
    //   144: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: aload_1
    //   148: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc_w ' Marked as Ended'
    //   154: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: invokevirtual toString : ()Ljava/lang/String;
    //   160: invokestatic d : (Ljava/lang/String;)I
    //   163: pop
    //   164: iload #4
    //   166: iconst_3
    //   167: if_icmpne -> 213
    //   170: ldc_w 'Metadata:: Crash event :: Going to update session state .....'
    //   173: invokestatic d : (Ljava/lang/String;)I
    //   176: pop
    //   177: aload_0
    //   178: aload_1
    //   179: iconst_2
    //   180: invokevirtual updateSessionMetadataState : (Ljava/lang/String;I)V
    //   183: new java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial <init> : ()V
    //   190: ldc_w 'Metadata:: Crash event :: session id '
    //   193: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_1
    //   197: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: ldc_w ' Marked as Crashed'
    //   203: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: invokevirtual toString : ()Ljava/lang/String;
    //   209: invokestatic d : (Ljava/lang/String;)I
    //   212: pop
    //   213: aload_0
    //   214: monitorexit
    //   215: return
    //   216: astore_1
    //   217: aload_0
    //   218: monitorexit
    //   219: aload_1
    //   220: athrow
    //   221: new android/content/ContentValues
    //   224: dup
    //   225: invokespecial <init> : ()V
    //   228: astore #6
    //   230: aload #6
    //   232: ldc 'session_id'
    //   234: aload_1
    //   235: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   238: aload #6
    //   240: ldc 'session_json'
    //   242: aload_2
    //   243: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   246: aload #6
    //   248: ldc 'session_json_type'
    //   250: aload_3
    //   251: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   254: aload #6
    //   256: astore_3
    //   257: goto -> 77
    // Exception table:
    //   from	to	target	type
    //   32	38	216	finally
    //   42	51	216	finally
    //   55	77	216	finally
    //   77	117	216	finally
    //   117	122	216	finally
    //   128	164	216	finally
    //   170	213	216	finally
    //   213	215	216	finally
    //   217	219	216	finally
    //   221	254	216	finally
  }
  
  protected void purgeAllNonHeadersRecords(String paramString, Integer paramInteger) {
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    sQLiteDatabase.delete(paramString, "session_json_type!='hdr' AND row_id <=" + paramInteger, null);
    sQLiteDatabase.close();
  }
  
  protected void purgeAllRecordsOfASession(String[] paramArrayOfString, String paramString, boolean paramBoolean) {
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    String str = getPlaceHolders(paramArrayOfString.length);
    if (paramArrayOfString.length > 0) {
      String str1 = "session_id in " + str + " ";
      str = str1;
      if (paramBoolean)
        str = str1 + " and " + "session_json_type" + " != '" + "hdr" + "'"; 
      sQLiteDatabase.delete(paramString, str, paramArrayOfString);
    } 
    sQLiteDatabase.close();
  }
  
  protected void purgeHeaderRecordsOtherThanCurrentSession(String[] paramArrayOfString, String paramString) {
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    String str = getPlaceHolders(paramArrayOfString.length);
    if (paramArrayOfString.length > 0) {
      sQLiteDatabase.delete(paramString, "session_json_type='hdr' and session_id not in " + str, paramArrayOfString);
      sQLiteDatabase.close();
    } 
  }
  
  protected void purgeSession(String paramString) {
    if (paramString != null) {
      SQLiteDatabase sQLiteDatabase = getWritableDatabase();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramString;
      sQLiteDatabase.delete("SESSION_DATA", "session_id =? ", arrayOfString);
      sQLiteDatabase.delete("SESSION_META_DATA", "session_id =? ", arrayOfString);
      CALog.d("Purging session id:" + paramString + " from " + "SESSION_META_DATA" + " and " + "SESSION_DATA");
      sQLiteDatabase.close();
    } 
  }
  
  protected void purgeSessionEvents(String paramString) {
    if (paramString != null) {
      SQLiteDatabase sQLiteDatabase = getWritableDatabase();
      sQLiteDatabase.delete("SESSION_DATA", "session_id =? ", new String[] { paramString });
      CALog.d("Purging session id:" + paramString + " from " + "SESSION_DATA");
      sQLiteDatabase.close();
    } 
  }
  
  protected void purgeSessionHeader(String paramString) {
    if (paramString != null) {
      SQLiteDatabase sQLiteDatabase = getWritableDatabase();
      sQLiteDatabase.delete("SESSION_META_DATA", "session_id =? ", new String[] { paramString });
      CALog.d("Purging session id:" + paramString + " from " + "SESSION_META_DATA");
      sQLiteDatabase.close();
    } 
  }
  
  protected Map<String, JSONObject> querySessionHeaders() {
    HashMap<Object, Object> hashMap = new HashMap<Object, Object>();
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    try {
      Cursor cursor = sQLiteDatabase.query("SESSION_META_DATA", new String[] { "row_id", "session_id", "header_json" }, null, null, null, null, "row_id ASC", null);
      while (cursor.moveToNext()) {
        if (!hashMap.containsKey(cursor.getString(1)))
          hashMap.put(cursor.getString(1), new JSONObject(cursor.getString(2))); 
      } 
      cursor.close();
      return (Map)hashMap;
    } catch (Exception exception) {
      return (Map)hashMap;
    } 
  }
  
  protected void updateEvent(String paramString1, String paramString2, String paramString3) {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual getWritableDatabase : ()Landroid/database/sqlite/SQLiteDatabase;
    //   6: astore #6
    //   8: new android/content/ContentValues
    //   11: dup
    //   12: invokespecial <init> : ()V
    //   15: astore #7
    //   17: ldc 'hdr'
    //   19: aload_3
    //   20: invokevirtual equals : (Ljava/lang/Object;)Z
    //   23: ifeq -> 112
    //   26: aload #7
    //   28: ldc 'header_json'
    //   30: aload_2
    //   31: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   34: aload #6
    //   36: ldc 'SESSION_META_DATA'
    //   38: aload #7
    //   40: new java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial <init> : ()V
    //   47: ldc 'session_id=''
    //   49: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_1
    //   53: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: ldc '''
    //   58: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual toString : ()Ljava/lang/String;
    //   64: aconst_null
    //   65: invokevirtual update : (Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   68: i2l
    //   69: lstore #4
    //   71: lload #4
    //   73: ldc2_w -1
    //   76: lcmp
    //   77: ifne -> 104
    //   80: new java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial <init> : ()V
    //   87: ldc_w 'Not able to update event:'
    //   90: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload_2
    //   94: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: invokevirtual toString : ()Ljava/lang/String;
    //   100: invokestatic w : (Ljava/lang/String;)I
    //   103: pop
    //   104: aload #6
    //   106: invokevirtual close : ()V
    //   109: aload_0
    //   110: monitorexit
    //   111: return
    //   112: aload #7
    //   114: ldc 'session_json'
    //   116: aload_2
    //   117: invokevirtual put : (Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload #6
    //   122: ldc 'SESSION_DATA'
    //   124: aload #7
    //   126: new java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial <init> : ()V
    //   133: ldc 'session_id=''
    //   135: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: aload_1
    //   139: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   142: ldc_w '' and '
    //   145: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: ldc 'session_json_type'
    //   150: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: ldc_w '=''
    //   156: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload_3
    //   160: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: ldc '''
    //   165: invokevirtual append : (Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual toString : ()Ljava/lang/String;
    //   171: aconst_null
    //   172: invokevirtual update : (Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   175: i2l
    //   176: lstore #4
    //   178: goto -> 71
    //   181: astore_1
    //   182: aload_0
    //   183: monitorexit
    //   184: aload_1
    //   185: athrow
    // Exception table:
    //   from	to	target	type
    //   2	71	181	finally
    //   80	104	181	finally
    //   104	111	181	finally
    //   112	178	181	finally
    //   182	184	181	finally
  }
  
  protected void updateSessionMetadataState(String paramString, int paramInt) {
    ContentValues contentValues = new ContentValues();
    contentValues.put("session_state", Integer.valueOf(paramInt));
    SQLiteDatabase sQLiteDatabase = getWritableDatabase();
    String str = "session_id='" + paramString + "'";
    paramString = str;
    if (paramInt == 1)
      paramString = str + " and session_state!=2"; 
    if (sQLiteDatabase.update("SESSION_META_DATA", contentValues, paramString, null) == -1L)
      CALog.w("Not able to update session metadata:" + contentValues.toString()); 
    sQLiteDatabase.close();
  }
  
  protected void updateSessionMetadataStatus(String paramString1, String paramString2) {
    if (paramString2 != null && paramString2.trim().length() > 1) {
      ContentValues contentValues = new ContentValues();
      contentValues.put("session_status", paramString2);
      updateSessionMetadata(contentValues, paramString1);
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\com\ca\mdo\DatabaseHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */