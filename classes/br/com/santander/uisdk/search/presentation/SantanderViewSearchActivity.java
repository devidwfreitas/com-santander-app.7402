package br.com.santander.uisdk.search.presentation;

import als;
import alu;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextWatcher;
import android.view.View;
import android.widget.EditText;
import anp;
import anq;
import anr;
import ans;
import ant;
import anu;
import java.util.ArrayList;

public class SantanderViewSearchActivity extends AppCompatActivity {
  private EditText a;
  
  private ArrayList<anq> b;
  
  private RecyclerView c;
  
  private View d;
  
  private anu e;
  
  private void a() {
    this.c = (RecyclerView)findViewById(als.recycler_view_search);
    this.a = (EditText)findViewById(als.edittext_search);
    this.d = findViewById(als.view_search_empty);
    this.b = (ArrayList<anq>)getIntent().getExtras().getSerializable("dados");
    this.a.addTextChangedListener((TextWatcher)new anr(this));
  }
  
  private void b() {
    this.c.setLayoutManager((RecyclerView.LayoutManager)new LinearLayoutManager((Context)this));
    this.c.setHasFixedSize(true);
    this.e = new anu(this.b, c());
    this.c.setAdapter((RecyclerView.Adapter)this.e);
  }
  
  private View.OnClickListener c() {
    return (View.OnClickListener)new ans(this);
  }
  
  private anp d() {
    return (anp)new ant(this);
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(alu.santander_view_search);
    a();
    b();
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\br\com\santande\\uisdk\search\presentation\SantanderViewSearchActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */