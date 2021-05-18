.class public Lafw;
.super Ljava/lang/Object;


# static fields
.field private static a:Lafw;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lafx;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lafw;
    .locals 2

    const-class v1, Lafw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lafw;->a:Lafw;

    if-nez v0, :cond_0

    new-instance v0, Lafw;

    invoke-direct {v0}, Lafw;-><init>()V

    sput-object v0, Lafw;->a:Lafw;

    :cond_0
    sget-object v0, Lafw;->a:Lafw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lafw;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0, p1}, Lafx;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lafw;->a(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lie;Lafx;Lji;Ljava/util/Properties;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p2

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lafw;->a(Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lafw;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/modulo/emprestimoslib/features/gestao/main/view/CreditoMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0, p1, p2}, Lafx;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p5, :cond_0

    invoke-static {}, Laja;->b()Laja;

    move-result-object v0

    invoke-virtual {v0, p1}, Laja;->a(Lie;)V

    invoke-static {}, Laja;->b()Laja;

    move-result-object v0

    invoke-virtual {v0, p3}, Laja;->a(Ljava/util/Properties;)V

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lajd;->a(Lji;)V

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0, p5}, Lajd;->a(Ljava/lang/String;)V

    invoke-static {}, Lajd;->a()Lajd;

    move-result-object v0

    invoke-virtual {v0, p6}, Lajd;->a(Z)V

    iput-object p4, p0, Lafw;->c:Lafx;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lafw;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0, p1}, Lafx;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lafw;->b(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Lie;Lafx;Lji;Ljava/util/Properties;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p3

    move-object v2, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p2

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lafw;->a(Lie;Lji;Ljava/util/Properties;Lafx;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lafw;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lbr/com/santander/modulo/emprestimoslib/features/remanejamento/main/view/RemanejamentoMainActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "params"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0}, Lafx;->c()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0}, Lafx;->a()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lafw;->c:Lafx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lafw;->c:Lafx;

    invoke-interface {v0}, Lafx;->b()V

    :cond_0
    return-void
.end method
