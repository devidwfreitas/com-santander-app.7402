package com.santander.app.habilitacaointernacional.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.app.ActionBar;
import android.text.TextWatcher;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import com.santander.app.components.view.SegmentTextView;
import fqh;
import gpu;
import grs;
import ink;
import inl;
import inm;
import inn;
import iok;
import java.util.ArrayList;

public class ListarPaisesHabilitacaoActivity extends grs {
  public Dialog a = null;
  
  private final String b = "ListarPaisesHabilitacaoActivity";
  
  private ArrayList<iok> c;
  
  private fqh d;
  
  private Activity e;
  
  private ListView f;
  
  private fqh g;
  
  private String w = "";
  
  private String x = "";
  
  private void a(int paramInt) {
    Dialog dialog = new Dialog((Context)this, 2131427876);
    dialog.setContentView(2130968968);
    TextView textView = (TextView)dialog.findViewById(2131756914);
    if (paramInt == 1)
      textView.setText("Erro ao buscar países."); 
    ((SegmentTextView)dialog.findViewById(2131756525)).setText("Alerta");
    ((Button)dialog.findViewById(2131756931)).setOnClickListener((View.OnClickListener)new inm(this, dialog));
    dialog.show();
  }
  
  public void onBackPressed() {
    Intent intent = new Intent((Context)this, CadastrarHabilitacaoInternacionalActivity.class);
    intent.putExtra("codigoPais", this.w);
    intent.putExtra("nomePais", this.x);
    setResult(1, intent);
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle) {
    super.onCreate(paramBundle);
    setContentView(2130969349);
    this.e = (Activity)this;
    ActionBar actionBar = getSupportActionBar();
    actionBar.setDisplayShowHomeEnabled(false);
    actionBar.setDisplayShowTitleEnabled(false);
    actionBar.setDisplayShowCustomEnabled(true);
    gpu.a((Activity)this, actionBar, "Países");
    EditText editText = (EditText)findViewById(2131759054);
    this.f = (ListView)findViewById(2131759055);
    (new inn(this)).execute((Object[])new Void[0]);
    new ArrayList();
    editText.addTextChangedListener((TextWatcher)new ink(this, editText));
    this.f.setOnItemClickListener((AdapterView.OnItemClickListener)new inl(this));
  }
}


/* Location:              C:\Users\devid\Downloads\SAST\Santander\dex2jar-2.0\classes-dex2jar.jar!\com\santander\app\habilitacaointernacional\activity\ListarPaisesHabilitacaoActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       1.1.3
 */