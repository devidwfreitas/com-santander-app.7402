.class public Llou;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Llmr;


# static fields
.field public static final a:I = 0x64

.field public static final b:Ljava/lang/String; = "mBeneficiaries-key"


# instance fields
.field c:I

.field private d:Landroid/support/v7/widget/CardView;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Landroid/support/v7/widget/RecyclerView;

.field private i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

.field private j:Lloy;

.field private k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private l:Llfh;

.field private m:I

.field private n:Llki;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Llou;->m:I

    .line 96
    const/4 v0, -0x1

    iput v0, p0, Llou;->c:I

    return-void
.end method

.method static synthetic a(Llou;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method public static a(Ljava/util/List;)Llou;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkpw;",
            ">;)",
            "Llou;"
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "mBeneficiaries-key"

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    invoke-virtual {v2, p0}, Lejm;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Llou;

    invoke-direct {v1}, Llou;-><init>()V

    .line 89
    invoke-virtual {v1, v0}, Llou;->setArguments(Landroid/os/Bundle;)V

    .line 90
    return-object v1
.end method

.method private a(I)V
    .locals 3

    .prologue
    .line 177
    iput p1, p0, Llou;->c:I

    .line 178
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 179
    invoke-static {v0}, Llmi;->a(Lkpw;)Llmi;

    move-result-object v0

    .line 180
    invoke-virtual {v0, p0}, Llmi;->a(Llmr;)V

    .line 181
    invoke-virtual {p0}, Llou;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "add-mBeneficiaries-contract-summary"

    invoke-virtual {v0, v1, v2}, Llmi;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    const v0, 0x7f100950

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, Llou;->d:Landroid/support/v7/widget/CardView;

    .line 235
    const v0, 0x7f100951

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Llou;->e:Landroid/widget/LinearLayout;

    .line 236
    const v0, 0x7f100952

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llou;->f:Landroid/widget/Button;

    .line 237
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Llou;->g:Landroid/widget/Button;

    .line 238
    const v0, 0x7f100953

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    .line 239
    const v0, 0x7f100954

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    iput-object v0, p0, Llou;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    .line 240
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 296
    invoke-static {p1}, Llfh;->a(Ljava/lang/String;)Llfh;

    move-result-object v0

    iput-object v0, p0, Llou;->l:Llfh;

    .line 297
    iget-object v0, p0, Llou;->l:Llfh;

    invoke-virtual {p0}, Llou;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "message-fragment"

    invoke-virtual {v0, v1, v2}, Llfh;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method static synthetic a(Llou;I)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llou;->a(I)V

    return-void
.end method

.method static synthetic a(Llou;Z)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Llou;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .prologue
    const v4, 0x7f090bb1

    const/16 v3, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 185
    iget v0, p0, Llou;->m:I

    if-gtz v0, :cond_3

    .line 186
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lmhz;->a(Ljava/util/List;)V

    .line 187
    if-eqz p1, :cond_0

    iget-object v0, p0, Llou;->j:Lloy;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Llou;->j:Lloy;

    invoke-interface {v0}, Lloy;->a()V

    .line 190
    :cond_0
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Escolha_Beneficiarios"

    const-string v1, "0"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_1
    :goto_0
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Z)V

    .line 199
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Z)V

    .line 226
    :goto_1
    return-void

    .line 193
    :cond_2
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 195
    const-string v0, "Seguros_Contratacao_AP_Proposta_Escolha_Beneficiarios"

    const-string v1, "0"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_3
    iget v0, p0, Llou;->m:I

    if-le v0, v3, :cond_4

    .line 201
    invoke-virtual {p0}, Llou;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llou;->a(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Z)V

    goto :goto_1

    .line 203
    :cond_4
    iget v0, p0, Llou;->m:I

    if-ge v0, v3, :cond_5

    .line 204
    invoke-virtual {p0}, Llou;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Llou;->a(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Z)V

    goto :goto_1

    .line 207
    :cond_5
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Llou;->o:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmhz;->a(Ljava/util/List;)V

    .line 209
    if-eqz p1, :cond_6

    iget-object v0, p0, Llou;->j:Lloy;

    if-eqz v0, :cond_6

    .line 210
    iget-object v0, p0, Llou;->j:Lloy;

    invoke-interface {v0}, Lloy;->a()V

    .line 213
    :cond_6
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 215
    const-string v1, "Seguros_Contratacao_Vida_Proposta_Escolha_Beneficiarios"

    iget-object v0, p0, Llou;->o:Ljava/util/List;

    if-nez v0, :cond_8

    const-string v0, "0"

    :goto_2
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_7
    :goto_3
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Z)V

    .line 224
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Z)V

    goto :goto_1

    .line 215
    :cond_8
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 217
    :cond_9
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgt;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    const-string v1, "Seguros_Contratacao_AP_Proposta_Escolha_Beneficiarios"

    iget-object v0, p0, Llou;->o:Ljava/util/List;

    if-nez v0, :cond_a

    const-string v0, "0"

    :goto_4
    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static b()Llou;
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    new-instance v1, Llou;

    invoke-direct {v1}, Llou;-><init>()V

    .line 81
    invoke-virtual {v1, v0}, Llou;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v1
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Llou;->g:Landroid/widget/Button;

    new-instance v1, Llov;

    invoke-direct {v1, p0}, Llov;-><init>(Llou;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Llou;->f:Landroid/widget/Button;

    new-instance v1, Llow;

    invoke-direct {v1, p0}, Llow;-><init>(Llou;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    invoke-direct {p0}, Llou;->d()V

    .line 144
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Llou;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Llou;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    :goto_0
    invoke-direct {p0}, Llou;->e()V

    .line 155
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Llou;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget-object v0, p0, Llou;->e:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    iput v0, p0, Llou;->m:I

    .line 159
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 160
    iget v2, p0, Llou;->m:I

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    iput v0, p0, Llou;->m:I

    goto :goto_0

    .line 162
    :cond_0
    return-void
.end method

.method private e()V
    .locals 5

    .prologue
    .line 165
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 166
    new-instance v0, Llki;

    iget-object v1, p0, Llou;->o:Ljava/util/List;

    invoke-direct {v0, v1}, Llki;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Llou;->n:Llki;

    .line 167
    iget-object v0, p0, Llou;->n:Llki;

    new-instance v1, Llox;

    invoke-direct {v1, p0}, Llox;-><init>(Llou;)V

    invoke-virtual {v0, v1}, Llki;->a(Llkl;)V

    .line 173
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Llou;->n:Llki;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 174
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 244
    iget v0, p0, Llou;->c:I

    if-le v0, v2, :cond_1

    .line 245
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    iget v1, p0, Llou;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 246
    iget v1, p0, Llou;->m:I

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Llou;->m:I

    .line 247
    iget-object v0, p0, Llou;->n:Llki;

    iget v1, p0, Llou;->c:I

    invoke-virtual {v0, v1}, Llki;->a(I)V

    .line 249
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Llou;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    iget-object v0, p0, Llou;->e:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Llou;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-static {v0}, Lmhj;->a(Landroid/view/View;)V

    .line 256
    :cond_1
    iput v2, p0, Llou;->c:I

    .line 257
    return-void
.end method

.method public a(Lkpw;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 261
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->n()Lkrz;

    move-result-object v0

    invoke-virtual {v0}, Lkrz;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmhj;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 263
    invoke-virtual {p1}, Lkpw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 264
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkpw;->a(Ljava/lang/String;)V

    .line 266
    iget v0, p0, Llou;->c:I

    if-gt v0, v4, :cond_0

    .line 267
    iget-object v0, p0, Llou;->n:Llki;

    invoke-virtual {v0, p1}, Llki;->a(Lkpw;)V

    .line 268
    iget v0, p0, Llou;->m:I

    invoke-virtual {p1}, Lkpw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llou;->m:I

    .line 269
    iget-object v0, p0, Llou;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Llou;->i:Lcom/santander/app/seguros/ui/widgets/SegurosTextView;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/widgets/SegurosTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 271
    iget-object v0, p0, Llou;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 279
    :goto_0
    iput v4, p0, Llou;->c:I

    .line 280
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Llou;->o:Ljava/util/List;

    iget v1, p0, Llou;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpw;

    .line 274
    iget v1, p0, Llou;->m:I

    invoke-virtual {v0}, Lkpw;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Llou;->m:I

    .line 275
    iget v0, p0, Llou;->m:I

    invoke-virtual {p1}, Lkpw;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Llou;->m:I

    .line 276
    iget-object v0, p0, Llou;->n:Llki;

    iget v1, p0, Llou;->c:I

    invoke-virtual {v0, p1, v1}, Llki;->a(Lkpw;I)V

    goto :goto_0
.end method

.method public a(Lkxd;)V
    .locals 1
    .annotation runtime Lnfq;
    .end annotation

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Llou;->a(Z)V

    .line 231
    return-void
.end method

.method public a(Lloy;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Llou;->j:Lloy;

    .line 67
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 72
    instance-of v0, p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 75
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c(Z)V

    .line 104
    iget-object v0, p0, Llou;->k:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0, v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b(Z)V

    .line 105
    invoke-virtual {p0}, Llou;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Llou;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mBeneficiaries-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Llou;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "mBeneficiaries-key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    new-instance v2, Lejm;

    invoke-direct {v2}, Lejm;-><init>()V

    const-class v3, [Lkpw;

    invoke-virtual {v2, v0, v3}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Llou;->o:Ljava/util/List;

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llou;->o:Ljava/util/List;

    goto :goto_0
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
    .line 116
    const v0, 0x7f0401e5

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Llou;->a(Landroid/view/View;)V

    .line 118
    invoke-direct {p0}, Llou;->c()V

    .line 119
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 291
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 292
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->c(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 285
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 286
    invoke-static {}, Lkws;->a()Lkws;

    move-result-object v0

    invoke-virtual {v0}, Lkws;->b()Lnfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnfg;->b(Ljava/lang/Object;)V

    .line 287
    return-void
.end method
