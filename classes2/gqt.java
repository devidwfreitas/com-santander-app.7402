import android.app.Dialog;
import android.content.Intent;
import android.provider.MediaStore;
import android.view.View;

final class gqt implements View.OnClickListener {
  gqt(Dialog paramDialog) {}
  
  public void onClick(View paramView) {
    Intent intent = new Intent("android.intent.action.PICK", MediaStore.Images.Media.INTERNAL_CONTENT_URI);
    gpu.m().startActivityForResult(intent, 1234);
    this.a.dismiss();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes2-dex2jar.jar!\gqt.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */