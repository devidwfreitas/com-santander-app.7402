.class public Lkik;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lkio;


# instance fields
.field private a:Lcom/santander/app/widget/Carrossel;

.field private b:Lcom/santander/app/widget/Carrossel;

.field private c:Lcom/santander/app/widget/Carrossel;

.field private d:Lcom/santander/app/components/view/SantanderButtonView;

.field private e:Lcom/santander/app/components/view/SantanderButtonView;

.field private f:Lcom/santander/app/components/view/SegmentEditText;

.field private g:Lcom/santander/app/components/view/SegmentEditText;

.field private h:Lcom/santander/app/components/view/SegmentEditText;

.field private i:Lcom/santander/app/components/view/SegmentEditText;

.field private j:Lcom/santander/app/components/view/SegmentImageView;

.field private k:Lcom/santander/app/components/view/SegmentCheckBox;

.field private l:Lcom/santander/app/components/view/SantanderTextView;

.field private m:Lcom/santander/app/components/view/SantanderTextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/app/Dialog;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lfqa;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lkip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 59
    const-string v0, "RecargaFragment"

    iput-object v0, p0, Lkik;->p:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic a(Lkik;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkik;->a:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method static synthetic b(Lkik;)Lcom/santander/app/widget/Carrossel;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    return-object v0
.end method

.method static synthetic c(Lkik;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lkik;->q:Ljava/util/Vector;

    return-object v0
.end method

.method private t()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lkik;->a:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lkil;

    invoke-direct {v1, p0}, Lkil;-><init>(Lkik;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 124
    iget-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lkim;

    invoke-direct {v1, p0}, Lkim;-><init>(Lkik;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 135
    iget-object v0, p0, Lkik;->c:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lkin;

    invoke-direct {v1, p0}, Lkin;-><init>(Lkik;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 152
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0, p1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 332
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    invoke-virtual {p0}, Lkik;->c()V

    .line 228
    iget-object v0, p0, Lkik;->l:Lcom/santander/app/components/view/SantanderTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/view/SantanderTextView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lkik;->l:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SantanderTextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    return-void
.end method

.method public a(Ljava/lang/String;ILkic;)V
    .locals 3

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/santander/app/recargatelefone/recargaconfirmacao/presnetation/RecargaConfirmacaoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    const-string v1, "tipo_recarga"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 316
    invoke-virtual {p0, v0}, Lkik;->startActivity(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lkik;->f:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lkik;->g:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p2}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
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
    .line 204
    iget-object v0, p0, Lkik;->a:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfoo;

    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 205
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
    .line 216
    iput-object p1, p0, Lkik;->q:Ljava/util/Vector;

    .line 217
    iget-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfqb;

    invoke-virtual {p0}, Lkik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lfqb;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 218
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lkik;->k:Lcom/santander/app/components/view/SegmentCheckBox;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentCheckBox;->setChecked(Z)V

    .line 327
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 176
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    invoke-static {}, Lhat;->d()Lhav;

    move-result-object v0

    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lhav;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lkik;->h:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p1}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lkik;->i:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0, p2}, Lcom/santander/app/components/view/SegmentEditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method public b(Ljava/util/Vector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lfos;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Lkik;->c:Lcom/santander/app/widget/Carrossel;

    new-instance v1, Lfou;

    invoke-virtual {p0}, Lkik;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 223
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lkik;->n:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 182
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lkik;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lkik;->o:Landroid/app/Dialog;

    .line 192
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lkik;->o:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lkik;->o:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lkik;->o:Landroid/app/Dialog;

    .line 200
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lkhh;

    invoke-direct {v0}, Lkhh;-><init>()V

    .line 210
    iget-object v1, p0, Lkik;->r:Lkip;

    invoke-virtual {v1}, Lkip;->f()Lkhj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkhh;->a(Lkhj;)V

    .line 211
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkhh;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lkik;->f:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 240
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lkik;->g:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 245
    return-void
.end method

.method public j()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lkik;->h:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 250
    return-void
.end method

.method public k()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lkik;->i:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->requestFocus()Z

    .line 255
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    .line 259
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 261
    invoke-virtual {p0}, Lkik;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 263
    if-eqz v1, :cond_0

    .line 264
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 267
    :cond_0
    return-void
.end method

.method public m()I
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lkik;->a:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lkik;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v0}, Lcom/santander/app/widget/Carrossel;->a()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lkik;->r:Lkip;

    invoke-virtual {v0, p2, p3}, Lkip;->a(ILandroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 70
    const v0, 0x7f0401fa

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 71
    new-instance v0, Lkip;

    invoke-direct {v0, p0}, Lkip;-><init>(Lkio;)V

    iput-object v0, p0, Lkik;->r:Lkip;

    .line 73
    const v0, 0x7f1009ca

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkik;->a:Lcom/santander/app/widget/Carrossel;

    .line 74
    const v0, 0x7f1009d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkik;->b:Lcom/santander/app/widget/Carrossel;

    .line 75
    const v0, 0x7f1009d4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Lkik;->c:Lcom/santander/app/widget/Carrossel;

    .line 77
    invoke-direct {p0}, Lkik;->t()V

    .line 79
    const v0, 0x7f1009cb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkik;->d:Lcom/santander/app/components/view/SantanderButtonView;

    .line 80
    iget-object v0, p0, Lkik;->d:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->c()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v0, 0x7f1009d7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lkik;->e:Lcom/santander/app/components/view/SantanderButtonView;

    .line 82
    iget-object v0, p0, Lkik;->e:Lcom/santander/app/components/view/SantanderButtonView;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->d()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v0, 0x7f1009ce

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkik;->f:Lcom/santander/app/components/view/SegmentEditText;

    .line 85
    iget-object v0, p0, Lkik;->f:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->h()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 86
    const v0, 0x7f10033a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkik;->g:Lcom/santander/app/components/view/SegmentEditText;

    .line 87
    iget-object v0, p0, Lkik;->g:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->i()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    const v0, 0x7f1009d0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkik;->h:Lcom/santander/app/components/view/SegmentEditText;

    .line 89
    iget-object v0, p0, Lkik;->h:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->j()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 90
    const v0, 0x7f1009d1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentEditText;

    iput-object v0, p0, Lkik;->i:Lcom/santander/app/components/view/SegmentEditText;

    .line 91
    iget-object v0, p0, Lkik;->i:Lcom/santander/app/components/view/SegmentEditText;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->k()Landroid/text/TextWatcher;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    const v0, 0x7f1009d2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentImageView;

    iput-object v0, p0, Lkik;->j:Lcom/santander/app/components/view/SegmentImageView;

    .line 94
    iget-object v0, p0, Lkik;->j:Lcom/santander/app/components/view/SegmentImageView;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->e()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f1009d6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SegmentCheckBox;

    iput-object v0, p0, Lkik;->k:Lcom/santander/app/components/view/SegmentCheckBox;

    .line 97
    iget-object v0, p0, Lkik;->k:Lcom/santander/app/components/view/SegmentCheckBox;

    iget-object v2, p0, Lkik;->r:Lkip;

    invoke-virtual {v2}, Lkip;->g()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/santander/app/components/view/SegmentCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 99
    const v0, 0x7f1003c9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lkik;->l:Lcom/santander/app/components/view/SantanderTextView;

    .line 100
    const v0, 0x7f1009d5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderTextView;

    iput-object v0, p0, Lkik;->m:Lcom/santander/app/components/view/SantanderTextView;

    .line 102
    const v0, 0x7f1009cc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lkik;->n:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lkik;->r:Lkip;

    invoke-virtual {v0}, Lkip;->a()V

    .line 106
    return-object v1
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 162
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 157
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lkik;->h:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lkik;->i:Lcom/santander/app/components/view/SegmentEditText;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lkik;->l:Lcom/santander/app/components/view/SantanderTextView;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SantanderTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lkik;->k:Lcom/santander/app/components/view/SegmentCheckBox;

    invoke-virtual {v0}, Lcom/santander/app/components/view/SegmentCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method
