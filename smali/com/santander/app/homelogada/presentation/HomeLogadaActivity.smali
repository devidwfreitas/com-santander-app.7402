.class public Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;
.super Lgrs;
.source "SourceFile"

# interfaces
.implements Laqw;
.implements Lfsp;
.implements Lgyp;
.implements Lirb;


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field private A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

.field private B:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

.field private C:Lglu;

.field private D:Lirc;

.field private E:Landroid/widget/Button;

.field private F:Lfsr;

.field private G:Lfsk;

.field private H:Lcom/santander/app/components/view/cardLayout/CardLayout;

.field private I:Lgwt;

.field private J:Lgyq;

.field private K:Landroid/view/MenuItem;

.field private L:Lcom/santander/app/contacorrente/domain/Conta;

.field private M:Lfss;

.field private N:Landroid/widget/LinearLayout;

.field private O:Landroid/widget/LinearLayout;

.field private P:Landroid/app/Dialog;

.field private Q:Ljde;

.field private R:Z

.field private S:Z

.field private T:I

.field public a:Landroid/app/Dialog;

.field private final b:Ljava/lang/String;

.field private c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

.field private d:Lgki;

.field private f:Lmip;

.field private g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

.field private w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

.field private x:Lgld;

.field private y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

.field private z:Lgly;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Lgrs;-><init>()V

    .line 128
    const-string v0, "HomeLogadaActivity"

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->b:Ljava/lang/String;

    .line 130
    invoke-static {}, Lgki;->a()Lgki;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d:Lgki;

    .line 132
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a:Landroid/app/Dialog;

    .line 150
    new-instance v0, Lcom/santander/app/contacorrente/domain/Conta;

    invoke-direct {v0}, Lcom/santander/app/contacorrente/domain/Conta;-><init>()V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->L:Lcom/santander/app/contacorrente/domain/Conta;

    .line 151
    new-instance v0, Lfss;

    invoke-direct {v0}, Lfss;-><init>()V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->M:Lfss;

    .line 156
    iput-boolean v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->R:Z

    .line 157
    iput-boolean v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->S:Z

    .line 158
    iput v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->T:I

    return-void
.end method

.method public static synthetic a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;I)I
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->T:I

    return p1
.end method

.method private a(Lipp;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 488
    new-instance v0, Liqy;

    invoke-direct {v0, p0, p1}, Liqy;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lipp;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lcom/santander/app/contacorrente/domain/Conta;)Lcom/santander/app/contacorrente/domain/Conta;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->L:Lcom/santander/app/contacorrente/domain/Conta;

    return-object p1
.end method

.method public static synthetic a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    return-object v0
.end method

.method public static synthetic a(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lfss;)Lfss;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->M:Lfss;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 996
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1007
    :goto_1
    return-void

    .line 996
    :sswitch_0
    const-string v1, "pagarFatura"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "parcelarFatura"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "pagarTitulos"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 998
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1001
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 1004
    :pswitch_2
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->aw()V

    goto :goto_1

    .line 996
    :sswitch_data_0
    .sparse-switch
        -0x781411bb -> :sswitch_1
        -0x688d996d -> :sswitch_2
        -0x3cbc3e2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private al()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 582
    new-instance v0, Liqz;

    invoke-direct {v0, p0}, Liqz;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private am()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 591
    new-instance v0, Lira;

    invoke-direct {v0, p0}, Lira;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private an()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Liqd;

    invoke-direct {v0, p0}, Liqd;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private ao()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 610
    new-instance v0, Liqe;

    invoke-direct {v0, p0}, Liqe;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private ap()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 620
    new-instance v0, Liqf;

    invoke-direct {v0, p0}, Liqf;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private aq()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 629
    new-instance v0, Liqg;

    invoke-direct {v0, p0}, Liqg;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private ar()V
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    .line 721
    const-string v0, "SovereignBrasilProfile"

    invoke-virtual {p0, v0, v8}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "segmento"

    const-string v2, ""

    .line 722
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dataAtualizacao"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "dataAtualizacaoDefault"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 727
    new-instance v1, Liqk;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Liqk;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Ljava/lang/String;JJ)V

    new-array v0, v8, [Ljava/lang/Void;

    .line 744
    invoke-virtual {v1, v0}, Liqk;->c([Ljava/lang/Object;)Lgne;

    .line 745
    return-void
.end method

.method private as()Lgyo;
    .locals 1

    .prologue
    .line 798
    new-instance v0, Liql;

    invoke-direct {v0, p0}, Liql;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    return-object v0
.end method

.method private at()V
    .locals 1

    .prologue
    .line 852
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->J:Lgyq;

    invoke-interface {v0}, Lgyq;->a()I

    .line 853
    return-void
.end method

.method private au()V
    .locals 2

    .prologue
    .line 950
    sget-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    const-string v1, "ELEGIVEL - DISPONIVEL | DESABILITADO | FORA DO HORARIO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 956
    :cond_0
    return-void
.end method

.method private av()V
    .locals 2

    .prologue
    .line 960
    sget-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    const-string v1, "N\u00c3O ELEGIVEL - INDISPONIVEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 965
    :cond_0
    return-void
.end method

.method private aw()V
    .locals 3

    .prologue
    .line 1036
    const/4 v0, 0x0

    sput-boolean v0, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;->b:Z

    .line 1037
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/pagamentos/titulos/presentation/PagamentosCodigoBarrasActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    const-string v1, "isway"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1041
    return-void
.end method

.method private ax()V
    .locals 1

    .prologue
    .line 1147
    iget-boolean v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->S:Z

    if-nez v0, :cond_0

    .line 1148
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->S:Z

    .line 1149
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0, p0}, Lirc;->a(Landroid/content/Context;)V

    .line 1151
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    return-object v0
.end method

.method public static synthetic c(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lirc;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    return-object v0
.end method

.method public static synthetic d(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lfsr;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->F:Lfsr;

    return-object v0
.end method

.method public static synthetic e(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lgyq;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->J:Lgyq;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1020
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/PagamentoFacturaCartoesActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1021
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1022
    const-string v1, "isway"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1023
    const-string v1, "NUMEROCARTAO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1024
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1025
    return-void
.end method

.method public static synthetic f(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)Lmip;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1028
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/cartoes/parcelamentofatura/presentation/ParcelamentoFaturaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1029
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1030
    const-string v1, "isway"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1031
    const-string v1, "NUMEROCARTAO"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method


# virtual methods
.method public A()V
    .locals 3

    .prologue
    .line 468
    const v0, 0x7f100c61

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    .line 469
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Lgmm;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, p0, v2}, Lgmm;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 471
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Liqx;

    invoke-direct {v1, p0}, Liqx;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setSelectedItemEvent(Lgla;)V

    .line 477
    return-void
.end method

.method public B()V
    .locals 2

    .prologue
    .line 481
    const v0, 0x7f100c63

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->B:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    .line 482
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->B:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setVisibility(I)V

    .line 483
    new-instance v0, Lglu;

    sget-object v1, Lipp;->INVESTIMENTOS:Lipp;

    invoke-direct {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lipp;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lglu;-><init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->C:Lglu;

    .line 484
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->B:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->C:Lglu;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 485
    return-void
.end method

.method public C()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 511
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 512
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 513
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v1, v0}, Lirc;->a(Landroid/support/v7/app/ActionBar;)V

    .line 516
    return-void
.end method

.method public D()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    invoke-virtual {v0}, Lmir;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lmym;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/graphics/Bitmap;)V

    .line 521
    return-void
.end method

.method public E()V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->e(Z)V

    .line 526
    return-void
.end method

.method public F()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->o()V

    .line 531
    return-void
.end method

.method public G()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v0}, Lmip;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lmip;->d(Z)V

    .line 642
    :cond_0
    return-void
.end method

.method public H()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    return-object v0
.end method

.method public I()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    return-object v0
.end method

.method public J()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    return-object v0
.end method

.method public K()Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    return-object v0
.end method

.method public L()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->N:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public M()V
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->N:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 775
    return-void
.end method

.method public N()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->N:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 780
    return-void
.end method

.method public O()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public P()V
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->O:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 790
    return-void
.end method

.method public Q()V
    .locals 2

    .prologue
    .line 794
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->O:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 795
    return-void
.end method

.method public R()V
    .locals 1

    .prologue
    .line 857
    const v0, 0x7f09043f

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->b(Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public S()V
    .locals 6

    .prologue
    .line 868
    invoke-static {}, Lmiq;->C()Lmiq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiq;->h(Z)V

    .line 870
    const v0, 0x7f100c65

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 871
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 873
    const v1, 0x7f100c68

    invoke-virtual {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 874
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0904fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 878
    new-instance v1, Liqo;

    invoke-direct {v1, p0, v0}, Liqo;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/widget/RelativeLayout;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 888
    const v1, 0x7f100c69

    invoke-virtual {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 889
    new-instance v3, Liqp;

    invoke-direct {v3, p0, v2, v0}, Liqp;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/os/Handler;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 896
    return-void
.end method

.method public T()V
    .locals 1

    .prologue
    .line 945
    new-instance v0, Laqz;

    invoke-direct {v0}, Laqz;-><init>()V

    invoke-virtual {v0}, Laqz;->a()V

    .line 946
    return-void
.end method

.method public U()V
    .locals 3

    .prologue
    .line 984
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 985
    if-eqz v0, :cond_0

    .line 986
    const-string v1, "isway"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 987
    if-eqz v1, :cond_0

    .line 988
    const-string v1, "way_action"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 989
    const-string v2, "NUMEROCARTAO"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 990
    invoke-direct {p0, v1, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_0
    return-void
.end method

.method public V()V
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->p()V

    .line 1012
    return-void
.end method

.method public W()V
    .locals 1

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-static {v0}, Lgpu;->a(Landroid/support/v7/app/ActionBar;)V

    .line 1017
    return-void
.end method

.method public X()Lgki;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d:Lgki;

    return-object v0
.end method

.method public Y()V
    .locals 3

    .prologue
    .line 1055
    new-instance v0, Lgwt;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->H:Lcom/santander/app/components/view/cardLayout/CardLayout;

    sget-object v2, Lgww;->Home:Lgww;

    invoke-direct {v0, p0, v1, v2}, Lgwt;-><init>(Landroid/app/Activity;Lcom/santander/app/components/view/cardLayout/CardLayout;Lgww;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->I:Lgwt;

    .line 1056
    new-instance v0, Lgyr;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1}, Lgyr;-><init>(Lgyp;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->J:Lgyq;

    .line 1057
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->I:Lgwt;

    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->as()Lgyo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgwt;->a(Lgyo;)V

    .line 1058
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->at()V

    .line 1059
    return-void
.end method

.method public Z()V
    .locals 3

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->N()V

    .line 1064
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->Q()V

    .line 1066
    const v0, 0x7f100c5b

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1067
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1068
    new-instance v1, Liqs;

    invoke-direct {v1, p0}, Liqs;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1090
    const v0, 0x7f100c5c

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1092
    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->A()Ljava/lang/String;

    move-result-object v1

    .line 1094
    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lnaz;->CONVERSAO_ID_OBRIGATORIA_TELA_41_ATIVACAO_CSO:Lnaz;

    .line 1095
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    :cond_1
    :goto_0
    return-void

    .line 1099
    :cond_2
    sget-object v2, Lnaz;->OFERTAR_ID_TELA_OFERTA_ATIVACAO_CSO:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lnaz;->OFERTAR_ID_CSO_TRANSACIONAL:Lnaz;

    .line 1100
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1102
    :cond_3
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1104
    :cond_4
    sget-object v2, Lnaz;->ID_CANCELADO_TELA_51_OU_MODO_CONSULTIVO:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lnaz;->ATIVACAO_POR_SMS_TELA_44_OU_MODO_CONSULTIVO:Lnaz;

    .line 1105
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lnaz;->HABILITAR_ID_NOVAMENTE_TELA_50_OU_MODO_CONSULTIVO:Lnaz;

    .line 1106
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO:Lnaz;

    .line 1107
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1109
    :cond_5
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1111
    :cond_6
    sget-object v2, Lnaz;->OFERTAR_ID_MODO_CONSULTIVO_TELA_02_ID_NAO_HABILITADO:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lnaz;->MODO_CONSULTIVO_TELA_06_APARELHO_NAO_HABILITADO_APARELHO_PENDENTE:Lnaz;

    .line 1112
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lnaz;->HOME_CONSULTIVA:Lnaz;

    .line 1113
    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1115
    :cond_7
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1117
    :cond_8
    sget-object v2, Lnaz;->HABILITACAO_ATM:Lnaz;

    invoke-virtual {v2}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1119
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ae3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public a(Lmwx;)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 285
    iput-object p0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    .line 286
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0, v3}, Lmzq;->a(Landroid/app/Activity;Z)V

    .line 287
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 289
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 290
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 291
    const v0, 0x7f040196

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 292
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 293
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 295
    new-instance v0, Lmyg;

    iget-object v2, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v2}, Lmyg;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    new-instance v0, Lmyh;

    iget-object v2, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v2}, Lmyh;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 298
    const v0, 0x7f1007a0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a36

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const v0, 0x7f1007a1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 302
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090a1d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v0, 0x7f100783

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Liqc;

    invoke-direct {v2, p0, p1, v1}, Liqc;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Lmwx;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f10079f

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Liqn;

    invoke-direct {v2, p0, v1}, Liqn;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :goto_0
    return-object v1

    .line 327
    :catch_0
    move-exception v0

    .line 328
    const-string v2, "HomeLogadaActivity"

    const-string v3, "Erro showLoading"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 646
    new-instance v0, Lfsk;

    new-instance v1, Liqh;

    invoke-direct {v1, p0}, Liqh;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-direct {v0, p0, v1}, Lfsk;-><init>(Landroid/app/Activity;Lfso;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->G:Lfsk;

    .line 667
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->G:Lfsk;

    invoke-virtual {v0}, Lfsk;->show()V

    .line 668
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 808
    invoke-virtual {p0, p1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 809
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 178
    invoke-static {}, Lhbr;->a()Lhbr;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lhbr;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 179
    return-void
.end method

.method public a(Larh;)V
    .locals 4

    .prologue
    .line 979
    sget-object v0, Lchat/santander/com/modulochatsantander/tasks/ChatTask;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Larh;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Larh;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void
.end method

.method public a(Lark;)V
    .locals 0

    .prologue
    .line 1144
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 680
    :try_start_0
    invoke-static {p0, p1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    invoke-static {p0, p1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljdf;)V
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->C:Lglu;

    invoke-virtual {v0, p1}, Lglu;->a(Ljdf;)V

    .line 1051
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 970
    if-eqz p1, :cond_0

    .line 971
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->au()V

    .line 975
    :goto_0
    return-void

    .line 973
    :cond_0
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->av()V

    goto :goto_0
.end method

.method public a(ZLgxa;)V
    .locals 3

    .prologue
    .line 816
    new-instance v0, Lgtz;

    new-instance v1, Liqm;

    invoke-direct {v1, p0}, Liqm;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    iget-object v2, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1, v2}, Lgtz;-><init>(Lguf;Landroid/app/Activity;)V

    .line 848
    invoke-virtual {v0, p1, p2}, Lgtz;->a(ZLgxa;)V

    .line 849
    return-void
.end method

.method public aa()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->z:Lgly;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->r()Ljky;

    move-result-object v1

    invoke-interface {v1}, Ljky;->b()Ljde;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgly;->a(Ljde;)V

    .line 1126
    return-void
.end method

.method public ab()V
    .locals 2

    .prologue
    .line 1130
    const-string v0, "Investimentos_Home_Acao"

    const-string v1, "Poupanca"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljcw;->a(Landroid/app/Activity;Z)V

    .line 1133
    return-void
.end method

.method public ac()V
    .locals 1

    .prologue
    .line 1137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->R:Z

    .line 1138
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->x:Lgld;

    invoke-virtual {v0}, Lgld;->d()V

    .line 1139
    return-void
.end method

.method public ad()Z
    .locals 1

    .prologue
    .line 1155
    iget-boolean v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->R:Z

    return v0
.end method

.method public ae()V
    .locals 1

    .prologue
    .line 1160
    invoke-static {p0}, Lmxn;->b(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->P:Landroid/app/Dialog;

    .line 1161
    return-void
.end method

.method public af()V
    .locals 1

    .prologue
    .line 1165
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->P:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1166
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->P:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->P:Landroid/app/Dialog;

    .line 1169
    :cond_0
    return-void
.end method

.method public ag()V
    .locals 1

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->C:Lglu;

    invoke-virtual {v0}, Lglu;->d()V

    .line 1174
    return-void
.end method

.method public ah()Lgwt;
    .locals 1

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->I:Lgwt;

    return-object v0
.end method

.method public ai()I
    .locals 1

    .prologue
    .line 1182
    iget v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->T:I

    return v0
.end method

.method public aj()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Ljava/lang/Object;)V

    .line 1188
    return-void
.end method

.method public ak()V
    .locals 2

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->A:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Ljava/lang/Object;)V

    .line 1193
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->G:Lfsk;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->G:Lfsk;

    invoke-virtual {v0}, Lfsk;->dismiss()V

    .line 675
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 862
    const-string v0, "Alerta"

    const/4 v1, 0x0

    const-string v2, "OK"

    invoke-static {p0, v0, p1, v1, v2}, Lmxn;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/Dialog;

    .line 863
    return-void
.end method

.method public c()V
    .locals 7

    .prologue
    .line 688
    new-instance v1, Landroid/app/Dialog;

    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    const v2, 0x7f0b0224

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 689
    const v0, 0x7f04027a

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 690
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 691
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const v2, 0x7f0b021e

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 693
    const v0, 0x7f1002da

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 694
    const v2, 0x7f100d61

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 699
    const-string v3, "Confirmar"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 700
    new-instance v4, Liqi;

    invoke-direct {v4, p0, v1}, Liqi;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/app/Dialog;)V

    .line 707
    const-string v0, "Cancelar"

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 708
    new-instance v5, Liqj;

    invoke-direct {v5, p0, v1}, Liqj;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Landroid/app/Dialog;)V

    .line 716
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    const-string v2, "Aten\u00e7\u00e3o"

    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f090135

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lmxn;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    .line 717
    return-void
.end method

.method public d()V
    .locals 5

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->C()V

    .line 186
    const v0, 0x7f100614

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/view/cardLayout/CardLayout;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->H:Lcom/santander/app/components/view/cardLayout/CardLayout;

    .line 188
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v0}, Lmip;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmip;->i(Z)V

    .line 190
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->ar()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->o()V

    .line 195
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D()V

    .line 197
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->E()V

    .line 199
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->V()V

    .line 201
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->G()V

    .line 203
    const v0, 0x7f100c58

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->N:Landroid/widget/LinearLayout;

    .line 204
    const v0, 0x7f100c5e

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->O:Landroid/widget/LinearLayout;

    .line 206
    const v0, 0x7f100c59

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->E:Landroid/widget/Button;

    .line 207
    const v0, 0x7f100c5a

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 208
    const v1, 0x7f100c5f

    invoke-virtual {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 209
    const v2, 0x7f100c60

    invoke-virtual {p0, v2}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 211
    iget-object v3, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->E:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->al()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->am()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->an()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    invoke-direct {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->ao()Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->l()V

    .line 218
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->g()V

    .line 219
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->h()V

    .line 220
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->j()V

    .line 221
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->i()V

    .line 222
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->k()V

    .line 224
    new-instance v0, Lfsq;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-direct {v0, v1}, Lfsq;-><init>(Lfsp;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->F:Lfsr;

    .line 226
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->s()V

    .line 228
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->v()V

    .line 230
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->E:Landroid/widget/Button;

    invoke-interface {v0, v1}, Lirc;->a(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v0}, Lmip;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0, p0}, Lirc;->a(Landroid/content/Context;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->z()V

    .line 238
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->A()V

    .line 242
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 902
    :try_start_0
    new-instance v0, Liqq;

    invoke-direct {v0, p0, p1}, Liqq;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;Ljava/lang/String;)V

    .line 922
    new-instance v1, Laqy;

    invoke-direct {v1}, Laqy;-><init>()V

    .line 923
    invoke-virtual {v1, p0}, Laqy;->a(Landroid/content/Context;)Laqy;

    move-result-object v1

    .line 924
    invoke-virtual {v1, v0}, Laqy;->a(Larb;)Laqy;

    move-result-object v0

    const-string v1, "0001"

    .line 925
    invoke-virtual {v0, v1}, Laqy;->a(Ljava/lang/String;)Laqy;

    move-result-object v0

    const-string v1, "35"

    .line 926
    invoke-virtual {v0, v1}, Laqy;->b(Ljava/lang/String;)Laqy;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d:Lgki;

    .line 927
    invoke-virtual {v1}, Lgki;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqy;->c(Ljava/lang/String;)Laqy;

    move-result-object v0

    new-instance v1, Lgkk;

    invoke-direct {v1}, Lgkk;-><init>()V

    .line 928
    invoke-virtual {v0, v1}, Laqy;->a(Lapa;)Laqy;

    move-result-object v0

    .line 929
    invoke-static {}, Lgkj;->b()Lgkj;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqy;->a(Larv;)Laqy;

    move-result-object v0

    .line 930
    invoke-virtual {v0, p0}, Laqy;->a(Laqw;)Laqy;

    move-result-object v0

    const v1, 0x7f0e00a7

    .line 931
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqy;->a(Ljava/lang/Integer;)Laqy;

    move-result-object v0

    const v1, 0x7f0e00aa

    .line 932
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Laqy;->b(Ljava/lang/Integer;)Laqy;

    move-result-object v0

    const/4 v1, 0x0

    .line 933
    invoke-virtual {v0, v1}, Laqy;->a(Z)Laqy;

    move-result-object v0

    .line 934
    invoke-virtual {v0}, Laqy;->a()Laqx;

    move-result-object v0

    .line 936
    invoke-static {v0}, Laqt;->a(Laqx;)V
    :try_end_0
    .catch Laqc; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    return-void

    .line 938
    :catch_0
    move-exception v0

    .line 939
    const-string v1, "Error"

    invoke-virtual {v0}, Laqc;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 246
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoSMSOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 247
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 251
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoQrOuAtmOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderHabilitacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 257
    const-string v1, "atm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 259
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/meuperfil/presentation/EscolhaContaPreferencialActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public i()V
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    const-string v1, "tipo"

    sget-object v2, Lnat;->ID_CANCELADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method public j()V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipoConversao"

    sget-object v2, Liuu;->OBRIGATORIA:Liuu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public k()V
    .locals 3

    .prologue
    .line 280
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderOfertaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "tipoConversao"

    sget-object v2, Liuu;->OPCIONAL:Liuu;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 281
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lgpu;->a(Landroid/app/Activity;Landroid/support/v7/app/ActionBar;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 341
    sget-object v0, Lnaz;->LIMPEZA_SEMENTES_TELA_03_BLOQUEIO_ADM:Lnaz;

    invoke-virtual {v0}, Lnaz;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v1}, Lmip;->f()Lmir;

    move-result-object v1

    invoke-virtual {v1}, Lmir;->y()Lmwy;

    move-result-object v1

    invoke-virtual {v1}, Lmwy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v0}, Lmip;->f()Lmir;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lmir;->e(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->q()V

    .line 353
    :goto_0
    return-void

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/fingerprint/presentation/FingerprintEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    const-string v1, "action"

    sget-object v2, Liev;->OFFER:Liev;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->F()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    invoke-static {v0}, Lmxn;->a(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a:Landroid/app/Dialog;

    .line 566
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0, p1}, Lgrs;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const v0, 0x7f040223

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->setContentView(I)V

    .line 165
    iput-object p0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->c:Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;

    .line 166
    new-instance v0, Lird;

    invoke-direct {v0, p0, p0}, Lird;-><init>(Lirb;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    .line 167
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->u()V

    .line 168
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d()V

    .line 171
    :try_start_0
    const-string v0, "ID MBB"

    new-instance v1, Lnaf;

    invoke-direct {v1}, Lnaf;-><init>()V

    iget-object v2, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->f:Lmip;

    invoke-interface {v2}, Lmip;->f()Lmir;

    move-result-object v2

    invoke-virtual {v2}, Lmir;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnaf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfrq;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "ID_MBB_ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 535
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 536
    const v1, 0x7f12000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 538
    invoke-interface {p1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    .line 540
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->d:Lgki;

    invoke-virtual {v0}, Lgki;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->K:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 544
    :cond_0
    invoke-super {p0, p1}, Lgrs;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 571
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 572
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd/MM/yyyy, HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 573
    const-string v2, "homeLogadaWidget"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 574
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 575
    const-string v3, "lastConecctionDate"

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 578
    invoke-super {p0}, Lgrs;->onDestroy()V

    .line 579
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 550
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 559
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 552
    :pswitch_0
    invoke-virtual {p0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->T()V

    goto :goto_0

    .line 550
    nop

    :pswitch_data_0
    .packed-switch 0x7f10120c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhau;->a(Landroid/app/Activity;)V

    .line 417
    invoke-super {p0}, Lgrs;->onPause()V

    .line 418
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lgrs;->onResume()V

    .line 410
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->D:Lirc;

    invoke-interface {v0}, Lirc;->w()V

    .line 411
    invoke-static {}, Lhau;->a()Lhau;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhau;->a(Landroid/app/Activity;)V

    .line 412
    return-void
.end method

.method public p()V
    .locals 2

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/components/view/avisofinalano/AvisoFinalAnoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 358
    return-void
.end method

.method public q()V
    .locals 3

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_ADM:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method public r()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_CLIENTE:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public s()V
    .locals 3

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    const-string v1, "tipo"

    sget-object v2, Lnat;->APARELHO_NAO_HABILITADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 378
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 379
    return-void
.end method

.method public t()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 384
    const-string v1, "tipo"

    sget-object v2, Lnat;->BLOQUEIO_TENTATIVAS:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 385
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 386
    return-void
.end method

.method public u()V
    .locals 3

    .prologue
    .line 390
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    const-string v1, "tipo"

    sget-object v2, Lnat;->ERRO_INESPERADO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 392
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 393
    return-void
.end method

.method public v()V
    .locals 2

    .prologue
    .line 397
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/idsantander/presentation/IdSantanderOtimizacaoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 398
    return-void
.end method

.method public w()V
    .locals 3

    .prologue
    .line 402
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/validation/presentation/IdSantanderUsuarioConsultivoActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const-string v1, "tipo"

    sget-object v2, Lnat;->USUARIO_CONSULTIVO:Lnat;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 404
    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->startActivity(Landroid/content/Intent;)V

    .line 405
    return-void
.end method

.method public x()V
    .locals 2

    .prologue
    .line 422
    const v0, 0x7f100c57

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    .line 423
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Lgln;

    invoke-direct {v1, p0}, Lgln;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 424
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Liqu;

    invoke-direct {v1, p0}, Liqu;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setSelectedItemEvent(Lgla;)V

    .line 431
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->g:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    invoke-virtual {v0}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/Conta;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->L:Lcom/santander/app/contacorrente/domain/Conta;

    .line 432
    return-void
.end method

.method public y()V
    .locals 3

    .prologue
    .line 436
    const v0, 0x7f100c5d

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    .line 437
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setVisibility(I)V

    .line 438
    new-instance v0, Lgld;

    sget-object v1, Lipp;->CARTOES_CARROSSEL_SELECTED:Lipp;

    invoke-direct {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lipp;)Landroid/view/View$OnClickListener;

    move-result-object v1

    sget-object v2, Lipp;->CARTOES_CARROSSEL_SELECTED:Lipp;

    invoke-direct {v0, p0, v1, v2}, Lgld;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lipp;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->x:Lgld;

    .line 439
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->x:Lgld;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 440
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->w:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Liqv;

    invoke-direct {v1, p0}, Liqv;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setSelectedItemEvent(Lgla;)V

    .line 446
    return-void
.end method

.method public z()V
    .locals 2

    .prologue
    .line 450
    const v0, 0x7f100c62

    invoke-virtual {p0, v0}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    .line 451
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setVisibility(I)V

    .line 452
    new-instance v0, Lgly;

    sget-object v1, Lipp;->POUPANCA_MENU_ITEM:Lipp;

    invoke-direct {p0, v1}, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->a(Lipp;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgly;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->z:Lgly;

    .line 453
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    iget-object v1, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->z:Lgly;

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->a(Lglb;)V

    .line 454
    iget-object v0, p0, Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;->y:Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;

    new-instance v1, Liqw;

    invoke-direct {v1, p0}, Liqw;-><init>(Lcom/santander/app/homelogada/presentation/HomeLogadaActivity;)V

    invoke-virtual {v0, v1}, Lcom/santander/app/components/carrossel/SelectorComponentCarrosselImpl;->setSelectedItemEvent(Lgla;)V

    .line 464
    return-void
.end method
