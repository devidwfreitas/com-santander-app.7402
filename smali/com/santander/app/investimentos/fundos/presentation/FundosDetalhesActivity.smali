.class public Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Ljgw;


# instance fields
.field private a:Landroid/support/v7/widget/RecyclerView;

.field private b:Ljdx;

.field private c:Ljiq;

.field private d:Landroid/widget/TextView;

.field private e:Lgtg;

.field private f:Z

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lgrs;-><init>()V

    return-void
.end method

.method private a(Ljdx;)Landroid/widget/LinearLayout;
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 150
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 154
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 155
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    const v2, 0x7f02007a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 157
    new-instance v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 158
    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    const v3, 0x7f0e0043

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 159
    iget-object v2, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    const v3, 0x7f0e0024

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 160
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p1}, Ljdx;->t()Ljdk;

    move-result-object v2

    invoke-virtual {v2}, Ljdk;->label()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 164
    new-instance v2, Ljgu;

    invoke-direct {v2, p0}, Ljgu;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->f:Z

    return v0
.end method

.method public static synthetic b(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)Lgtg;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->e:Lgtg;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 77
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    const v1, 0x7f04039b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 79
    const v1, 0x7f100071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0905f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    const v0, 0x7f100310

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->d:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    const v0, 0x7f100312

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a:Landroid/support/v7/widget/RecyclerView;

    .line 83
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 84
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 86
    new-instance v0, Lgtg;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->i:Landroid/app/Activity;

    new-instance v2, Ljgt;

    invoke-direct {v2, p0}, Ljgt;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)V

    invoke-direct {v0, v1, v2}, Lgtg;-><init>(Landroid/app/Activity;Lgti;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->e:Lgtg;

    .line 93
    const v0, 0x7f100311

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    .line 95
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->c()V

    .line 96
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljdx;

    invoke-direct {v0}, Ljdx;-><init>()V

    .line 102
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    :try_start_0
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 108
    :goto_0
    sget-object v1, Ljdk;->RESGATAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 109
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 117
    :goto_1
    sget-object v1, Ljdk;->APLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 118
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->q()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 122
    :try_start_2
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 126
    :goto_2
    sget-object v1, Ljdk;->CANCELAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 127
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->s()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    :try_start_3
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    .line 135
    :goto_3
    sget-object v1, Ljdk;->EXTRATO:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 136
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 138
    :cond_3
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    :try_start_4
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-virtual {v1}, Ljdx;->a()Ljdx;
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v0

    .line 144
    :goto_4
    sget-object v1, Ljdk;->REAPLICAR:Ljdk;

    invoke-virtual {v0, v1}, Ljdx;->a(Ljdk;)V

    .line 145
    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->g:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a(Ljdx;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 147
    :cond_4
    return-void

    .line 105
    :catch_0
    move-exception v1

    .line 106
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 114
    :catch_1
    move-exception v1

    .line 115
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 123
    :catch_2
    move-exception v1

    .line 124
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 132
    :catch_3
    move-exception v1

    .line 133
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 141
    :catch_4
    move-exception v1

    .line 142
    const-string v2, "Error"

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private d()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 195
    new-instance v0, Ljgv;

    invoke-direct {v0, p0}, Ljgv;-><init>(Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 215
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->startActivity(Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljdz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->a:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Ljht;

    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->d()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljht;-><init>(Ljava/util/List;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 211
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f04006b

    invoke-virtual {p0, v0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 61
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090687

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fundos_detalhes"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljdx;

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    .line 67
    invoke-virtual {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "perfil_n_cadastrado"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->f:Z

    .line 69
    invoke-direct {p0}, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b()V

    .line 71
    new-instance v0, Ljir;

    invoke-direct {v0, p0}, Ljir;-><init>(Ljgw;)V

    iput-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->c:Ljiq;

    .line 72
    iget-object v0, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->c:Ljiq;

    iget-object v1, p0, Lcom/santander/app/investimentos/fundos/presentation/FundosDetalhesActivity;->b:Ljdx;

    invoke-interface {v0, v1}, Ljiq;->a(Ljdx;)V

    .line 73
    return-void
.end method
