import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.io.File;

class mil extends gne<Uri, Void, File> {
  private mij<File> b;
  
  private mij<String> c;
  
  mil(mik parammik, mij<File> parammij, mij<String> parammij1) {
    this.b = parammij;
    this.c = parammij1;
  }
  
  protected File a(Uri... paramVarArgs) {
    if (paramVarArgs != null)
      try {
        if (paramVarArgs.length <= 0)
          return null; 
        Uri uri = paramVarArgs[0];
        return mim.a((Context)mik.a(this.a), uri);
      } catch (Exception exception) {
        exception.printStackTrace();
      }  
    return null;
  }
  
  protected void a() {
    Log.e("file-service-tag", "loading");
  }
  
  protected void a(File paramFile) {
    if (paramFile != null) {
      if (this.b != null)
        this.b.a(paramFile); 
      return;
    } 
    if (this.c != null) {
      this.c.a("");
      return;
    } 
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\mil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */