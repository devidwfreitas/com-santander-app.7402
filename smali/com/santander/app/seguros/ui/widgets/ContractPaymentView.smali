.class public Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Llkz;


# instance fields
.field private a:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private e:Landroid/widget/FrameLayout;

.field private f:Landroid/support/v7/widget/AppCompatRadioButton;

.field private g:Landroid/widget/FrameLayout;

.field private h:Landroid/support/v7/widget/AppCompatRadioButton;

.field private i:Landroid/support/v7/widget/RecyclerView;

.field private j:Llkt;

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lmbl;

.field private p:Lksd;

.field private q:Lkql;

.field private r:Landroid/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    .line 137
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q()V

    .line 139
    return-void
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    return p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;Lkql;)Lkql;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q:Lkql;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;Lksd;)Lksd;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p:Lksd;

    return-object p1
.end method

.method public static synthetic b(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Llkt;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j:Llkt;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)Lmbl;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->o:Lmbl;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    return v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0402ce

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 143
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lmbf;

    invoke-direct {v1, p0}, Lmbf;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->g:Landroid/widget/FrameLayout;

    new-instance v1, Lmbg;

    invoke-direct {v1, p0}, Lmbg;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Lmbh;

    invoke-direct {v1, p0}, Lmbh;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    new-instance v1, Lmbi;

    invoke-direct {v1, p0}, Lmbi;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 210
    return-void
.end method

.method private p()V
    .locals 8

    .prologue
    const v7, 0x7f0e01da

    const v6, 0x7f0e01d9

    const/4 v5, 0x1

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v1, Llkx;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q:Lkql;

    sget-object v3, Llla;->ACCOUNT:Llla;

    invoke-direct {v1, v2, v3}, Llkx;-><init>(Ljava/lang/Object;Llla;)V

    .line 223
    new-instance v2, Llkx;

    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p:Lksd;

    sget-object v4, Llla;->CREDITCARD:Llla;

    invoke-direct {v2, v3, v4}, Llkx;-><init>(Ljava/lang/Object;Llla;)V

    .line 225
    iget v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    if-gtz v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 227
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :goto_0
    new-instance v1, Llkt;

    invoke-direct {v1, v0}, Llkt;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j:Llkt;

    .line 242
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j:Llkt;

    invoke-virtual {v0, p0}, Llkt;->a(Llkz;)V

    .line 243
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->i:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v5, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 244
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->i:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->j:Llkt;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 245
    return-void

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 233
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 234
    iget-object v3, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/AppCompatRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 235
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n()V

    .line 269
    const v0, 0x7f100ee7

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->b:Landroid/widget/LinearLayout;

    .line 270
    const v0, 0x7f10030d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->c:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 271
    const v0, 0x7f10038a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 272
    const v0, 0x7f100ee9

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->e:Landroid/widget/FrameLayout;

    .line 273
    const v0, 0x7f100eea

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 274
    const v0, 0x7f100eeb

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->g:Landroid/widget/FrameLayout;

    .line 275
    const v0, 0x7f100eec

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatRadioButton;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    .line 276
    const v0, 0x7f100eed

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->i:Landroid/support/v7/widget/RecyclerView;

    .line 277
    const v0, 0x7f100ee8

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->a:Landroid/widget/RelativeLayout;

    .line 278
    return-void
.end method

.method private r()V
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Llnj;->a(Ljava/util/List;Z)Llnj;

    move-result-object v0

    .line 302
    new-instance v1, Lmbj;

    invoke-direct {v1, p0}, Lmbj;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Llnj;->a(Llnl;)V

    .line 319
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r:Landroid/support/v4/app/FragmentManager;

    const-string v2, "dialog-select-credit-card"

    invoke-virtual {v0, v1, v2}, Llnj;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method private s()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->l:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const-string v0, "Seguros_Contratacao_Vida_Resumo_Acao"

    const-string v1, "BotaoSelecionarCC"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->m:Ljava/util/List;

    invoke-static {v0}, Llnc;->a(Ljava/util/List;)Llnc;

    move-result-object v0

    .line 333
    new-instance v1, Lmbk;

    invoke-direct {v1, p0}, Lmbk;-><init>(Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;)V

    invoke-virtual {v0, v1}, Llnc;->a(Llne;)V

    .line 349
    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r:Landroid/support/v4/app/FragmentManager;

    const-string v2, "select-account-dialog"

    invoke-virtual {v0, v1, v2}, Llnc;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 350
    return-void

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->l:Ljava/lang/String;

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    const-string v0, "Seguros_Contratacao_AP_Resumo_Acao"

    const-string v1, "BotaoSelecionarCC"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    return v0
.end method

.method public a(Ljava/lang/Object;Llla;)V
    .locals 1

    .prologue
    .line 282
    sget-object v0, Llla;->ACCOUNT:Llla;

    if-ne p2, v0, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->s()V

    .line 287
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r()V

    goto :goto_0
.end method

.method public a(Llla;)V
    .locals 1

    .prologue
    .line 292
    sget-object v0, Llla;->ACCOUNT:Llla;

    if-ne p1, v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->s()V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r()V

    goto :goto_0
.end method

.method public b()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->l:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lkql;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q:Lkql;

    return-object v0
.end method

.method public f()Lksd;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p:Lksd;

    return-object v0
.end method

.method public g()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->d:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090be3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p()V

    .line 153
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->o()V

    .line 154
    return-void
.end method

.method public h()Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->f:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public i()Landroid/support/v7/widget/AppCompatRadioButton;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->h:Landroid/support/v7/widget/AppCompatRadioButton;

    return-object v0
.end method

.method public j()Lksw;
    .locals 3

    .prologue
    .line 249
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    if-gtz v0, :cond_0

    const-string v0, "02"

    .line 250
    :goto_0
    const-string v1, "01"

    .line 251
    new-instance v2, Lksw;

    invoke-direct {v2, v1, v0}, Lksw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 249
    :cond_0
    const-string v0, "01"

    goto :goto_0
.end method

.method public k()Lksw;
    .locals 3

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const-string v0, "02"

    .line 257
    :goto_0
    const-string v2, "02"

    .line 258
    new-instance v1, Lksw;

    invoke-direct {v1, v2, v0}, Lksw;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 260
    :goto_1
    return-object v0

    .line 256
    :cond_0
    const-string v0, "01"

    goto :goto_0

    .line 260
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public l()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 264
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q:Lkql;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    if-lt v1, v0, :cond_2

    iget-object v1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p:Lksd;

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAccountPos(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->k:I

    .line 59
    return-void
.end method

.method public setContracts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkql;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->m:Ljava/util/List;

    .line 129
    return-void
.end method

.method public setContractsGetDetails(Lkql;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->q:Lkql;

    .line 117
    return-void
.end method

.method public setCreditCardSelected(Lksd;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->p:Lksd;

    .line 125
    return-void
.end method

.method public setCreditCards(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lksd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->n:Ljava/util/List;

    .line 93
    return-void
.end method

.method public setFamily(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->l:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setFragmentManager(Landroid/support/v4/app/FragmentManager;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->r:Landroid/support/v4/app/FragmentManager;

    .line 105
    return-void
.end method

.method public setListener(Lmbl;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/santander/app/seguros/ui/widgets/ContractPaymentView;->o:Lmbl;

    .line 109
    return-void
.end method
