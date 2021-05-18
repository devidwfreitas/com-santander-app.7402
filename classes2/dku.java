import android.annotation.TargetApi;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.support.annotation.WorkerThread;

@TargetApi(11)
class dku extends SQLiteOpenHelper {
  dku(dkt paramdkt, Context paramContext, String paramString) {
    super(paramContext, paramString, null, 1);
  }
  
  @WorkerThread
  public SQLiteDatabase getWritableDatabase() {
    try {
      return super.getWritableDatabase();
    } catch (SQLiteException sQLiteException) {
      if (Build.VERSION.SDK_INT >= 11 && sQLiteException instanceof android.database.sqlite.SQLiteDatabaseLockedException)
        throw sQLiteException; 
      this.a.u().x().a("Opening the local database failed, dropping and recreating it");
      String str = this.a.z();
      if (!this.a.n().getDatabasePath(str).delete())
        this.a.u().x().a("Failed to delete corrupted local db file", str); 
      try {
        return super.getWritableDatabase();
      } catch (SQLiteException sQLiteException1) {
        this.a.u().x().a("Failed to open local database. Events will bypass local storage", sQLiteException1);
        return null;
      } 
    } 
  }
  
  @WorkerThread
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
    dkb.a(this.a.u(), paramSQLiteDatabase);
  }
  
  @WorkerThread
  public void onOpen(SQLiteDatabase paramSQLiteDatabase) {
    if (Build.VERSION.SDK_INT < 15) {
      Cursor cursor = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
      try {
        cursor.moveToFirst();
        cursor.close();
        return;
      } finally {
        cursor.close();
      } 
    } 
    dkb.a(this.a.u(), paramSQLiteDatabase, "messages", "create table if not exists messages ( type INTEGER NOT NULL, entry BLOB NOT NULL)", "type,entry", null);
  }
  
  @WorkerThread
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\dku.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */