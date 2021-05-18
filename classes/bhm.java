import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import android.util.Pair;
import java.io.FileNotFoundException;
import java.util.UUID;

public class bhm extends ContentProvider {
  private static final String a = bhm.class.getName();
  
  private static final String b = "content://com.facebook.app.FacebookContentProvider";
  
  public static String a(String paramString1, UUID paramUUID, String paramString2) {
    return String.format("%s%s/%s/%s", new Object[] { "content://com.facebook.app.FacebookContentProvider", paramString1, paramUUID.toString(), paramString2 });
  }
  
  Pair<UUID, String> a(Uri paramUri) {
    try {
      String[] arrayOfString = paramUri.getPath().substring(1).split("/");
      String str1 = arrayOfString[0];
      String str2 = arrayOfString[1];
      return new Pair(UUID.fromString(str1), str2);
    } catch (Exception exception) {
      return null;
    } 
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString) {
    return 0;
  }
  
  public String getType(Uri paramUri) {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues) {
    return null;
  }
  
  public boolean onCreate() {
    return true;
  }
  
  public ParcelFileDescriptor openFile(Uri paramUri, String paramString) {
    Pair<UUID, String> pair = a(paramUri);
    if (pair == null)
      throw new FileNotFoundException(); 
    try {
      return ParcelFileDescriptor.open(bpx.a((UUID)pair.first, (String)pair.second), 268435456);
    } catch (FileNotFoundException fileNotFoundException) {
      Log.e(a, "Got unexpected exception:" + fileNotFoundException);
      throw fileNotFoundException;
    } 
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2) {
    return null;
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString) {
    return 0;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\bhm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */