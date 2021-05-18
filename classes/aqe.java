import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Environment;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatDialog;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.File;
import java.util.Date;

public class aqe {
  private final int a;
  
  private aqn b;
  
  private Activity c;
  
  private File d;
  
  private String e;
  
  private Dialog f;
  
  private String g;
  
  private boolean h;
  
  private ard i = ard.a();
  
  public aqe(Activity paramActivity, aqn paramaqn, String paramString, int paramInt) {
    this.c = paramActivity;
    this.b = paramaqn;
    this.e = paramString;
    this.a = paramInt;
  }
  
  private void a(int paramInt1, int paramInt2, TextView paramTextView) {
    Drawable drawable = DrawableCompat.wrap(ContextCompat.getDrawable((Context)this.c, paramInt2));
    DrawableCompat.setTint(drawable.mutate(), paramInt1);
    paramTextView.setCompoundDrawablesWithIntrinsicBounds(null, drawable, null, null);
    paramTextView.setCompoundDrawablePadding((int)((this.c.getResources().getDisplayMetrics()).density * 8.0F + 0.5F));
  }
  
  private void a(Intent paramIntent) {
    if (paramIntent != null && paramIntent.getData() != null) {
      Uri uri = paramIntent.getData();
      File file = aqr.a((Context)this.c, uri);
      aqs.a(file, (Context)this.c);
      a(file);
      return;
    } 
    this.d = new File(this.g);
    aqs.a(this.d, (Context)this.c);
    a(this.d);
  }
  
  private void a(File paramFile) {
    if (this.b != null) {
      if (aqs.a(paramFile)) {
        if (this.d != null) {
          this.b.a(this.d);
          return;
        } 
        if (!aqr.a(paramFile)) {
          ase.a(this.c, "Chat Santander", "Você pode confirmar o envio do documento {document}?".replace("{document}", paramFile.getName()), "Enviar", new aql(this, paramFile), new aqm(this));
          return;
        } 
        this.b.a(paramFile);
        return;
      } 
    } else {
      return;
    } 
    ase.a("Chat Santander", "Desculpe, não conseguimos receber esse arquivo. Ele deve ter no máximo 5MB.", (Context)this.c);
    this.b.a(4);
  }
  
  private void a(String paramString) {
    File file = new File(Environment.getExternalStorageDirectory() + "/" + paramString);
    try {
      if (file.mkdir()) {
        Log.d(getClass().getName(), "Directory named " + paramString + " created");
        return;
      } 
      Log.d(getClass().getName(), "Directory named " + paramString + " not created");
      return;
    } catch (Exception exception) {
      exception.printStackTrace();
      return;
    } 
  }
  
  private void b(Intent paramIntent) {
    if (paramIntent != null) {
      Uri uri = paramIntent.getData();
      a(aqr.a((Context)this.c, uri));
    } 
  }
  
  private void c(Intent paramIntent) {
    File file;
    AppCompatDialog appCompatDialog;
    ImageView imageView1;
    ImageView imageView2;
    ImageView imageView3;
    if (paramIntent != null) {
      View view = LayoutInflater.from((Context)this.c).inflate(apk.frame_preview, null);
      appCompatDialog = new AppCompatDialog((Context)this.c, 16973833);
      appCompatDialog.setContentView(view);
      appCompatDialog.setTitle("Preview");
      imageView1 = (ImageView)appCompatDialog.findViewById(api.image_preview);
      imageView2 = (ImageView)appCompatDialog.findViewById(api.image_confirm);
      imageView3 = (ImageView)appCompatDialog.findViewById(api.image_cancel);
      ((TextView)appCompatDialog.findViewById(api.close_image_preview_tv)).setVisibility(8);
      Uri uri = paramIntent.getData();
      file = aqr.a((Context)this.c, uri);
      if (!aqs.b((Context)this.c, uri)) {
        this.b.a(5);
        return;
      } 
    } else {
      return;
    } 
    Bitmap bitmap = aqs.a(file.getPath());
    if (bitmap != null) {
      imageView1.setImageBitmap(bitmap);
      imageView2.setOnClickListener(new aqj(this, file, appCompatDialog));
      imageView3.setOnClickListener(new aqk(this, appCompatDialog));
      appCompatDialog.show();
      return;
    } 
    this.b.a(5);
  }
  
  private Dialog e() {
    AlertDialog.Builder builder = new AlertDialog.Builder((Context)this.c);
    View view = this.c.getLayoutInflater().inflate(apk.capture_or_pick_image_dialog, null);
    TextView textView1 = (TextView)view.findViewById(api.text_action_camera);
    TextView textView2 = (TextView)view.findViewById(api.text_action_gallery);
    TextView textView3 = (TextView)view.findViewById(api.text_action_document);
    a(this.a, aph.ico_squadchat_action_capture, textView1);
    a(this.a, aph.ico_squadchat_action_gallery, textView2);
    a(this.a, aph.ico_squadchat_action_document, textView3);
    textView1.setOnClickListener(new aqf(this));
    textView2.setOnClickListener(new aqg(this));
    textView3.setOnClickListener(new aqh(this));
    builder.setView(view).setNegativeButton(apo.cancel, new aqi(this));
    return (Dialog)builder.create();
  }
  
  public void a() {
    this.f = e();
    this.f.show();
  }
  
  public void a(int paramInt1, int paramInt2, Intent paramIntent) {
    if (paramInt2 == -1) {
      switch (paramInt1) {
        default:
          this.b.a(1);
          return;
        case 41:
          a(paramIntent);
          return;
        case 42:
          b(paramIntent);
          return;
        case 43:
          break;
      } 
    } else {
      return;
    } 
    c(paramIntent);
  }
  
  public void a(int paramInt, String[] paramArrayOfString, int[] paramArrayOfint, boolean paramBoolean) {
    if (paramInt == 0) {
      if (paramArrayOfint.length > 0 && paramArrayOfint[0] == 0 && paramArrayOfint[1] == 0) {
        if (!paramBoolean)
          a(); 
        return;
      } 
    } else {
      return;
    } 
    this.b.a(0);
  }
  
  public void b() {
    if (aqs.a((Context)this.c)) {
      if (aqs.b((Context)this.c)) {
        this.h = true;
        if (!aqr.e())
          a(); 
        return;
      } 
      this.h = false;
      aqs.c((Context)this.c);
      return;
    } 
    this.b.a(2);
  }
  
  public Uri c() {
    a(this.e);
    if ("mounted".equals(Environment.getExternalStorageState())) {
      File file1 = new File(Environment.getExternalStorageDirectory() + "/" + this.e + "/", "image" + (new Date()).getTime() + ".jpg");
      Uri uri1 = aqr.a((Context)this.c, file1);
      this.g = file1.getAbsolutePath();
      return uri1;
    } 
    File file = new File(this.c.getFilesDir(), "image" + (new Date()).getTime() + ".jpg");
    Uri uri = aqr.a((Context)this.c, file);
    this.g = file.getAbsolutePath();
    return uri;
  }
  
  public boolean d() {
    return this.h;
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\aqe.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */