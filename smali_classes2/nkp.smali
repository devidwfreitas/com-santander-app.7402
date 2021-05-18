.class Lnkp;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lnhp;

.field final synthetic b:Lnko;


# direct methods
.method constructor <init>(Lnko;Lnhp;)V
    .locals 0

    iput-object p1, p0, Lnkp;->b:Lnko;

    iput-object p2, p0, Lnkp;->a:Lnhp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lnkp;->a:Lnhp;

    new-instance v1, Lnht;

    iget-object v2, p0, Lnkp;->b:Lnko;

    invoke-static {v2}, Lnko;->b(Lnko;)Z

    move-result v2

    invoke-direct {v1, v2}, Lnht;-><init>(Z)V

    invoke-interface {v0, v1}, Lnhp;->b(Lnib;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "level"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "scale"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "status"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-eq v0, v6, :cond_6

    if-eq v3, v6, :cond_6

    if-eqz v3, :cond_6

    iget-object v5, p0, Lnkp;->b:Lnko;

    int-to-float v0, v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v5, v0}, Lnko;->a(Lnko;I)I

    iget-object v0, p0, Lnkp;->b:Lnko;

    invoke-static {v0}, Lnko;->a(Lnko;)I

    move-result v0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lnkp;->b:Lnko;

    invoke-static {v3}, Lnko;->b(Lnko;)Z

    move-result v3

    xor-int/2addr v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnkp;->b:Lnko;

    invoke-static {v3, v0}, Lnko;->a(Lnko;Z)Z

    invoke-direct {p0}, Lnkp;->a()V

    :cond_2
    :goto_2
    if-eq v4, v6, :cond_0

    iget-object v0, p0, Lnkp;->b:Lnko;

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    const/4 v3, 0x5

    if-ne v4, v3, :cond_4

    :cond_3
    move v2, v1

    :cond_4
    invoke-static {v0, v2}, Lnko;->b(Lnko;Z)Z

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lnkp;->b:Lnko;

    invoke-static {v0, v6}, Lnko;->a(Lnko;I)I

    iget-object v0, p0, Lnkp;->b:Lnko;

    invoke-static {v0, v2}, Lnko;->a(Lnko;Z)Z

    invoke-direct {p0}, Lnkp;->a()V

    goto :goto_2
.end method
