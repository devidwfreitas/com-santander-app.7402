.class Lhch;
.super Lhbt;
.source "SourceFile"


# direct methods
.method constructor <init>(Lhbv;)V
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
    .line 78
    const-string v0, "DeepLink_SegurosVida"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "DeepLink_SegurosAcidentePessoal"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    const-string v1, "extra_deeplink"

    const-string v2, "deeplink_lista_produtos"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lhch;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    .line 45
    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lhch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Lhch;->b(Landroid/content/Context;)V

    .line 58
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-direct {p0}, Lhch;->c()V

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v1, "extra_deeplink"

    const-string v2, "deeplink_acidente_pessoal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 57
    iget-object v0, p0, Lhch;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0
.end method

.method private e(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lhch;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lhch;->b(Landroid/content/Context;)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-direct {p0}, Lhch;->b()V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/santander/app/seguros/ui/consultative/activities/HireInsuranceActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    const-string v1, "extra_deeplink"

    const-string v2, "deeplink_vida"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    new-instance v1, Lhbu;

    invoke-direct {v1, v0}, Lhbu;-><init>(Landroid/content/Intent;)V

    .line 70
    iget-object v0, p0, Lhch;->a:Lhbv;

    invoke-interface {v0, p1, v1}, Lhbv;->a(Landroid/content/Context;Lhbu;)V

    goto :goto_0
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

    .line 38
    :goto_1
    return-void

    .line 25
    :sswitch_0
    const-string v2, "segurosAcidentePessoal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "segurosVida"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "segurosListaProdutos"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 27
    :pswitch_0
    invoke-direct {p0, p1}, Lhch;->d(Landroid/content/Context;)V

    goto :goto_1

    .line 31
    :pswitch_1
    invoke-direct {p0, p1}, Lhch;->e(Landroid/content/Context;)V

    goto :goto_1

    .line 35
    :pswitch_2
    invoke-direct {p0, p1}, Lhch;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 25
    :sswitch_data_0
    .sparse-switch
        -0x794b6a39 -> :sswitch_2
        -0x775deb68 -> :sswitch_0
        -0x486a595a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
