import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import com.santander.app.seguros.ui.sinister.activities.ScanDocumentActivity;
import java.io.File;

public class lrf implements mij<File> {
  public lrf(ScanDocumentActivity paramScanDocumentActivity, Uri paramUri) {}
  
  public void a(File paramFile) {
    if (!this.b.isFinishing()) {
      if (paramFile != null)
        try {
          String str = mhj.d(paramFile);
          Log.e("Tamanho do arquivo: ", String.valueOf(mhj.b(paramFile)));
          if (!str.toUpperCase().equals("PDF")) {
            if (mhj.b(paramFile) > 4.0F) {
              mhj.c((Context)this.b, this.b.getResources().getString(2131297365));
            } else {
              Bitmap bitmap = this.b.a(this.a, paramFile);
              byte[] arrayOfByte = mhj.c(bitmap);
              ScanDocumentActivity.a(this.b, bitmap, arrayOfByte);
            } 
          } else if (mhj.b(paramFile) > 4.0F) {
            mhj.c((Context)this.b, this.b.getResources().getString(2131297366));
          } else {
            byte[] arrayOfByte = mhj.c(paramFile);
            String str1 = paramFile.getName();
            ScanDocumentActivity.a(this.b, str1, arrayOfByte);
          } 
        } catch (Exception exception) {
          exception.printStackTrace();
        }  
      if (ScanDocumentActivity.a(this.b) != null)
        ScanDocumentActivity.a(this.b).setState(aor.CONTENT); 
      if (paramFile != null) {
        paramFile.delete();
        return;
      } 
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\lrf.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */