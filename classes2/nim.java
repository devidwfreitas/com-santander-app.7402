import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.util.Arrays;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public final class nim {
  private final SQLiteDatabase a;
  
  private int b;
  
  private int c;
  
  private float d;
  
  public nim(nkj paramnkj) {
    this.a = a(paramnkj);
    a(paramnkj.q().b(), paramnkj.q().a());
  }
  
  private static SQLiteDatabase a(nkj paramnkj) {
    SQLiteDatabase sQLiteDatabase = SQLiteDatabase.openDatabase((new File(paramnkj.a(), "tealium.db")).getAbsolutePath(), null, 268435456);
    sQLiteDatabase.execSQL(String.format(Locale.ROOT, "CREATE TABLE IF NOT EXISTS %s ( \t%s TEXT NOT NULL, \t%s INT NOT NULL )", new Object[] { "dispatch", "data_json", "post_time" }));
    return sQLiteDatabase;
  }
  
  private static void a(SQLiteDatabase paramSQLiteDatabase, float paramFloat) {
    if (paramFloat < 0.0F)
      return; 
    paramSQLiteDatabase.delete("dispatch", "post_time < ?", new String[] { Long.toString(System.currentTimeMillis() - (long)paramFloat * 86400000L) });
  }
  
  private void c() {
    Cursor cursor = this.a.rawQuery("SELECT COUNT(*) FROM dispatch", null);
    cursor.moveToFirst();
    this.b = cursor.getInt(0);
    cursor.close();
  }
  
  public int a() {
    return this.b;
  }
  
  public void a(int paramInt, float paramFloat) {
    this.c = paramInt;
    this.d = paramFloat;
    a(this.a, this.d);
    c();
  }
  
  public void a(nil paramnil) {
    if (paramnil == null)
      throw new IllegalArgumentException("dispatch must not be null."); 
    a(this.a, this.d);
    c();
    if (this.c == 0)
      return; 
    int i = this.b + 1;
    if (this.c != -1 && i > this.c) {
      this.a.execSQL("DELETE FROM dispatch WHERE rowid IN ( \tSELECT rowid \tFROM dispatch\tORDER BY post_time ASC \tLIMIT ? )", new Object[] { Integer.valueOf(i - this.c) });
      this.b = this.c;
    } else {
      this.b++;
    } 
    ContentValues contentValues = new ContentValues(2);
    contentValues.put("data_json", paramnil.c());
    contentValues.put("post_time", Long.valueOf(paramnil.f()));
    this.a.insert("dispatch", null, contentValues);
  }
  
  public nil[] b() {
    if (this.b == 0)
      return new nil[0]; 
    Cursor cursor = this.a.query("dispatch", new String[] { "post_time", "data_json" }, null, null, null, null, "post_time ASC");
    nil[] arrayOfNil = new nil[cursor.getCount()];
    cursor.moveToFirst();
    int i = 0;
    while (!cursor.isAfterLast()) {
      int j = i + 1;
      try {
        arrayOfNil[i] = new nil(cursor.getLong(0), new JSONObject(cursor.getString(1)));
        i = j;
      } catch (JSONException jSONException) {
        i = j - 1;
      } 
      cursor.moveToNext();
    } 
    if (i != arrayOfNil.length)
      arrayOfNil = Arrays.<nil>copyOf(arrayOfNil, i); 
    cursor.close();
    this.a.delete("dispatch", null, null);
    this.b = 0;
    return arrayOfNil;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\nim.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */