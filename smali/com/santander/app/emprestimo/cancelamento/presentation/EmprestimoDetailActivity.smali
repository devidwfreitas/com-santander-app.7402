.class public Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;
.super Lhmc;
.source "SourceFile"

# interfaces
.implements Lhfg;
.implements Lhmk;


# static fields
.field public static final a:Ljava/lang/String; = "EXTRA_CANCELAVEL"

.field public static final b:Ljava/lang/String; = "EXTRA_VALID_AVERBATION"


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/widget/Button;

.field private C:Landroid/widget/Button;

.field private D:Lhmo;

.field private E:Landroid/app/Dialog;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/ScrollView;

.field private x:Landroid/widget/EditText;

.field private y:Landroid/support/v7/widget/RecyclerView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lhmc;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->B:Landroid/widget/Button;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .param p1    # I
        .annotation build Lhxu;
        .end annotation
    .end param

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 267
    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->setTitle(I)V

    .line 268
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 270
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lhxl;)V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(Landroid/content/Context;Lhxl;Z)V

    .line 73
    return-void
.end method

.method public static a(Landroid/content/Context;Lhxl;Z)V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    const-string v1, "EXTRA_CANCELAVEL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 78
    const-string v1, "EXTRA_VALID_AVERBATION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)Lhmo;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->j()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->w:Landroid/widget/ScrollView;

    .line 103
    const v0, 0x7f100714

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->c:Landroid/widget/LinearLayout;

    .line 104
    const v0, 0x7f1006ff

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->d:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f1011c2

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->e:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f1002fc

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->g:Landroid/widget/RelativeLayout;

    .line 107
    const v0, 0x7f1002fb

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f:Landroid/widget/LinearLayout;

    .line 108
    const v0, 0x7f1011c3

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->y:Landroid/support/v7/widget/RecyclerView;

    .line 109
    const v0, 0x7f1002fd

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->x:Landroid/widget/EditText;

    .line 110
    const v0, 0x7f10056d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->z:Landroid/widget/TextView;

    .line 112
    const v0, 0x7f1002fe

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->A:Landroid/widget/ImageView;

    .line 113
    const v0, 0x7f1002ff

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->B:Landroid/widget/Button;

    .line 114
    const v0, 0x7f1002fa

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->C:Landroid/widget/Button;

    .line 116
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->x:Landroid/widget/EditText;

    new-instance v1, Lhmg;

    invoke-direct {v1, p0}, Lhmg;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->i()V

    .line 138
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->A:Landroid/widget/ImageView;

    new-instance v1, Lhmh;

    invoke-direct {v1, p0}, Lhmh;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->B:Landroid/widget/Button;

    new-instance v1, Lhmi;

    invoke-direct {v1, p0}, Lhmi;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->C:Landroid/widget/Button;

    new-instance v1, Lhmj;

    invoke-direct {v1, p0}, Lhmj;-><init>(Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    invoke-interface {v0}, Lhmo;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->C:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->C:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private j()V
    .locals 4

    .prologue
    .line 259
    const v0, 0x7f090aa5

    const v1, 0x7f090758

    .line 261
    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09017f

    const/4 v3, 0x0

    .line 259
    invoke-static {p0, v0, v1, v2, v3}, Lhys;->a(Landroid/app/Activity;ILjava/lang/String;IZ)V

    .line 264
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 284
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->setTitle(I)V

    .line 285
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->w:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->g:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0}, Lhmc;->a()V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    invoke-interface {v0}, Lhmo;->g()V

    .line 390
    return-void
.end method

.method public a(Lhgb;)V
    .locals 0

    .prologue
    .line 231
    invoke-static {p0, p1}, Lcom/santander/app/emprestimo/cancelamento/presentation/TermoCondCancelarEmpActivity;->b(Landroid/content/Context;Lhgb;)V

    .line 232
    invoke-static {}, Lhnj;->g()V

    .line 233
    return-void
.end method

.method public a(Lhnk;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhnk;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 295
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->z:Landroid/widget/TextView;

    invoke-virtual {p1}, Lhnk;->b()I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 296
    const v0, 0x7f10056f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Lhnk;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 297
    return-void
.end method

.method public bridge synthetic a(Lhxl;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lhmc;->a(Lhxl;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lhgb;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 220
    new-instance v0, Lhff;

    const v1, 0x7f0400fd

    invoke-direct {v0, p1, v1}, Lhff;-><init>(Ljava/util/List;I)V

    .line 221
    invoke-virtual {v0, p0}, Lhff;->a(Lhfg;)V

    .line 222
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/LinearLayoutManager;->setAutoMeasureEnabled(Z)V

    .line 224
    iget-object v2, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 225
    iget-object v2, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 226
    iget-object v1, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->y:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 227
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f()V

    .line 215
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->k()V

    .line 216
    return-void
.end method

.method public bridge synthetic b(Lhxl;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lhmc;->b(Lhxl;)V

    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 237
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lhys;->a(Landroid/app/Activity;Ljava/lang/String;Z)V

    .line 238
    return-void
.end method

.method public bridge synthetic c(Lhxl;)V
    .locals 0

    .prologue
    .line 48
    invoke-super {p0, p1}, Lhmc;->c(Lhxl;)V

    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 242
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->E:Landroid/app/Dialog;

    .line 243
    return-void
.end method

.method public d(Lhxl;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 174
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f()V

    .line 175
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(I)V

    .line 177
    const v0, 0x7f100701

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v0, 0x7f100703

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v0, 0x7f100705

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%sx"

    new-array v2, v5, [Ljava/lang/Object;

    .line 182
    invoke-interface {p1}, Lhxl;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 181
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const v0, 0x7f100707

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    const v0, 0x7f100709

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    const v0, 0x7f10070b

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v0, 0x7f10070d

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const v0, 0x7f10070f

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    const v0, 0x7f100711

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%s\n%s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 195
    invoke-interface {p1}, Lhxl;->o()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 196
    invoke-interface {p1}, Lhxl;->p()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 194
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const v0, 0x7f100713

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%s\n%s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 199
    invoke-interface {p1}, Lhxl;->q()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 200
    invoke-interface {p1}, Lhxl;->r()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 198
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->E:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->E:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->E:Landroid/app/Dialog;

    .line 251
    :cond_0
    return-void
.end method

.method public e(Lhxl;)V
    .locals 5

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->f()V

    .line 206
    invoke-interface {p1}, Lhxl;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->a(I)V

    .line 207
    const v0, 0x7f100716

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v0, 0x7f100718

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "%sx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lhxl;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v0, 0x7f10071a

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->w:Landroid/widget/ScrollView;

    invoke-static {v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 256
    return-void
.end method

.method public f(Lhxl;)V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 301
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "in\u00edcio: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 302
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 301
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 305
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 384
    invoke-super {p0}, Lhmc;->onBackPressed()V

    .line 385
    return-void
.end method

.method public g(Lhxl;)V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 309
    const v0, 0x7f100571

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 310
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 309
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 313
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 314
    const v0, 0x7f100702

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    return-void
.end method

.method public h(Lhxl;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 321
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 322
    const v0, 0x7f100571

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    .line 323
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 322
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 325
    const v0, 0x7f100573

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Prazo para aprova\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    .line 326
    invoke-interface {p1}, Lhxl;->v()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 325
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const v0, 0x7f100702

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 328
    return-void
.end method

.method public i(Lhxl;)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 333
    const v0, 0x7f100571

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v5, [Ljava/lang/Object;

    .line 334
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 333
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 336
    const v0, 0x7f100573

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Data de cancelamento: %s"

    new-array v2, v5, [Ljava/lang/Object;

    .line 337
    invoke-interface {p1}, Lhxl;->x()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 336
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v0, 0x7f100702

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 340
    return-void
.end method

.method public j(Lhxl;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 344
    const v0, 0x7f100703

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    return-void
.end method

.method public k(Lhxl;)V
    .locals 7

    .prologue
    const v6, 0x7f10056e

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 352
    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "in\u00edcio: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 353
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 352
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    const v0, 0x7f100703

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-interface {p1}, Lhxl;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 355
    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 356
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 357
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 358
    return-void
.end method

.method public l(Lhxl;)V
    .locals 7

    .prologue
    const v6, 0x7f100702

    const v1, 0x7f100571

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 362
    invoke-interface {p1}, Lhxl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Data de solicita\u00e7\u00e3o: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 364
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 363
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    :goto_0
    const v0, 0x7f100570

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 372
    const v0, 0x7f10056e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 373
    const v0, 0x7f100572

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 375
    return-void

    .line 367
    :cond_0
    invoke-virtual {p0, v1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "In\u00edcio: %s"

    new-array v2, v2, [Ljava/lang/Object;

    .line 368
    invoke-interface {p1}, Lhxl;->u()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 367
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    invoke-virtual {p0, v6}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    invoke-interface {v0}, Lhmo;->h()V

    .line 380
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0, p1}, Lhmc;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f040060

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->setContentView(I)V

    .line 87
    new-instance v0, Lhmp;

    invoke-direct {v0, p0}, Lhmp;-><init>(Lhmk;)V

    iput-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    .line 89
    const v0, 0x7f09020e

    invoke-virtual {p0, v0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->c(I)V

    .line 90
    invoke-direct {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->h()V

    .line 92
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    invoke-interface {v0}, Lhmo;->a()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lhmc;->onDestroy()V

    .line 98
    iget-object v0, p0, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->D:Lhmo;

    invoke-interface {v0}, Lhmo;->b()V

    .line 99
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lcom/santander/app/emprestimo/cancelamento/presentation/EmprestimoDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgpu;->b(Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 398
    :cond_0
    return-void
.end method
