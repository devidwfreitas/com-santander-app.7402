.class Lhbz;
.super Lhbt;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhbv;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lhbt;-><init>(Lhbv;)V

    .line 21
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "DeepLink_ContaCorrenteSaldoDetalhado"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "DeepLink_ContaCorrenteExtrato"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Lhbz;->b()V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/SaldoActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 38
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 39
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 40
    iget-object v0, p0, Lhbz;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 41
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lhbz;->c()V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/ContaMovementActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Lhbz;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 49
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 25
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 33
    :goto_1
    return-void

    .line 25
    :sswitch_0
    const-string v2, "contaCorrenteSaldoDetalhado"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "contaCorrenteExtrato"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :pswitch_0
    invoke-direct {p0, p1}, Lhbz;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 30
    :pswitch_1
    invoke-direct {p0, p1}, Lhbz;->d(Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :sswitch_data_0
    .sparse-switch
        0x497c79b6 -> :sswitch_1
        0x49fb034e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
