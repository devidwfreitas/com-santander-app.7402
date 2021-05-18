.class public Lloc;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "0000000001"


# instance fields
.field private b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/widget/Button;

.field private f:Llld;

.field private g:Lkye;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrt;

    .line 133
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    return-object v1
.end method

.method static synthetic a(Lloc;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lloc;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lloc;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lloc;->c:Ljava/util/List;

    return-object p1
.end method

.method public static a()Lloc;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    new-instance v1, Lloc;

    invoke-direct {v1}, Lloc;-><init>()V

    .line 63
    invoke-virtual {v1, v0}, Lloc;->setArguments(Landroid/os/Bundle;)V

    .line 64
    return-object v1
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->b()Landroid/support/v4/widget/NestedScrollView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 164
    const v0, 0x7f100946

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lloc;->d:Landroid/support/v7/widget/RecyclerView;

    .line 165
    const v0, 0x7f1002d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lloc;->e:Landroid/widget/Button;

    .line 167
    iget-object v0, p0, Lloc;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 168
    iget-object v0, p0, Lloc;->e:Landroid/widget/Button;

    new-instance v1, Llof;

    invoke-direct {v1, p0}, Llof;-><init>(Lloc;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    return-void
.end method

.method static synthetic b(Lloc;)Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    return-object v0
.end method

.method static synthetic b(Lloc;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lloc;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private b()Lkru;
    .locals 4

    .prologue
    .line 98
    new-instance v0, Lkru;

    invoke-direct {v0}, Lkru;-><init>()V

    .line 99
    iget-object v1, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v1}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v1

    .line 101
    new-instance v2, Lkrr;

    invoke-direct {v2}, Lkrr;-><init>()V

    .line 102
    invoke-virtual {v1}, Lmhz;->n()Lkrz;

    move-result-object v3

    invoke-virtual {v3}, Lkrz;->a()Lkrq;

    move-result-object v3

    invoke-virtual {v3}, Lkrq;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkrr;->a(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v1}, Lmhz;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkrr;->d(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lmhz;->n()Lkrz;

    move-result-object v3

    invoke-virtual {v3}, Lkrz;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lkrr;->e(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v1}, Lmhz;->n()Lkrz;

    move-result-object v1

    invoke-virtual {v1}, Lkrz;->a()Lkrq;

    move-result-object v1

    invoke-virtual {v1}, Lkrq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lkrr;->c(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v2}, Lkru;->a(Lkrr;)V

    .line 108
    const-string v1, "LISPERGDPS"

    invoke-virtual {v0, v1}, Lkru;->a(Ljava/lang/String;)V

    .line 110
    return-object v0
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lkrt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Llld;

    iget-object v1, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-direct {v0, p1, v1}, Llld;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v0, p0, Lloc;->f:Llld;

    .line 151
    iget-object v0, p0, Lloc;->f:Llld;

    new-instance v1, Lloe;

    invoke-direct {v1, p0}, Lloe;-><init>(Lloc;)V

    invoke-virtual {v0, v1}, Llld;->a(Llll;)V

    .line 157
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 158
    iget-object v1, p0, Lloc;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 159
    iget-object v0, p0, Lloc;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lloc;->f:Llld;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 160
    return-void
.end method

.method static synthetic c(Lloc;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lloc;->e:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lloc;->b()Lkru;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Z)V

    .line 118
    iget-object v1, p0, Lloc;->g:Lkye;

    new-instance v2, Llod;

    invoke-direct {v2, p0}, Llod;-><init>(Lloc;)V

    iget-object v3, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 127
    invoke-virtual {v3}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->f()Lkxl;

    move-result-object v3

    .line 118
    invoke-interface {v1, v0, v2, v3}, Lkye;->a(Lkru;Lkxl;Lkxl;)V

    .line 128
    return-void
.end method

.method static synthetic c(Lloc;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lloc;->b(Ljava/util/List;)V

    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 142
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    invoke-virtual {v0}, Lmhz;->f()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lloc;->c:Ljava/util/List;

    .line 143
    iget-object v0, p0, Lloc;->c:Ljava/util/List;

    invoke-direct {p0, v0}, Lloc;->b(Ljava/util/List;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lloc;->c()V

    goto :goto_0
.end method

.method static synthetic d(Lloc;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lloc;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Lloc;->f()V

    .line 182
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    iget-object v1, p0, Lloc;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Lmhz;->b(Ljava/util/List;)V

    .line 183
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    new-instance v1, Llog;

    invoke-direct {v1, p0}, Llog;-><init>(Lloc;)V

    new-instance v2, Lloh;

    invoke-direct {v2, p0}, Lloh;-><init>(Lloc;)V

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 196
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 199
    const-string v0, "Seguros_Contratacao_Vida_Proposta_Questionario_Acao"

    const-string v1, "Avancar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lloc;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkrt;

    .line 202
    const-string v3, "Seguros_Contratacao_Vida_Proposta_Questionario_Acao"

    invoke-virtual {v0}, Lkrt;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "sim"

    :goto_1
    invoke-static {v3, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v3, "Seguros_Contratacao_Vida_Proposta_Questionario"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkrt;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmhj;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lkrt;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "sim"

    :goto_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0}, Lkrt;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lkrt;->f()Ljava/lang/String;

    move-result-object v1

    const-string v3, "0000000001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const-string v3, "Seguros_Contratacao_Vida_Proposta_Questionario_MedicamentosContinuos_Acao"

    invoke-virtual {v0}, Lkrt;->d()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "sim"

    :goto_3
    invoke-static {v3, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0}, Lkrt;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lkrt;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lkrt;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    const-string v1, "Seguros_Contratacao_Vida_Proposta_Questionario_MedicamentosContinuos_Qual"

    invoke-virtual {v0}, Lkrt;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    const-string v1, "n\u00e3o"

    goto :goto_1

    .line 203
    :cond_2
    const-string v1, "n\u00e3o"

    goto :goto_2

    .line 206
    :cond_3
    const-string v1, "n\u00e3o"

    goto :goto_3

    .line 212
    :cond_4
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 71
    instance-of v0, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 72
    check-cast p1, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    iput-object p1, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    .line 74
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    sget-object v1, Lmfn;->WAVE_GREEN_THREE:Lmfn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->a(Lmfn;Z)V

    .line 80
    new-instance v0, Lkyf;

    invoke-direct {v0}, Lkyf;-><init>()V

    iput-object v0, p0, Lloc;->g:Lkye;

    .line 83
    iget-object v0, p0, Lloc;->b:Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;

    invoke-virtual {v0}, Lcom/santander/app/seguros/ui/contract/activities/ContractActivity;->c()Lmhz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmhz;->b(Ljava/util/List;)V

    .line 84
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
    .line 89
    const v0, 0x7f0401e3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 90
    const-string v1, "Seguros_Contratacao_Vida_Proposta_Questionario_Acao"

    const-string v2, "TelaQuestionario"

    invoke-static {v1, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, v0}, Lloc;->a(Landroid/view/View;)V

    .line 92
    invoke-direct {p0}, Lloc;->d()V

    .line 94
    return-object v0
.end method
