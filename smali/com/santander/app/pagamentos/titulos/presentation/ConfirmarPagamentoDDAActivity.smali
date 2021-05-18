.class public Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljuj;
.implements Lnau;


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private b:Ljsr;

.field private c:Ljsp;

.field private d:Lcom/santander/app/components/view/SantanderButtonView;

.field private e:Ljvv;

.field private final f:I

.field private g:Landroid/widget/LinearLayout;

.field private w:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->f:I

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lgku;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgku;

    .line 118
    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lgku;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-virtual {v0}, Lgku;->c()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 88
    const v0, 0x7f100139

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->w:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    .line 89
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->w:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    new-instance v1, Lamy;

    sget-object v2, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Lamy;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setAdapter(Lamr;)V

    .line 91
    const v0, 0x7f100cde

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->g:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    const v0, 0x7f100ced

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/SantanderButtonView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->d:Lcom/santander/app/components/view/SantanderButtonView;

    .line 95
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->d:Lcom/santander/app/components/view/SantanderButtonView;

    invoke-virtual {v0, p0}, Lcom/santander/app/components/view/SantanderButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v0, 0x7f100ce7

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->x:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f100ce8

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->y:Landroid/widget/TextView;

    .line 99
    const v0, 0x7f100ce9

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->z:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f100cea

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->A:Landroid/widget/TextView;

    .line 101
    const v0, 0x7f100ceb

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->B:Landroid/widget/TextView;

    .line 102
    const v0, 0x7f100cec

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->C:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "Benefici\u00e1rio"

    invoke-direct {p0, v1, v2}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    invoke-virtual {v1}, Ljsr;->m()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "Valor a receber "

    invoke-direct {p0, v1, v2}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->a(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    invoke-virtual {v0}, Ljsr;->q()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyyMMdd"

    invoke-static {v0, v1}, Lnak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->z:Landroid/widget/TextView;

    const-string v2, "dd/MM/yyyy"

    invoke-static {v0, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->A:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    invoke-virtual {v1}, Ljsp;->c()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    const-string v2, "dd/MM/yyyy"

    invoke-static {v1, v2}, Lnak;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    invoke-virtual {v1}, Ljsp;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->C:Landroid/widget/TextView;

    const-string v1, "R$ "

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    invoke-virtual {v2}, Ljsp;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v2}, Laep;->a(Ljava/lang/Double;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const v3, 0x7f100cde

    .line 127
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 128
    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 130
    if-nez v1, :cond_0

    .line 131
    new-instance v1, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;

    invoke-direct {v1}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;-><init>()V

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/santander/app/validation/presentation/ValidacionOperacionFragment;->b(I)V

    .line 133
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 135
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    .line 136
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->w:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setVisibility(I)V

    .line 141
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->e:Ljvv;

    invoke-interface {v0}, Ljvv;->b()V

    .line 169
    return-void
.end method

.method public a(Lis;)V
    .locals 4

    .prologue
    .line 173
    new-instance v1, Landroid/content/Intent;

    const-class v0, Lcom/santander/app/comprovantes/activity/ComprovanteBaseDDAActivity;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string v0, "Pagamentos_DDA_Resultado"

    const-string v2, "Falha"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :try_start_0
    const-string v0, "errorMessage"

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "message"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :goto_0
    const-string v0, "Titulos"

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 185
    const-string v0, "AgendamentoRecorrente"

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-class v2, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 182
    :cond_0
    const-string v0, "Pagamentos_DDA_Resultado"

    const-string v2, "Sucesso"

    invoke-static {v0, v2}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->w:Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbr/com/santander/uisdk/dropdown/SantanderDropDownView;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0}, Lgrs;->onBackPressed()V

    .line 162
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 153
    :goto_0
    return-void

    .line 149
    :pswitch_0
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b()V

    .line 150
    const-string v0, "Pagamentos_Pagamento_Confirmacao_Acao"

    const-string v1, "Continuar"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x7f100ced
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 73
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 74
    const v1, 0x7f090a8d

    invoke-virtual {p0, v1}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 75
    const v0, 0x7f040094

    invoke-virtual {p0, v0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->setContentView(I)V

    .line 77
    invoke-virtual {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 79
    const-string v0, "Titulos"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsr;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    .line 80
    const-string v0, "AgendamentoRecorrente"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljsp;

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    .line 82
    invoke-direct {p0}, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->a()V

    .line 84
    new-instance v0, Ljvw;

    iget-object v1, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->b:Ljsr;

    iget-object v2, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->c:Ljsp;

    invoke-direct {v0, v1, v2, p0}, Ljvw;-><init>(Ljsr;Ljsp;Ljuj;)V

    iput-object v0, p0, Lcom/santander/app/pagamentos/titulos/presentation/ConfirmarPagamentoDDAActivity;->e:Ljvv;

    .line 85
    return-void
.end method
