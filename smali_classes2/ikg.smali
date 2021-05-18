.class public Likg;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/contacorrente/domain/Conta;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/santander/app/widget/Carrossel;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Landroid/widget/EditText;

.field private i:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const-string v0, "FazerPagamentoContasFragment"

    iput-object v0, p0, Likg;->a:Ljava/lang/String;

    .line 49
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Likg;->i:Lmip;

    return-void
.end method

.method static synthetic a(Likg;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Likg;->b:Ljava/util/List;

    move v1, v2

    .line 120
    :goto_0
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 121
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 122
    iget-object v3, p0, Likg;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 124
    :cond_0
    :goto_1
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 125
    new-instance v1, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v1}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    .line 126
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setAgencia(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setCuenta(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setValor(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Likg;->i:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->s()Lght;

    move-result-object v0

    invoke-interface {v0}, Lght;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lghu;

    invoke-virtual {v0}, Lghu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setDescricao(Ljava/lang/String;)V

    .line 130
    const-string v0, "CARTAOPAG"

    invoke-virtual {v1, v0}, Lcom/santander/app/contacorrente/domain/Conta;->setNomeBanco(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Likg;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 134
    :cond_1
    const v0, 0x7f1008b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 136
    new-instance v1, Lfoo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Likg;->b:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 138
    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 140
    iput-object p1, p0, Likg;->d:Landroid/view/View;

    .line 141
    new-instance v1, Likk;

    invoke-direct {v1, p0}, Likk;-><init>(Likg;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setListener(Lnez;)V

    .line 161
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Likg;->a(Landroid/view/View;Z)V

    .line 163
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_2

    .line 165
    const-string v2, "conta"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 167
    :cond_2
    return-void
.end method

.method static synthetic b(Likg;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Likg;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Likg;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->h:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Likg;)Ljava/util/List;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Likg;)Landroid/view/View;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Likg;->d:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 171
    const v0, 0x7f1008b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    iput-object v0, p0, Likg;->c:Lcom/santander/app/widget/Carrossel;

    .line 172
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 174
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v0, "dd/MM/yyyy"

    invoke-direct {v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v3, Lfos;

    invoke-direct {v3}, Lfos;-><init>()V

    iput-object v3, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    .line 177
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    const-string v3, "PAGAR HOJE"

    invoke-virtual {v0, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->a:Lfos;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 182
    if-eqz p2, :cond_0

    .line 183
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v3, Lfos;

    invoke-direct {v3}, Lfos;-><init>()V

    iput-object v3, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    .line 184
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    const-string v3, "AGENDAR"

    invoke-virtual {v0, v3}, Lfos;->a(Ljava/lang/String;)V

    .line 185
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 186
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 187
    const/4 v0, 0x5

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Ljava/util/Calendar;->add(II)V

    .line 188
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfos;->b(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    sget-object v2, Lfot;->PICKER:Lfot;

    invoke-virtual {v0, v2}, Lfos;->a(Lfot;)V

    .line 190
    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v0, v0, Lcom/santander/app/FazerPagamentoActivity;->b:Lfos;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    new-instance v0, Lfou;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Likg;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 195
    iget-object v1, p0, Likg;->c:Lcom/santander/app/widget/Carrossel;

    invoke-virtual {v1, v0}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 196
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 54
    const v0, 0x7f0401d6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 56
    invoke-direct {p0, v1}, Likg;->a(Landroid/view/View;)V

    .line 58
    const v0, 0x7f1008f6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likg;->e:Landroid/widget/EditText;

    .line 59
    const v0, 0x7f1008f7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likg;->f:Landroid/widget/EditText;

    .line 60
    const v0, 0x7f1008f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likg;->g:Landroid/widget/EditText;

    .line 61
    const v0, 0x7f1008f9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Likg;->h:Landroid/widget/EditText;

    .line 63
    iget-object v0, p0, Likg;->e:Landroid/widget/EditText;

    new-instance v2, Likh;

    invoke-direct {v2, p0}, Likh;-><init>(Likg;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 79
    iget-object v0, p0, Likg;->f:Landroid/widget/EditText;

    new-instance v2, Liki;

    invoke-direct {v2, p0}, Liki;-><init>(Likg;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    iget-object v0, p0, Likg;->g:Landroid/widget/EditText;

    new-instance v2, Likj;

    invoke-direct {v2, p0}, Likj;-><init>(Likg;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    return-object v1
.end method
