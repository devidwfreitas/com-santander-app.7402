.class Lhcf;
.super Lhbt;
.source "SourceFile"


# instance fields
.field private b:Ljos;


# direct methods
.method constructor <init>(Lhbv;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lhbt;-><init>(Lhbv;)V

    .line 22
    new-instance v0, Ljos;

    invoke-direct {v0}, Ljos;-><init>()V

    iput-object v0, p0, Lhcf;->b:Ljos;

    .line 23
    return-void
.end method

.method static synthetic a(Lhcf;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhcf;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "DeepLink_LojaOnline"

    const-string v1, "Elegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method static synthetic b(Lhcf;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lhcf;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "DeepLink_LojaOnline"

    const-string v1, "NaoElegivel"

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lhcf;->b:Ljos;

    new-instance v1, Lhcg;

    invoke-direct {v1, p0, p1}, Lhcg;-><init>(Lhcf;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljos;->a(Ljoj;)V

    .line 50
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lhbp;)V
    .locals 3

    .prologue
    .line 27
    invoke-virtual {p2}, Lhbp;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 32
    :goto_1
    return-void

    .line 27
    :pswitch_0
    const-string v2, "lojaOnline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :pswitch_1
    invoke-direct {p0, p1}, Lhcf;->c(Landroid/content/Context;)V

    goto :goto_1

    .line 27
    :pswitch_data_0
    .packed-switch -0xbcf7b13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
