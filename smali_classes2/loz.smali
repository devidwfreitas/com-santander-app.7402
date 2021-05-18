.class public Lloz;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private A:Landroid/text/TextWatcher;

.field private B:Lksa;

.field private C:Lkqy;

.field private D:Z

.field private E:Llkm;

.field private F:Landroid/text/TextWatcher;

.field private G:Landroid/text/TextWatcher;

.field private a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private b:Landroid/widget/ImageButton;

.field private c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private l:Landroid/view/View;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/support/design/widget/TextInputLayout;

.field private o:Landroid/support/design/widget/TextInputEditText;

.field private p:Landroid/support/design/widget/TextInputLayout;

.field private q:Landroid/support/design/widget/TextInputEditText;

.field private r:Landroid/widget/FrameLayout;

.field private s:Landroid/widget/FrameLayout;

.field private t:Landroid/widget/Button;

.field private u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

.field private v:Landroid/support/v7/widget/RecyclerView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private y:Lkye;

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 116
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    iput-object v0, p0, Lloz;->y:Lkye;

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lloz;->D:Z

    return-void
.end method

.method static synthetic a(Lloz;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method private a(Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 454
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 455
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 456
    invoke-virtual {v0, v1, v1}, Ljava/util/Calendar;->add(II)V

    .line 457
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lloz;Llkm;)Llkm;
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lloz;->E:Llkm;

    return-object p1
.end method

.method public static a()Lloz;
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    new-instance v1, Lloz;

    invoke-direct {v1}, Lloz;-><init>()V

    .line 139
    invoke-virtual {v1, v0}, Lloz;->setArguments(Landroid/os/Bundle;)V

    .line 140
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 461
    const v0, 0x7f100f7b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 462
    const v0, 0x7f100f7a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lloz;->b:Landroid/widget/ImageButton;

    .line 463
    const v0, 0x7f100f7c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 464
    const v0, 0x7f100f7d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloz;->d:Landroid/widget/TextView;

    .line 465
    const v0, 0x7f100f7e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->e:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 466
    const v0, 0x7f100f7f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloz;->f:Landroid/widget/TextView;

    .line 467
    const v0, 0x7f100f80

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->g:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 468
    const v0, 0x7f100f81

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloz;->h:Landroid/widget/TextView;

    .line 469
    const v0, 0x7f100f82

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 470
    const v0, 0x7f100f83

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloz;->j:Landroid/widget/TextView;

    .line 471
    const v0, 0x7f100f84

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lloz;->k:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 472
    const v0, 0x7f100f85

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lloz;->w:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f100f86

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lloz;->l:Landroid/view/View;

    .line 474
    const v0, 0x7f100ee7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lloz;->m:Landroid/widget/LinearLayout;

    .line 475
    const v0, 0x7f100f88

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lloz;->n:Landroid/support/design/widget/TextInputLayout;

    .line 476
    const v0, 0x7f100f89

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    .line 477
    const v0, 0x7f100f8a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputLayout;

    iput-object v0, p0, Lloz;->p:Landroid/support/design/widget/TextInputLayout;

    .line 478
    const v0, 0x7f100f8b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TextInputEditText;

    iput-object v0, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    .line 479
    const v0, 0x7f100956

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lloz;->r:Landroid/widget/FrameLayout;

    .line 480
    const v0, 0x7f100957

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lloz;->s:Landroid/widget/FrameLayout;

    .line 481
    const v0, 0x7f10011c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lloz;->v:Landroid/support/v7/widget/RecyclerView;

    .line 482
    const v0, 0x7f100611

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lloz;->t:Landroid/widget/Button;

    .line 485
    const v0, 0x7f100f87

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    iput-object v0, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    .line 487
    const v0, 0x7f100955

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lloz;->z:Landroid/widget/LinearLayout;

    .line 489
    iget-object v0, p0, Lloz;->r:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lloz;->b()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 491
    iget-object v0, p0, Lloz;->t:Landroid/widget/Button;

    new-instance v1, Llpn;

    invoke-direct {v1, p0}, Llpn;-><init>(Lloz;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lloz;->s:Landroid/widget/FrameLayout;

    new-instance v1, Llpo;

    invoke-direct {v1, p0}, Llpo;-><init>(Lloz;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    iget-object v0, p0, Lloz;->b:Landroid/widget/ImageButton;

    new-instance v1, Llpc;

    invoke-direct {v1, p0}, Llpc;-><init>(Lloz;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 575
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 172
    new-instance v0, Lkro;

    invoke-direct {v0}, Lkro;-><init>()V

    .line 173
    invoke-virtual {v0, p1}, Lkro;->a(Ljava/lang/String;)V

    .line 175
    new-instance v1, Lkrf;

    invoke-direct {v1}, Lkrf;-><init>()V

    .line 176
    const-string v2, "FORM"

    invoke-virtual {v1, v2}, Lkrf;->a(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1, v0}, Lkrf;->b(Lkro;)V

    .line 179
    iget-object v0, p0, Lloz;->y:Lkye;

    new-instance v2, Llpa;

    invoke-direct {v2, p0}, Llpa;-><init>(Lloz;)V

    iget-object v3, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 247
    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f()Lkxl;

    move-result-object v3

    .line 179
    invoke-interface {v0, v1, v2, v3}, Lkye;->a(Lkrf;Lkxl;Lkxl;)V

    .line 249
    return-void
.end method

.method static synthetic a(Lloz;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lloz;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lloz;Z)Z
    .locals 0

    .prologue
    .line 86
    iput-boolean p1, p0, Lloz;->D:Z

    return p1
.end method

.method static synthetic b(Lloz;)Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    return-object v0
.end method

.method static synthetic c(Lloz;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lloz;->f()V

    return-void
.end method

.method static synthetic d(Lloz;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->v:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string v0, "Seguros_Contratacao_Vida_Resumo_Acao"

    const-string v1, "TelaResumo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const-string v0, "Seguros_Contratacao_AP_Resumo_Acao"

    const-string v1, "TelaResumo"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lloz;)Llkm;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->E:Llkm;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setFamily(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {p0}, Lloz;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->setFragmentManager(Landroid/support/v4/app/FragmentManager;)V

    .line 287
    invoke-direct {p0}, Lloz;->h()V

    .line 288
    invoke-direct {p0}, Lloz;->i()V

    .line 292
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Llpj;

    invoke-direct {v1, p0}, Llpj;-><init>(Lloz;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 310
    return-void
.end method

.method static synthetic f(Lloz;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private f()V
    .locals 5

    .prologue
    .line 318
    const-string v0, "(##)####-####"

    const-string v1, "(##)#####-####"

    iget-object v2, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-static {v0, v1, v2}, Lmhb;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/EditText;)Landroid/text/TextWatcher;

    move-result-object v0

    iput-object v0, p0, Lloz;->A:Landroid/text/TextWatcher;

    .line 319
    iget-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 322
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->i()Lkqj;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v0

    invoke-virtual {v0}, Lksa;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v0

    invoke-virtual {v0}, Lksa;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v0

    invoke-virtual {v0}, Lksa;->b()Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_0
    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v1

    invoke-virtual {v1}, Lksa;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v1

    invoke-virtual {v1}, Lksa;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v1

    invoke-virtual {v1}, Lksa;->c()Ljava/lang/String;

    move-result-object v1

    .line 327
    :goto_1
    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v2

    invoke-virtual {v2}, Lkqy;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v2

    invoke-virtual {v2}, Lkqy;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v2

    invoke-virtual {v2}, Lkqy;->c()Ljava/lang/String;

    move-result-object v2

    .line 328
    :goto_2
    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v4

    iput-object v4, p0, Lloz;->B:Lksa;

    .line 329
    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v3

    iput-object v3, p0, Lloz;->C:Lkqy;

    .line 330
    iget-object v3, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v2, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/design/widget/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 333
    new-instance v0, Llpk;

    invoke-direct {v0, p0}, Llpk;-><init>(Lloz;)V

    iput-object v0, p0, Lloz;->F:Landroid/text/TextWatcher;

    .line 355
    iget-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 357
    new-instance v0, Llpl;

    invoke-direct {v0, p0}, Llpl;-><init>(Lloz;)V

    iput-object v0, p0, Lloz;->G:Landroid/text/TextWatcher;

    .line 381
    iget-object v0, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->G:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 383
    :cond_0
    return-void

    .line 325
    :cond_1
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v0

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v1

    invoke-virtual {v1}, Lksa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v0, ""

    goto/16 :goto_0

    .line 326
    :cond_3
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    invoke-virtual {v3}, Lkqj;->a()Lksa;

    move-result-object v2

    invoke-virtual {v2}, Lksa;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-string v1, ""

    goto/16 :goto_1

    .line 327
    :cond_5
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v3}, Lkqj;->b()Lkqy;

    move-result-object v4

    invoke-virtual {v4}, Lkqy;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_6
    const-string v2, ""

    goto/16 :goto_2
.end method

.method static synthetic g(Lloz;)Landroid/support/design/widget/TextInputEditText;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    return-object v0
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    iget-object v0, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 388
    iget-object v0, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    iget-object v1, p0, Lloz;->G:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TextInputEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 389
    iput-object v2, p0, Lloz;->A:Landroid/text/TextWatcher;

    .line 390
    iput-object v2, p0, Lloz;->F:Landroid/text/TextWatcher;

    .line 391
    iput-object v2, p0, Lloz;->G:Landroid/text/TextWatcher;

    .line 392
    return-void
.end method

.method private h()V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 397
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->m()Lktl;

    move-result-object v1

    invoke-virtual {v1}, Lktl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->c()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->m()Lktl;

    move-result-object v1

    invoke-virtual {v1}, Lktl;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lloz;->a(Ljava/lang/String;)V

    .line 426
    :goto_0
    return-void

    .line 403
    :cond_0
    new-instance v0, Lkti;

    invoke-direct {v0}, Lkti;-><init>()V

    .line 404
    new-instance v1, Lkqg;

    invoke-direct {v1}, Lkqg;-><init>()V

    .line 405
    const-string v2, "939"

    invoke-virtual {v1, v2}, Lkqg;->e(Ljava/lang/String;)V

    .line 406
    const-string v2, "0000000002"

    invoke-virtual {v1, v2}, Lkqg;->c(Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    const-string v3, "00888885"

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkqg;->a(Ljava/lang/String;)V

    .line 408
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    const-string v3, "0001"

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkqg;->b(Ljava/lang/String;)V

    .line 410
    new-instance v2, Lktk;

    const-string v3, "UPD070"

    const-string v4, "01"

    invoke-direct {v2, v3, v4}, Lktk;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v3, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v3

    invoke-virtual {v3}, Lmhz;->m()Lktl;

    move-result-object v3

    invoke-virtual {v0, v3}, Lkti;->a(Lktl;)V

    .line 412
    invoke-virtual {v0, v1}, Lkti;->a(Lkqg;)V

    .line 413
    invoke-virtual {v0, v2}, Lkti;->a(Lktk;)V

    .line 415
    iget-object v1, p0, Lloz;->y:Lkye;

    new-instance v2, Llpm;

    invoke-direct {v2, p0}, Llpm;-><init>(Lloz;)V

    iget-object v3, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 424
    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f()Lkxl;

    move-result-object v3

    .line 415
    invoke-interface {v1, v0, v2, v3}, Lkye;->a(Lkti;Lkxl;Lkxl;)V

    goto :goto_0
.end method

.method static synthetic h(Lloz;)Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lloz;->l()Z

    move-result v0

    return v0
.end method

.method private i()V
    .locals 6

    .prologue
    .line 430
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 431
    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->g()Lkqn;

    move-result-object v1

    invoke-virtual {v1}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 433
    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 434
    if-eqz v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->n()Lkrz;

    move-result-object v1

    invoke-virtual {v1}, Lkrz;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 441
    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->n()Lkrz;

    move-result-object v2

    invoke-virtual {v2}, Lkrz;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    .line 442
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 443
    invoke-direct {p0, v3}, Lloz;->a(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 445
    iget-object v5, p0, Lloz;->a:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v5, v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v0, p0, Lloz;->d:Landroid/widget/TextView;

    invoke-static {v2}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    iget-object v0, p0, Lloz;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "12 x "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lmhj;->c(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v0, p0, Lloz;->h:Landroid/widget/TextView;

    const-string v1, "Anual"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lloz;->j:Landroid/widget/TextView;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v3, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v0, p0, Lloz;->w:Landroid/widget/TextView;

    const-string v1, "dd/MM/yyyy"

    invoke-static {v4, v1}, Lmhj;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090714

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 437
    :cond_2
    if-nez v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09083d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method static synthetic i(Lloz;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lloz;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 578
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 580
    new-instance v0, Lktb;

    invoke-direct {v0}, Lktb;-><init>()V

    .line 581
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v1

    iget-object v2, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktb;->a(Ljava/lang/String;)V

    .line 583
    new-instance v1, Lktd;

    invoke-direct {v1}, Lktd;-><init>()V

    .line 584
    iget-object v2, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 585
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lktd;->a(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lktd;->b(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, v1}, Lktb;->a(Lktd;)V

    .line 590
    iget-object v1, p0, Lloz;->y:Lkye;

    new-instance v2, Lktc;

    invoke-direct {v2, v0}, Lktc;-><init>(Lktb;)V

    new-instance v0, Llpd;

    invoke-direct {v0, p0}, Llpd;-><init>(Lloz;)V

    new-instance v3, Llpe;

    invoke-direct {v3, p0}, Llpe;-><init>(Lloz;)V

    invoke-interface {v1, v2, v0, v3}, Lkye;->a(Lktc;Lkxl;Lkxl;)V

    .line 605
    return-void
.end method

.method static synthetic j(Lloz;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lloz;->m()V

    return-void
.end method

.method private k()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksv;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    const-string v0, "0033"

    .line 609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 611
    iget-object v2, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h()Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->p()Lkql;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 613
    new-instance v2, Lksg;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    iget-object v4, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v4}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v4

    invoke-virtual {v4}, Lmhz;->p()Lkql;

    move-result-object v4

    invoke-virtual {v4}, Lkql;->a()Lkqk;

    move-result-object v4

    invoke-virtual {v4}, Lkqk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    iget-object v5, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v5}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v5

    invoke-virtual {v5}, Lmhz;->p()Lkql;

    move-result-object v5

    invoke-virtual {v5}, Lkql;->a()Lkqk;

    move-result-object v5

    invoke-virtual {v5}, Lkqk;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lksg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v3, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j()Lksw;

    move-result-object v3

    .line 618
    new-instance v4, Lksv;

    invoke-direct {v4}, Lksv;-><init>()V

    .line 619
    invoke-virtual {v4, v2}, Lksv;->a(Lksg;)V

    .line 620
    invoke-virtual {v4, v3}, Lksv;->a(Lksw;)V

    .line 621
    invoke-virtual {v4, v0}, Lksv;->a(Ljava/lang/String;)V

    .line 624
    new-instance v2, Lksm;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lksm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {v4, v2}, Lksv;->a(Lksm;)V

    .line 628
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 632
    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    invoke-virtual {v2}, Lksd;->a()Lksc;

    move-result-object v2

    .line 633
    iget-object v3, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k()Lksw;

    move-result-object v3

    .line 636
    new-instance v4, Lksg;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lksg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v5, Lksm;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    const-string v7, "S"

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v7

    invoke-virtual {v2}, Lksc;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v9

    invoke-virtual {v2}, Lksc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v7, v8, v2}, Lksm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    new-instance v2, Lksv;

    invoke-direct {v2}, Lksv;-><init>()V

    .line 642
    invoke-virtual {v2, v5}, Lksv;->a(Lksm;)V

    .line 643
    invoke-virtual {v2, v4}, Lksv;->a(Lksg;)V

    .line 644
    invoke-virtual {v2, v3}, Lksv;->a(Lksw;)V

    .line 645
    invoke-virtual {v2, v0}, Lksv;->a(Ljava/lang/String;)V

    .line 646
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_0
    :goto_0
    return-object v1

    .line 649
    :cond_1
    iget-object v2, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->i()Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatRadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 652
    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->q()Lksd;

    move-result-object v2

    invoke-virtual {v2}, Lksd;->a()Lksc;

    move-result-object v2

    .line 653
    iget-object v3, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j()Lksw;

    move-result-object v3

    .line 655
    new-instance v4, Lksm;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    const-string v6, "S"

    invoke-virtual {v5, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    invoke-virtual {v2}, Lksc;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v8

    invoke-virtual {v2}, Lksc;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v5, v6, v7, v2}, Lksm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    new-instance v2, Lksg;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Lksg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    new-instance v5, Lksv;

    invoke-direct {v5}, Lksv;-><init>()V

    .line 661
    invoke-virtual {v5, v4}, Lksv;->a(Lksm;)V

    .line 662
    invoke-virtual {v5, v3}, Lksv;->a(Lksw;)V

    .line 663
    invoke-virtual {v5, v0}, Lksv;->a(Ljava/lang/String;)V

    .line 664
    invoke-virtual {v5, v2}, Lksv;->a(Lksg;)V

    .line 665
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->p()Lkql;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 670
    new-instance v2, Lksg;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v3

    iget-object v4, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v4}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v4

    invoke-virtual {v4}, Lmhz;->p()Lkql;

    move-result-object v4

    invoke-virtual {v4}, Lkql;->a()Lkqk;

    move-result-object v4

    invoke-virtual {v4}, Lkqk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    iget-object v5, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v5}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v5

    invoke-virtual {v5}, Lmhz;->p()Lkql;

    move-result-object v5

    invoke-virtual {v5}, Lkql;->a()Lkqk;

    move-result-object v5

    invoke-virtual {v5}, Lkqk;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lksg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v3, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k()Lksw;

    move-result-object v3

    .line 674
    new-instance v4, Lksm;

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lksm;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    new-instance v5, Lksv;

    invoke-direct {v5}, Lksv;-><init>()V

    .line 677
    invoke-virtual {v5, v2}, Lksv;->a(Lksg;)V

    .line 678
    invoke-virtual {v5, v3}, Lksv;->a(Lksw;)V

    .line 679
    invoke-virtual {v5, v4}, Lksv;->a(Lksm;)V

    .line 680
    invoke-virtual {v5, v0}, Lksv;->a(Ljava/lang/String;)V

    .line 681
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method static synthetic k(Lloz;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lloz;->g()V

    return-void
.end method

.method private l()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 691
    iget-object v1, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lloz;->u:Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    :cond_0
    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {p0}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 707
    :goto_0
    return v0

    .line 697
    :cond_1
    iget-object v1, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 698
    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {p0}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09044f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 702
    :cond_2
    iget-object v1, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    .line 703
    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {p0}, Lloz;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090464

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmhj;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 740
    new-instance v0, Lkqj;

    invoke-direct {v0}, Lkqj;-><init>()V

    .line 742
    new-instance v1, Lkqy;

    invoke-direct {v1}, Lkqy;-><init>()V

    .line 743
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    iget-object v3, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkqy;->b(Ljava/lang/String;)V

    .line 745
    iget-object v2, p0, Lloz;->C:Lkqy;

    if-eqz v2, :cond_3

    .line 746
    iget-object v2, p0, Lloz;->C:Lkqy;

    invoke-virtual {v2}, Lkqy;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 747
    iget-boolean v2, p0, Lloz;->D:Z

    if-eqz v2, :cond_1

    .line 749
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    iget-object v3, p0, Lloz;->C:Lkqy;

    invoke-virtual {v3}, Lkqy;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    iget-object v3, p0, Lloz;->q:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lloz;->C:Lkqy;

    invoke-virtual {v2}, Lkqy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkqy;->a(Ljava/lang/String;)V

    .line 768
    :goto_0
    invoke-virtual {v0, v1}, Lkqj;->a(Lkqy;)V

    .line 770
    iget-object v1, p0, Lloz;->o:Landroid/support/design/widget/TextInputEditText;

    invoke-virtual {v1}, Landroid/support/design/widget/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmhj;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 771
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 773
    const-string v3, ""

    .line 774
    new-instance v3, Lksa;

    invoke-direct {v3}, Lksa;-><init>()V

    .line 776
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v4

    invoke-virtual {v4, v2}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lksa;->a(Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lnab;->a()Lnab;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lksa;->b(Ljava/lang/String;)V

    .line 790
    iget-object v1, p0, Lloz;->B:Lksa;

    invoke-virtual {v1}, Lksa;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lksa;->d(Ljava/lang/String;)V

    .line 791
    iget-object v1, p0, Lloz;->B:Lksa;

    invoke-virtual {v1}, Lksa;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lksa;->e(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lloz;->B:Lksa;

    invoke-virtual {v1}, Lksa;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lksa;->c(Ljava/lang/String;)V

    .line 794
    invoke-virtual {v0, v3}, Lkqj;->a(Lksa;)V

    .line 800
    sget-object v1, Lksq;->INSTANCE:Lksq;

    iget-object v2, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v2

    invoke-virtual {v2}, Lmhz;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lksq;->setBeneficiaries(Ljava/util/List;)V

    .line 801
    sget-object v1, Lksq;->INSTANCE:Lksq;

    invoke-virtual {v1, v0}, Lksq;->setContactData(Lkqj;)V

    .line 802
    sget-object v0, Lksq;->INSTANCE:Lksq;

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->f()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksq;->setQuestions(Ljava/util/List;)V

    .line 803
    sget-object v0, Lksq;->INSTANCE:Lksq;

    iget-object v1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    invoke-virtual {v1}, Lmhz;->n()Lkrz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksq;->setQuotationSelected(Lkrz;)V

    .line 804
    sget-object v0, Lksq;->INSTANCE:Lksq;

    invoke-direct {p0}, Lloz;->k()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lksq;->setPaymentList(Ljava/util/List;)V

    .line 806
    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const-class v2, Lcom/santander/app/seguros/ui/contract/activities/TermsOfUseActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 807
    const-string v0, "products-key"

    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v2

    iget-object v3, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v3

    invoke-virtual {v3}, Lmhz;->n()Lkrz;

    move-result-object v3

    invoke-virtual {v3}, Lkrz;->a()Lkrq;

    move-result-object v3

    invoke-virtual {v2, v3}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v0, "prize-value"

    invoke-virtual {p0}, Lloz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    const-string v2, "insurance-name-key"

    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v3

    invoke-virtual {v3}, Lmhz;->g()Lkqn;

    move-result-object v3

    invoke-virtual {v3}, Lkqn;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    invoke-virtual {p0, v1}, Lloz;->startActivity(Landroid/content/Intent;)V

    .line 811
    return-void

    .line 754
    :cond_0
    const-string v2, "001"

    invoke-virtual {v1, v2}, Lkqy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 757
    :cond_1
    iget-object v2, p0, Lloz;->C:Lkqy;

    invoke-virtual {v2}, Lkqy;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lkqy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 760
    :cond_2
    const-string v2, "001"

    invoke-virtual {v1, v2}, Lkqy;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 764
    :cond_3
    const-string v2, "001"

    invoke-virtual {v1, v2}, Lkqy;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    if-eqz p1, :cond_0

    .line 253
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 254
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 256
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Llph;

    invoke-direct {v2, p0}, Llph;-><init>(Lloz;)V

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 268
    new-instance v1, Llpi;

    invoke-direct {v1, p0, v0, p1}, Llpi;-><init>(Lloz;Landroid/support/v7/app/AlertDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 279
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 281
    :cond_0
    return-void
.end method

.method public b()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 711
    new-instance v0, Llpf;

    invoke-direct {v0, p0}, Llpf;-><init>(Lloz;)V

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 815
    :try_start_0
    iget-object v0, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->n()Lkrz;

    move-result-object v0

    invoke-virtual {v0}, Lkrz;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 819
    :goto_0
    return-object v0

    .line 816
    :catch_0
    move-exception v0

    .line 817
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 819
    const-string v0, ""

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 127
    instance-of v0, p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 128
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Lloz;->x:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 130
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lloz;->d()V

    .line 147
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
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
    .line 152
    const v0, 0x7f0401e6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 153
    invoke-direct {p0, v0}, Lloz;->a(Landroid/view/View;)V

    .line 154
    invoke-direct {p0}, Lloz;->e()V

    .line 155
    return-object v0
.end method
