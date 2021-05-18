.class Ldyj;
.super Lcxb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcxb",
        "<",
        "Ldyh;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcxp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcxp",
            "<",
            "Ldyh;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/support/v4/app/Fragment;

.field private c:Landroid/app/Activity;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ldxl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    invoke-direct {p0}, Lcxb;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldyj;->d:Ljava/util/List;

    iput-object p1, p0, Ldyj;->b:Landroid/support/v4/app/Fragment;

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ldyj;->c:Landroid/app/Activity;

    invoke-virtual {p0}, Ldyj;->i()V

    return-void
.end method

.method static synthetic a(Ldyj;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Ldyj;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method protected a(Lcxp;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcxp",
            "<",
            "Ldyh;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ldyj;->a:Lcxp;

    invoke-virtual {p0}, Ldyj;->i()V

    return-void
.end method

.method public a(Ldxl;)V
    .locals 1

    invoke-virtual {p0}, Ldyj;->a()Lcxa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldyj;->a()Lcxa;

    move-result-object v0

    check-cast v0, Ldyh;

    invoke-virtual {v0, p1}, Ldyh;->a(Ldxl;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ldyj;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public i()V
    .locals 4

    iget-object v0, p0, Ldyj;->c:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldyj;->a:Lcxp;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ldyj;->a()Lcxa;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Ldyj;->c:Landroid/app/Activity;

    invoke-static {v0}, Ldxj;->a(Landroid/content/Context;)I

    iget-object v0, p0, Ldyj;->c:Landroid/app/Activity;

    invoke-static {v0}, Leao;->a(Landroid/content/Context;)Leas;

    move-result-object v0

    iget-object v1, p0, Ldyj;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcxo;->a(Ljava/lang/Object;)Lcwx;

    move-result-object v1

    invoke-interface {v0, v1}, Leas;->c(Lcwx;)Ldzg;

    move-result-object v0

    iget-object v1, p0, Ldyj;->a:Lcxp;

    new-instance v2, Ldyh;

    iget-object v3, p0, Ldyj;->b:Landroid/support/v4/app/Fragment;

    invoke-direct {v2, v3, v0}, Ldyh;-><init>(Landroid/support/v4/app/Fragment;Ldzg;)V

    invoke-interface {v1, v2}, Lcxp;->a(Lcxa;)V

    iget-object v0, p0, Ldyj;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldxl;

    invoke-virtual {p0}, Ldyj;->a()Lcxa;

    move-result-object v1

    check-cast v1, Ldyh;

    invoke-virtual {v1, v0}, Ldyh;->a(Ldxl;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcop; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ledy;

    invoke-direct {v1, v0}, Ledy;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Ldyj;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcop; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_1
.end method
