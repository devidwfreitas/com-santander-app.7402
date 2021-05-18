import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

public class cmm extends SQLiteOpenHelper {
  public cmm(cml paramcml, Context paramContext, String paramString) {
    super(paramContext, paramString, null, 5);
  }
  
  public void onCreate(SQLiteDatabase paramSQLiteDatabase) {
    paramSQLiteDatabase.execSQL(cml.e());
  }
  
  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {
    Log.i("GoogleConversionReporter", (new StringBuilder(64)).append("Database updated from version ").append(paramInt1).append(" to version ").append(paramInt2).toString());
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS conversiontracking");
    onCreate(paramSQLiteDatabase);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\cmm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */