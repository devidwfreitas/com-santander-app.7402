import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import java.util.ArrayList;
import java.util.List;

public class bfp extends bgg {
  private bgi e = d().a();
  
  public bfp(Context paramContext) {
    super(paramContext);
  }
  
  private int b(bfq parambfq) {
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    d().getClass();
    sQLiteDatabase.delete("datablink_chat_message", String.valueOf("id") + " = ?", new String[] { String.valueOf(parambfq.a()) });
    this.e.close();
    return 0;
  }
  
  public int a(int paramInt) {
    bgh bgh = d();
    d().getClass();
    return bgh.a(paramInt, "datablink_chat_channel");
  }
  
  public int a(bfo parambfo) {
    ContentValues contentValues = new ContentValues();
    d().getClass();
    contentValues.put("name", parambfo.b());
    d().getClass();
    contentValues.put("serialNumber", parambfo.c());
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    sQLiteDatabase.insert("datablink_chat_message", null, contentValues);
    this.e.close();
    return 0;
  }
  
  public int a(bfq parambfq) {
    List<bfq> list = d(parambfq.e());
    int i = b();
    if (list.size() >= i)
      b(list.get(0)); 
    ContentValues contentValues = new ContentValues();
    d().getClass();
    contentValues.put("status", parambfq.b());
    d().getClass();
    contentValues.put("date", parambfq.d());
    d().getClass();
    contentValues.put("text", parambfq.c());
    d().getClass();
    contentValues.put("channelId", parambfq.e());
    SQLiteDatabase sQLiteDatabase = this.e.a();
    d().getClass();
    sQLiteDatabase.insert("datablink_chat_message", null, contentValues);
    this.e.close();
    return 0;
  }
  
  public List<bfo> a() {
    ArrayList<bfo> arrayList = new ArrayList();
    d().getClass();
    String str = b("datablink_chat_channel");
    Cursor cursor = this.e.a(this.e.b(), str);
    if (cursor.moveToFirst())
      do {
        d().getClass();
        String str1 = cursor.getString(cursor.getColumnIndex("serialNumber"));
        d().getClass();
        bfo bfo = new bfo(cursor.getString(cursor.getColumnIndex("name")), str1);
        d().getClass();
        bfo.a(cursor.getInt(cursor.getColumnIndex("id")));
        arrayList.add(bfo);
      } while (cursor.moveToNext()); 
    this.e.close();
    return arrayList;
  }
  
  protected int b() {
    bgh bgh = d();
    d().getClass();
    return bgh.a("datablink_chat_channel");
  }
  
  public List<bfq> d(String paramString) {
    ArrayList<bfq> arrayList = new ArrayList();
    d().getClass();
    d().getClass();
    paramString = a("datablink_chat_message", "channelId", paramString);
    Cursor cursor = this.e.a(this.e.b(), paramString);
    if (cursor.moveToFirst())
      do {
        d().getClass();
        bfq bfq = new bfq(cursor.getInt(cursor.getColumnIndex("channelId")));
        d().getClass();
        bfq.a(cursor.getInt(cursor.getColumnIndex("id")));
        d().getClass();
        bfq.a(Long.parseLong(cursor.getString(cursor.getColumnIndex("date"))));
        d().getClass();
        bfq.a(cursor.getString(cursor.getColumnIndex("status")));
        d().getClass();
        bfq.b(cursor.getString(cursor.getColumnIndex("text")));
        arrayList.add(bfq);
      } while (cursor.moveToNext()); 
    this.e.close();
    return arrayList;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bfp.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */