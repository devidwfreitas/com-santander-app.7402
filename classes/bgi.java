import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public class bgi {
  SQLiteDatabase a = null;
  
  SQLiteDatabase b = null;
  
  Cursor c;
  
  public bgi(bgh parambgh) {}
  
  public Cursor a(SQLiteDatabase paramSQLiteDatabase, String paramString) {
    this.c = paramSQLiteDatabase.rawQuery(paramString, null);
    return this.c;
  }
  
  public SQLiteDatabase a() {
    if (this.b != null)
      close(); 
    this.b = this.d.getWritableDatabase();
    return this.b;
  }
  
  public SQLiteDatabase b() {
    if (this.a != null)
      close(); 
    this.a = this.d.getReadableDatabase();
    return this.a;
  }
  
  public void close() {
    if (this.a != null) {
      this.a.close();
      this.a = null;
    } 
    if (this.b != null) {
      this.b.close();
      this.b = null;
    } 
    if (this.c != null) {
      this.c.close();
      this.c = null;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bgi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */