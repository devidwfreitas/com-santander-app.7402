.class public Lijn;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lmip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 36
    const-string v0, "FazerPagamentoCartorioFragment"

    iput-object v0, p0, Lijn;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lijn;->b:Lmip;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lijn;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 56
    iget-object v0, p0, Lijn;->b:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->q()Lgvx;

    move-result-object v0

    invoke-interface {v0}, Lgvx;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    .line 57
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_0
    const v0, 0x7f1008b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 62
    new-instance v1, Lfoo;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lfoo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 66
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    const-string v2, "conta"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setCurrentItem(I)V

    .line 72
    :cond_1
    const v0, 0x7f1008b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/widget/Carrossel;

    .line 73
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 75
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v1, "dd/MM/yyyy"

    invoke-direct {v3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v4, Lfos;

    invoke-direct {v4}, Lfos;-><init>()V

    iput-object v4, v1, Lcom/santander/app/FazerPagamentoActivity;->e:Lfos;

    .line 78
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->e:Lfos;

    const-string v4, "PAGAR HOJE"

    invoke-virtual {v1, v4}, Lfos;->a(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->e:Lfos;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lfos;->b(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    new-instance v4, Lfos;

    invoke-direct {v4}, Lfos;-><init>()V

    iput-object v4, v1, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    .line 82
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    const-string v4, "AGENDAR"

    invoke-virtual {v1, v4}, Lfos;->a(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 84
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 85
    const/4 v1, 0x5

    const/4 v5, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 86
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lfos;->b(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    sget-object v3, Lfot;->PICKER:Lfot;

    invoke-virtual {v1, v3}, Lfos;->a(Lfot;)V

    .line 89
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->e:Lfos;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/santander/app/FazerPagamentoActivity;

    iget-object v1, v1, Lcom/santander/app/FazerPagamentoActivity;->f:Lfos;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lfou;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lijn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v1, v3, v2, v4}, Lfou;-><init>(Landroid/content/Context;Ljava/util/Vector;Landroid/app/Activity;)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/santander/app/widget/Carrossel;->setAdapter(Lfom;)V

    .line 95
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    const v0, 0x7f0401cb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lijn;->a(Landroid/view/View;)V

    .line 46
    return-object v0
.end method
