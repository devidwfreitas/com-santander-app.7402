import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class akw extends SQLiteOpenHelper {
  private static final String a = "database.db";
  
  private static final int b = 2;
  
  public akw(Context paramContext) {
    super(paramContext, "database.db", null, 2);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
    paramSQLiteDatabase.execSQL("create table table1( _id integer primary key, content text not null, content2 text);");
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {
    paramSQLiteDatabase.execSQL("ALTER TABLE table1 ADD COLUMN content2 text;");
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\akw.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */