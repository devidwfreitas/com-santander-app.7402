.class public Lkjk;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lkjn;


# instance fields
.field private a:Lkgm;

.field private b:Lfvn;

.field private c:Lkjo;

.field private d:Lcom/santander/app/components/view/SantanderTextView;

.field private e:Lcom/santander/app/components/view/SantanderTextView;

.field private f:Lcom/santander/app/widget/Carrossel;

.field private g:Lcom/santander/app/widget/Carrossel;

.field private h:Lcom/santander/app/widget/Carrossel;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/LinearLayout;

.field private k:Lcom/santander/app/components/view/SegmentEditText;

.field private l:Lcom/santander/app/components/view/SegmentEditText;

.field private m:Lcom/santander/app/components/view/SegmentEditText;

.field private n:Lcom/santander/app/components/view/SegmentEditText;

.field private o:Lcom/santander/app/components/view/SantanderButtonView;

.field private p:Lcom/santander/app/components/view/SantanderButtonView;

.field private q:Lcom/santander/app/components/view/SantanderButtonView;

.field private r:Lcom/santander/app/components/view/SantanderButtonView;

.field private s:Lcom/santander/app/components/view/SegmentCheckBox;

.field private t:Landroid/app/Dialog;

.field private u:Lcom/santander/app/components/view/SegmentImageView;

.field private v:Ljava/lang/String;

.field private w:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 78
    const-string v0, "RecargaProgramadaFragment"

    iput-object v0, p0, Lkjk;->v:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lkjk;->f:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lkjl;

    invoke-direct {v1, p0}, Lkjl;-><init>(Lkjk;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 409
    iget-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lkjm;

    invoke-direct {v1, p0}, Lkjm;-><init>(Lkjk;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 420
    return-void
.end method

.method static synthetic a(Lkjk;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkjk;->f:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method static synthetic b(Lkjk;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method static synthetic c(Lkjk;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lkjk;->w:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 344
    return-void
.end method

.method public a(ILkic;)V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    const-string v1, "tipo_recarga"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    const-string v1, "response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Lkjk;->startActivity(Landroid/content/Intent;)V

    .line 331
    return-void
.end method

.method public a(ILkid;)V
    .locals 3

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 336
    const-string v1, "tipo_recarga"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 337
    const-string v1, "response"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 338
    invoke-virtual {p0, v0}, Lkjk;->startActivity(Landroid/content/Intent;)V

    .line 339
    return-void
.end method

.method public a(Lfvn;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lkjk;->b:Lfvn;

    .line 151
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lkjk;->b()V

    .line 254
    iget-object v0, p0, Lkjk;->d:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lkjk;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p2}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 267
    return-void
.end method

.method public a(Ljava/util/Calendar;Landroid/app/DatePickerDialog$OnDateSetListener;)V
    .locals 6

    .prologue
    .line 348
    new-instance v0, Landroid/app/DatePickerDialog;

    .line 349
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    .line 351
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    .line 352
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    .line 353
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 355
    invoke-virtual {v0}, Landroid/app/DatePickerDialog;->show()V

    .line 356
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lkjk;->f:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfoo;

    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 238
    return-void
.end method

.method public a(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    iput-object p1, p0, Lkjk;->w:Ljava/util/Vector;

    .line 243
    iget-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfqb;

    invoke-virtual {p0}, Lkjk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfqb;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 244
    return-void
.end method

.method public a(Lkgm;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lkjk;->a:Lkgm;

    .line 156
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lkjk;->s:Lcom/santander/app/components/view/SegmentCheckBox;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentCheckBox;->setChecked(Z)V

    .line 392
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lkjk;->i:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 161
    return-void
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lkjk;->h:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 387
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 260
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lkjk;->n:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lkjk;->m:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p2}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method public b(Ljava/util/Vector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lkjk;->h:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfqb;

    invoke-virtual {p0}, Lkjk;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfqb;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 249
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lkjk;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lkjk;->o:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lkjk;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lkjk;->p:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderButtonView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lkjk;->j:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lkjk;->t:Landroid/app/Dialog;

    .line 181
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lkjk;->t:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lkjk;->t:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lkjk;->t:Landroid/app/Dialog;

    .line 189
    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    .prologue
    .line 193
    new-instance v0, Lkhh;

    invoke-direct {v0}, Lkhh;-><init>()V

    .line 194
    iget-object v1, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v1}, Lkjo;->b()Lkhj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhh;->a(Lkhj;)V

    .line 195
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkhh;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 201
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 202
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 207
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 212
    return-void
.end method

.method public l()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lkjk;->n:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 217
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lkjk;->m:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 222
    return-void
.end method

.method public n()V
    .locals 3

    .prologue
    .line 226
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 233
    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lkjk;->f:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lkjk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lgpu;->b(Landroid/app/Activity;)V

    .line 145
    iget-object v0, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v0, p2, p3}, Lkjo;->a(ILandroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 85
    const v0, 0x7f0401fb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 87
    new-instance v0, Lkjo;

    invoke-direct {v0, p0}, Lkjo;-><init>(Lkjn;)V

    iput-object v0, p0, Lkjk;->c:Lkjo;

    .line 89
    const v0, 0x7f1009d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    iput-object v0, p0, Lkjk;->u:Lcom/santander/app/components/view/SegmentImageView;

    .line 90
    iget-object v0, p0, Lkjk;->u:Lcom/santander/app/components/view/SegmentImageView;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f1003c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lkjk;->d:Lcom/santander/app/components/view/SantanderTextView;

    .line 93
    const v0, 0x7f1009cf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lkjk;->e:Lcom/santander/app/components/view/SantanderTextView;

    .line 95
    const v0, 0x7f1009ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkjk;->f:Lcom/santander/app/widget/Carrossel;

    .line 96
    const v0, 0x7f1009d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    .line 97
    const v0, 0x7f1009d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkjk;->h:Lcom/santander/app/widget/Carrossel;

    .line 98
    iget-object v0, p0, Lkjk;->h:Lcom/santander/app/widget/Carrossel;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->j()Lnez;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 100
    const v0, 0x7f1009cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lkjk;->i:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f1009dc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lkjk;->j:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f1009ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    .line 104
    iget-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->f()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    const v0, 0x7f10033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    .line 106
    iget-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->g()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    const v0, 0x7f1009d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkjk;->m:Lcom/santander/app/components/view/SegmentEditText;

    .line 108
    iget-object v0, p0, Lkjk;->m:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->i()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    const v0, 0x7f1009d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkjk;->n:Lcom/santander/app/components/view/SegmentEditText;

    .line 110
    iget-object v0, p0, Lkjk;->n:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->h()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 112
    const v0, 0x7f1009db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkjk;->o:Lcom/santander/app/components/view/SantanderButtonView;

    .line 113
    iget-object v0, p0, Lkjk;->o:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->k()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f1009dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkjk;->p:Lcom/santander/app/components/view/SantanderButtonView;

    .line 115
    iget-object v0, p0, Lkjk;->p:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->l()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v0, 0x7f1009d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkjk;->q:Lcom/santander/app/components/view/SantanderButtonView;

    .line 118
    iget-object v0, p0, Lkjk;->q:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->d()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f1009cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkjk;->r:Lcom/santander/app/components/view/SantanderButtonView;

    .line 120
    iget-object v0, p0, Lkjk;->r:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->a()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f1009de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentCheckBox;

    iput-object v0, p0, Lkjk;->s:Lcom/santander/app/components/view/SegmentCheckBox;

    .line 123
    iget-object v0, p0, Lkjk;->s:Lcom/santander/app/components/view/SegmentCheckBox;

    iget-object v2, p0, Lkjk;->c:Lkjo;

    invoke-virtual {v2}, Lkjo;->e()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    iget-object v0, p0, Lkjk;->a:Lkgm;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lkjk;->c:Lkjo;

    iget-object v2, p0, Lkjk;->a:Lkgm;

    invoke-virtual {v0, v2}, Lkjo;->a(Lkgm;)V

    .line 132
    :goto_0
    invoke-direct {p0}, Lkjk;->A()V

    .line 134
    return-object v1

    .line 129
    :cond_0
    iget-object v0, p0, Lkjk;->c:Lkjo;

    iget-object v2, p0, Lkjk;->b:Lfvn;

    invoke-virtual {v0, v2}, Lkjo;->a(Lfvn;)V

    goto :goto_0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lkjk;->g:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lkjk;->h:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lkjk;->d:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lkjk;->o:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderButtonView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lkjk;->p:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderButtonView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lkjk;->s:Lcom/santander/app/components/view/SegmentCheckBox;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public x()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lkjk;->r:Lcom/santander/app/components/view/SantanderButtonView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setClickable(Z)V

    .line 366
    iget-object v0, p0, Lkjk;->r:Lcom/santander/app/components/view/SantanderButtonView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderButtonView;->setAlpha(F)V

    .line 367
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lkjk;->u:Lcom/santander/app/components/view/SegmentImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setClickable(Z)V

    .line 372
    iget-object v0, p0, Lkjk;->u:Lcom/santander/app/components/view/SegmentImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentImageView;->setAlpha(F)V

    .line 373
    return-void
.end method

.method public z()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 377
    iget-object v0, p0, Lkjk;->e:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 378
    iget-object v0, p0, Lkjk;->m:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentEditText;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lkjk;->n:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SegmentEditText;->setVisibility(I)V

    .line 380
    iget-object v0, p0, Lkjk;->l:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->setFocusable(Z)V

    .line 381
    iget-object v0, p0, Lkjk;->k:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->setFocusable(Z)V

    .line 382
    return-void
.end method
