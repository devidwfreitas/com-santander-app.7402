import android.app.DownloadManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.widget.NestedScrollView;
import android.view.View;
import android.widget.ScrollView;
import java.io.File;
import java.io.FileOutputStream;

public class aau {
  private static Bitmap a(View paramView) {
    return (paramView instanceof ScrollView) ? Bitmap.createBitmap(((ScrollView)paramView).getChildAt(0).getWidth(), ((ScrollView)paramView).getChildAt(0).getHeight(), Bitmap.Config.RGB_565) : ((paramView instanceof NestedScrollView) ? Bitmap.createBitmap(((NestedScrollView)paramView).getChildAt(0).getWidth(), ((NestedScrollView)paramView).getChildAt(0).getHeight(), Bitmap.Config.RGB_565) : Bitmap.createBitmap(paramView.getWidth(), paramView.getHeight(), Bitmap.Config.RGB_565));
  }
  
  public static void a(Context paramContext, Uri paramUri) {
    DownloadManager.Request request = new DownloadManager.Request(paramUri);
    DownloadManager downloadManager = (DownloadManager)paramContext.getSystemService("download");
    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, System.currentTimeMillis() + ".pdf");
    request.setNotificationVisibility(1);
    request.allowScanningByMediaScanner();
    downloadManager.enqueue(request);
  }
  
  public static void a(Context paramContext, View paramView) {
    Bitmap bitmap = a(paramView);
    paramView.draw(new Canvas(bitmap));
    File file = new File(paramContext.getExternalFilesDir(Environment.DIRECTORY_PICTURES), System.currentTimeMillis() + ".jpg");
    FileOutputStream fileOutputStream = new FileOutputStream(file);
    bitmap.compress(Bitmap.CompressFormat.JPEG, 80, fileOutputStream);
    fileOutputStream.close();
    zs.a().a(paramContext, Uri.fromFile(file));
  }
  
  public static void a(Context paramContext, String paramString) {
    zs.a().a(paramContext, paramString);
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aau.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */