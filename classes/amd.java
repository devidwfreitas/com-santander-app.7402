import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;

class amd implements Runnable {
  amd(amc paramamc) {}
  
  public void run() {
    try {
      amc.a(this.a);
      Intent intent = new Intent("android.intent.action.SEND_MULTIPLE");
      intent.setType("plain/text");
      ArrayList<Uri> arrayList = new ArrayList();
      arrayList.add(Uri.parse("file://" + amc.b(this.a).getAbsolutePath()));
      intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
      intent.putExtra("android.intent.extra.SUBJECT", amc.c(this.a).e());
      intent.putExtra("android.intent.extra.TEXT", amc.c(this.a).f());
      amc.d(this.a).startActivity(Intent.createChooser(intent, amc.d(this.a).getString(alv.comprovante_share_title)));
      if (amc.e(this.a) != null)
        amc.e(this.a).b(); 
    } catch (Exception exception) {}
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\amd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */