import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import java.util.ArrayList;

public class bgh extends SQLiteOpenHelper {
  protected static final String a = "datablinkdb";
  
  protected static final int b = 2;
  
  protected final String c = "id";
  
  protected final String d = "blob";
  
  protected final String e = "serialnumber";
  
  protected final String f = "datablink_blob";
  
  protected final String g = "appblob";
  
  protected final String h = "datablink_app_blob";
  
  protected final String i = "datablink_chat_message";
  
  protected final String j = "datablink_chat_channel";
  
  protected final String k = "status";
  
  protected final String l = "date";
  
  protected final String m = "channelId";
  
  protected final String n = "text";
  
  protected final String o = "name";
  
  protected final String p = "serialNumber";
  
  protected final String q = "title";
  
  protected final String r = "data";
  
  protected final String s = "date";
  
  protected final String t = "status";
  
  protected final String u = "serial";
  
  protected final String v = "datablink_push_history";
  
  bgi w;
  
  public bgh(bgg parambgg, Context paramContext) {
    super(paramContext, "datablinkdb", null, 2);
  }
  
  private String b() {
    ArrayList<String> arrayList = new ArrayList();
    if (arrayList.size() == 0) {
      arrayList.add("blob");
      arrayList.add("serialnumber");
    } 
    return bgg.b("datablink_blob", arrayList);
  }
  
  private String c() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("appblob");
    return bgg.b("datablink_app_blob", arrayList);
  }
  
  private String d() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("name");
    arrayList.add("serialNumber");
    return bgg.b("datablink_chat_channel", arrayList);
  }
  
  private String e() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("status");
    arrayList.add("date");
    arrayList.add("text");
    return this.x.a("datablink_chat_message", arrayList, "channelId", "datablink_chat_channel", "id");
  }
  
  private String f() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("data");
    arrayList.add("date");
    arrayList.add("serial");
    arrayList.add("status");
    arrayList.add("title");
    return bgg.b("datablink_push_history", arrayList);
  }
  
  private String g() {
    ArrayList<String> arrayList = new ArrayList();
    arrayList.add("size");
    arrayList.add("columntable");
    return bgg.b("sizes_table", arrayList);
  }
  
  public int a(int paramInt, String paramString) {
    boolean bool;
    bgi bgi1 = a();
    String str = this.x.a("sizes_table", "columntable", paramString);
    if (bgi1.a(bgi1.b(), str).moveToFirst()) {
      bool = true;
    } else {
      bool = false;
    } 
    ContentValues contentValues = new ContentValues();
    contentValues.put("size", paramInt);
    contentValues.put("columntable", paramString);
    if (bool) {
      bgi1.a().update("sizes_table", contentValues, "columntable = ?", new String[] { String.valueOf(paramString) });
      bgi1.close();
      return 0;
    } 
    bgi1.a().insert("sizes_table", null, contentValues);
    bgi1.close();
    return 0;
  }
  
  public int a(String paramString) {
    int i = 0;
    boolean bool = false;
    String str = this.x.a("sizes_table", "columntable", paramString);
    bgi bgi1 = a();
    Cursor cursor = bgi1.a(bgi1.b(), str);
    if (cursor != null) {
      cursor.moveToFirst();
      try {
        i = Integer.parseInt(cursor.getString(cursor.getColumnIndex("size")));
      } catch (Exception exception) {
        i = bool;
      } 
      cursor.close();
      bgi1.close();
    } 
    return i;
  }
  
  public bgi a() {
    if (this.w == null)
      this.w = new bgi(this); 
    this.w.close();
    return this.w;
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
    paramSQLiteDatabase.execSQL(b());
    paramSQLiteDatabase.execSQL(c());
    paramSQLiteDatabase.execSQL(d());
    paramSQLiteDatabase.execSQL(e());
    paramSQLiteDatabase.execSQL(f());
    paramSQLiteDatabase.execSQL(g());
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */