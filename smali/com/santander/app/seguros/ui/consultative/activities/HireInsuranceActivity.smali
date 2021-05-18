.class public Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;
.super Lgrs;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lbr/com/zup/multistatelayout/MultiStateLayout;

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:Lktq;

.field private e:Lktq;

.field private f:Llir;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "insurance-family"

    sput-object v0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 65
    new-instance v0, Llgt;

    invoke-direct {v0, p0}, Llgt;-><init>(Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;)V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->f:Llir;

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 59
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->a()Ljava/util/List;

    move-result-object v0

    .line 60
    new-instance v1, Llik;

    iget-object v2, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, v0, v2}, Llik;-><init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V

    .line 61
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->f:Llir;

    invoke-virtual {v1, v0}, Llik;->a(Llir;)V

    .line 62
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 63
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 122
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 124
    const v1, 0x7f09052b

    invoke-virtual {p0, v1}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 132
    const v0, 0x7f10010f

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/zup/multistatelayout/MultiStateLayout;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->b:Lbr/com/zup/multistatelayout/MultiStateLayout;

    .line 133
    const v0, 0x7f10031a

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->c:Landroid/support/v7/widget/RecyclerView;

    .line 135
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_deeplink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_deeplink"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    const-string v1, "deeplink_vida"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    invoke-virtual {v0}, Lktq;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    const-string v0, "DeepLink_SegurosVida"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->f:Llir;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    invoke-interface {v0, v1}, Llir;->a(Lktq;)V

    goto :goto_0

    .line 202
    :cond_2
    const-string v0, "DeepLink_SegurosVida"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_3
    const-string v1, "deeplink_acidente_pessoal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    invoke-virtual {v0}, Lktq;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 206
    const-string v0, "DeepLink_SegurosAcidentePessoal"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->f:Llir;

    iget-object v1, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    invoke-interface {v0, v1}, Llir;->a(Lktq;)V

    goto :goto_0

    .line 209
    :cond_4
    const-string v0, "DeepLink_SegurosAcidentePessoal"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_5
    const-string v1, "deeplink_lista_produtos"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const-string v0, "DeepLink_SegurosListaProdutos"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lktq;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    invoke-virtual {v0}, Lmiq;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->C()Lipi;

    move-result-object v3

    .line 140
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 142
    new-instance v0, Lktq;

    invoke-direct {v0}, Lktq;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    .line 143
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v5, "Vida"

    invoke-virtual {v0, v5}, Lktq;->f(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v5, "Prote\u00e7\u00e3o Vida"

    invoke-virtual {v0, v5}, Lktq;->b(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v5, "Com ele, voc\u00ea e sua fam\u00edlia estar\u00e3o protegidos."

    invoke-virtual {v0, v5}, Lktq;->c(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const v5, 0x7f020402

    invoke-virtual {v0, v5}, Lktq;->a(I)V

    .line 147
    iget-object v5, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v0, "00000109"

    invoke-interface {v3, v0}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmhj;->e()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v5, v0}, Lktq;->e(Z)V

    .line 148
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    invoke-virtual {v0, v1}, Lktq;->b(I)V

    .line 149
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v5, "Em caso de morte sua fam\u00edlia recebe uma indeniza\u00e7\u00e3o."

    invoke-virtual {v0, v5}, Lktq;->a(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    const-string v5, "Em caso de invalidez permanente total ou parcial voc\u00ea recebe uma indeniza\u00e7\u00e3o."

    invoke-virtual {v0, v5}, Lktq;->a(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d:Lktq;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Lktq;

    invoke-direct {v0}, Lktq;-><init>()V

    iput-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    .line 154
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v5, "Acidente Pessoais"

    invoke-virtual {v0, v5}, Lktq;->f(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v5, "Acidentes Pessoais"

    invoke-virtual {v0, v5}, Lktq;->b(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v5, "Apoio a voc\u00ea e sua fam\u00edlia em caso de imprevistos."

    invoke-virtual {v0, v5}, Lktq;->c(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const v5, 0x7f02032c

    invoke-virtual {v0, v5}, Lktq;->a(I)V

    .line 158
    iget-object v5, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v0, "00000109"

    invoke-interface {v3, v0}, Lipi;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lmhj;->e()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v5, v0}, Lktq;->e(Z)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lktq;->b(I)V

    .line 160
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v3, "Em caso de morte acidental sua fam\u00edlia recebe uma indeniza\u00e7\u00e3o."

    invoke-virtual {v0, v3}, Lktq;->a(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v3, "Em caso de invalidez permanente total ou parcial voc\u00ea recebe uma indeniza\u00e7\u00e3o."

    invoke-virtual {v0, v3}, Lktq;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    const-string v3, "Em caso de interna\u00e7\u00e3o voc\u00ea conta com uma cobertura."

    invoke-virtual {v0, v3}, Lktq;->a(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e:Lktq;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v0, Lktq;

    invoke-direct {v0}, Lktq;-><init>()V

    .line 166
    const-string v3, "Residencial"

    invoke-virtual {v0, v3}, Lktq;->f(Ljava/lang/String;)V

    .line 167
    const-string v3, "Seguro Residencial"

    invoke-virtual {v0, v3}, Lktq;->b(Ljava/lang/String;)V

    .line 168
    const-string v3, "A prote\u00e7\u00e3o \u00e9 para sua casa, a economia \u00e9 para voc\u00ea."

    invoke-virtual {v0, v3}, Lktq;->c(Ljava/lang/String;)V

    .line 169
    const v3, 0x7f02045b

    invoke-virtual {v0, v3}, Lktq;->a(I)V

    .line 170
    invoke-virtual {v0, v1}, Lktq;->e(Z)V

    .line 171
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lktq;->b(I)V

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Prote\u00e7\u00e3o da sua resid\u00eancia em caso de roubo, inc\u00eandio, danos el\u00e9tricos, vendaval, granizo, entre outros."

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "Prote\u00e7\u00e3o da sua resid\u00eancia"

    aput-object v7, v6, v2

    invoke-static {p0, v3, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lktq;->a(Landroid/text/Spannable;)V

    .line 173
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Reparos e tarefas do dia a dia, como consertos de eletrodom\u00e9sticos, fixa\u00e7\u00e3o de quadros e persianas, e chaveiro."

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "Reparos e tarefas do dia a dia,"

    aput-object v7, v6, v2

    invoke-static {p0, v3, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lktq;->a(Landroid/text/Spannable;)V

    .line 174
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Servi\u00e7os preventivos, como verifica\u00e7\u00e3o de poss\u00edveis vazamentos, revis\u00e3o de instala\u00e7\u00e3o el\u00e9trica, limpeza de ralos e sif\u00f5es."

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "Servi\u00e7os preventivos,"

    aput-object v7, v6, v2

    invoke-static {p0, v3, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lktq;->a(Landroid/text/Spannable;)V

    .line 175
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lktq;

    invoke-direct {v0}, Lktq;-><init>()V

    .line 178
    const-string v3, "auto"

    invoke-virtual {v0, v3}, Lktq;->f(Ljava/lang/String;)V

    .line 179
    const-string v3, "Seguro Auto"

    invoke-virtual {v0, v3}, Lktq;->b(Ljava/lang/String;)V

    .line 180
    const-string v3, "Tranquilidade para voc\u00ea e prote\u00e7\u00e3o para seu carro."

    invoke-virtual {v0, v3}, Lktq;->c(Ljava/lang/String;)V

    .line 181
    const v3, 0x7f02033f

    invoke-virtual {v0, v3}, Lktq;->a(I)V

    .line 182
    invoke-virtual {v0, v1}, Lktq;->e(Z)V

    .line 183
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lktq;->b(I)V

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Prote\u00e7\u00e3o em diversas situa\u00e7\u00f5es, sua tranquilidade garantida em caso de ter seu carro batido ou roubado."

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "Prote\u00e7\u00e3o em diversas situa\u00e7\u00f5es,"

    aput-object v7, v6, v2

    invoke-static {p0, v3, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lktq;->a(Landroid/text/Spannable;)V

    .line 185
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Assist\u00eancia 24 horas para o seu carro, problemas mec\u00e2nicos, el\u00e9tricos, perda de chaves, troca de pneus ou bateria."

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "Assist\u00eancia 24 horas para o seu carro,"

    aput-object v7, v6, v2

    invoke-static {p0, v3, v5, v6}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lktq;->a(Landroid/text/Spannable;)V

    .line 186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "Parcerias, descontos e diversas vantagens, descontos em estacionamento e aluguel de carro de passeio."

    new-array v1, v1, [Ljava/lang/String;

    const-string v6, "Parcerias, descontos e diversas vantagens,"

    aput-object v6, v1, v2

    invoke-static {p0, v3, v5, v1}, Lmhj;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lktq;->a(Landroid/text/Spannable;)V

    .line 187
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v4

    :cond_0
    move v0, v2

    .line 147
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 158
    goto/16 :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f04006d

    invoke-virtual {p0, v0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->c()V

    .line 52
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->d()V

    .line 53
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->b()V

    .line 54
    invoke-direct {p0}, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;->e()V

    .line 55
    return-void
.end method
