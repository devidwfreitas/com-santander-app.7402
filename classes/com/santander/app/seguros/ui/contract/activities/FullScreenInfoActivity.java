package com.santander.app.seguros.ui.contract.activities;

import android.app.Activity;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.santander.app.seguros.ui.widgets.JustifiedTextView;
import gpu;
import ljn;

@Deprecated
public class FullScreenInfoActivity extends AppCompatActivity {
  public static final String a = "title-key";
  
  public static final String b = "description-key";
  
  private ImageView c;
  
  private ImageView d;
  
  private JustifiedTextView e;
  
  private TextView f;
  
  private String g;
  
  private void a() {
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, getString(2131297580));
  }
  
  private void b() {
    this.c = (ImageView)findViewById(2131755788);
    this.d = (ImageView)findViewById(2131755787);
    this.e = (JustifiedTextView)findViewById(2131755790);
    this.f = (TextView)findViewById(2131755789);
    this.d.setOnClickListener((View.OnClickListener)new ljn(this));
  }
  
  private void c() {
    this.f.setText(this.g);
    this.e.setTextColor(getResources().getColor(2131624056));
    this.e.setTextSize(15);
    String str = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec vulputate lacus. Duis nisl quam, suscipit at dignissim vitae, egestas eu lectus. Aenean vel risus aliquam, aliquam magna ac, pulvinar libero. Nam erat orci, commodo a orci non, placerat condimentum leo. Aliquam sodales elit sit amet metus consectetur commodo. Nullam vehicula magna at ultrices dapibus. Sed sit amet pellentesque massa. Curabitur non mattis diam.\n\nVivamus tempus sed est sed consectetur. Curabitur venenatis eget nisi ut molestie. In id sagittis tellus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur fringilla ante non consectetur fringilla. Donec tristique finibus laoreet. Vestibulum suscipit ipsum sit amet tellus mollis porttitor. Phasellus eget dolor maximus, gravida tortor eget, varius erat.\n\nFusce eget enim a libero efficitur dignissim eu quis arcu. Nulla viverra justo vitae mi porta, nec pellentesque sem tincidunt. Quisque non est sit amet leo eleifend vehicula non ut diam. Vivamus egestas ante a mauris blandit tempus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec vulputate lacus. Duis nisl quam, suscipit at dignissim vitae, egestas eu lectus. Aenean vel risus aliquam, aliquam magna ac, pulvinar libero. Nam erat orci, commodo a orci non, placerat condimentum leo. Aliquam sodales elit sit amet metus consectetur commodo. Nullam vehicula magna at ultrices dapibus. Sed sit amet pellentesque massa. Curabitur non mattis diam." + "</br></br></br></br>";
    this.e.setText(str);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130968681);
    b();
    if (paramBundle == null && getIntent().getExtras() != null && getIntent().getExtras().containsKey("title-key"))
      this.g = getIntent().getExtras().getString("title-key"); 
    c();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\seguro\\ui\contract\activities\FullScreenInfoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */