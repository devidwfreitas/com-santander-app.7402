import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class bge extends bgg {
  private bgi e;
  
  public bge(Context paramContext) {
    super(paramContext);
  }
  
  private bgd f(String paramString) {
    d().getClass();
    d().getClass();
    String str = a("datablink_push_history", "data", paramString);
    bgd bgd = new bgd();
    this.e = d().a();
    Cursor cursor = this.e.a(this.e.b(), str);
    if (cursor.moveToFirst())
      do {
        d().getClass();
        bgd.a(Integer.parseInt(cursor.getString(cursor.getColumnIndex("id"))));
        d().getClass();
        bgd.a(cursor.getString(cursor.getColumnIndex("title")));
        d().getClass();
        bgd.b(cursor.getString(cursor.getColumnIndex("data")));
        d().getClass();
        bgd.c(cursor.getString(cursor.getColumnIndex("date")));
        d().getClass();
        bgd.b(Integer.parseInt(cursor.getString(cursor.getColumnIndex("status"))));
        d().getClass();
        bgd.d(cursor.getString(cursor.getColumnIndex("serial")));
      } while (cursor.moveToNext()); 
    cursor.close();
    this.e.close();
    return bgd;
  }
  
  protected int a() {
    bgh bgh = d();
    d().getClass();
    return bgh.a("datablink_push_history");
  }
  
  public int a(int paramInt) {
    bgh bgh = d();
    d().getClass();
    return bgh.a(paramInt, "datablink_push_history");
  }
  
  public int a(bgd parambgd) {
    ContentValues contentValues = new ContentValues();
    d().getClass();
    contentValues.put("title", parambgd.b());
    d().getClass();
    contentValues.put("data", parambgd.c());
    d().getClass();
    contentValues.put("date", parambgd.d());
    d().getClass();
    contentValues.put("status", parambgd.e());
    d().getClass();
    contentValues.put("serial", parambgd.f());
    this.e = d().a();
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    d().getClass();
    int i = sQLiteDatabase.update("datablink_push_history", contentValues, String.valueOf("data") + " = ?", new String[] { parambgd.c() });
    this.e.close();
    return (i >= 1) ? 0 : 1;
  }
  
  public int b() {
    return d((String)null);
  }
  
  public int b(bgd parambgd) {
    d().a().close();
    this.e = d().a();
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    d().getClass();
    int i = sQLiteDatabase.delete("datablink_push_history", String.valueOf("data") + " = ?", new String[] { parambgd.c() });
    this.e.close();
    return (i >= 1) ? 0 : 1;
  }
  
  public int c(bgd parambgd) {
    ContentValues contentValues = new ContentValues();
    bgd bgd1 = f(parambgd.c());
    if (bgd1.c() != null && !bgd1.c().isEmpty()) {
      a(parambgd);
      return 0;
    } 
    int i = a();
    List<bgd> list = c();
    if (list.size() >= i)
      b(list.get(0)); 
    d().getClass();
    contentValues.put("title", parambgd.b());
    d().getClass();
    contentValues.put("data", parambgd.c());
    d().getClass();
    contentValues.put("date", parambgd.d());
    d().getClass();
    contentValues.put("status", parambgd.e());
    d().getClass();
    contentValues.put("serial", parambgd.f());
    this.e = d().a();
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    sQLiteDatabase.insert("datablink_push_history", null, contentValues);
    this.e.close();
    return 0;
  }
  
  public List<bgd> c() {
    return e((String)null);
  }
  
  public int d(String paramString) {
    List<bgd> list;
    int i = 0;
    if (paramString == null) {
      list = c();
    } else {
      list = e((String)list);
    } 
    int j = 0;
    while (true) {
      if (i >= list.size())
        return j; 
      b(list.get(i));
      j = b(list.get(i));
      i++;
    } 
  }
  
  public List<bgd> e(String paramString) {
    ArrayList<bgd> arrayList = new ArrayList();
    if (paramString == null) {
      d().getClass();
      paramString = b("datablink_push_history");
    } else {
      d().getClass();
      d().getClass();
      paramString = a("datablink_push_history", "serial", paramString);
    } 
    this.e = d().a();
    Cursor cursor = this.e.a(this.e.b(), paramString);
    if (cursor.moveToFirst())
      do {
        bgd bgd = new bgd();
        d().getClass();
        bgd.a(Integer.parseInt(cursor.getString(cursor.getColumnIndex("id"))));
        d().getClass();
        bgd.a(cursor.getString(cursor.getColumnIndex("title")));
        d().getClass();
        bgd.b(cursor.getString(cursor.getColumnIndex("data")));
        d().getClass();
        bgd.c(cursor.getString(cursor.getColumnIndex("date")));
        d().getClass();
        bgd.b(Integer.parseInt(cursor.getString(cursor.getColumnIndex("status"))));
        d().getClass();
        bgd.d(cursor.getString(cursor.getColumnIndex("serial")));
        arrayList.add(bgd);
      } while (cursor.moveToNext()); 
    cursor.close();
    this.e.close();
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bge.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */