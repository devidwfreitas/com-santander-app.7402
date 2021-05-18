import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class gyu {
  private SQLiteDatabase a;
  
  private gyt b;
  
  public gyu(Context paramContext) {
    this.b = new gyt(paramContext);
  }
  
  private gyv a(Cursor paramCursor) {
    gyv gyv = new gyv();
    gyv.a(Long.valueOf(paramCursor.getLong(0)));
    gyv.a(paramCursor.getString(1));
    gyv.b(paramCursor.getString(2));
    return gyv;
  }
  
  public gyv a(Long paramLong) {
    gyv gyv;
    String str2 = null;
    SQLiteDatabase sQLiteDatabase = this.a;
    String str1 = "_id = " + paramLong.toString();
    Cursor cursor = sQLiteDatabase.query("table1", new String[] { "_id", "content", "content2" }, str1, null, null, null, null);
    cursor.moveToFirst();
    str1 = str2;
    if (cursor.getCount() > 0)
      gyv = a(cursor); 
    cursor.close();
    return gyv;
  }
  
  public gyv a(Long paramLong, String paramString1, String paramString2) {
    ContentValues contentValues = new ContentValues();
    contentValues.put("_id", paramLong);
    contentValues.put("content", paramString1);
    contentValues.put("content2", paramString2);
    this.a.insert("table1", null, contentValues);
    SQLiteDatabase sQLiteDatabase = this.a;
    String str = "_id = " + paramLong.toString();
    Cursor cursor = sQLiteDatabase.query("table1", new String[] { "_id", "content", "content2" }, str, null, null, null, null);
    cursor.moveToFirst();
    gyv gyv = a(cursor);
    cursor.close();
    return gyv;
  }
  
  public void a() {
    this.a = this.b.getWritableDatabase();
  }
  
  public void a(gyv paramgyv) {
    Long long_ = paramgyv.a();
    this.a.delete("table1", "_id = " + long_, null);
  }
  
  public void a(String paramString1, String paramString2) {
    ContentValues contentValues = new ContentValues();
    contentValues.put("content2", paramString2);
    this.a.update("table1", contentValues, "_id = ?", new String[] { paramString1 });
  }
  
  public int b() {
    return this.a.delete("table1", null, null);
  }
  
  public List<gyv> c() {
    ArrayList<gyv> arrayList = new ArrayList();
    Cursor cursor = this.a.query("table1", new String[] { "_id", "content", "content2" }, null, null, null, null, null);
    cursor.moveToFirst();
    if (cursor.getCount() > 0)
      while (!cursor.isAfterLast()) {
        arrayList.add(a(cursor));
        cursor.moveToNext();
      }  
    cursor.close();
    return arrayList;
  }
  
  public void close() {
    this.b.close();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gyu.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */