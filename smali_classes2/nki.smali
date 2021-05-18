.class Lnki;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnkj;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lnkg;


# direct methods
.method constructor <init>(Lnkg;Lnkj;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnki;->c:Lnkg;

    iput-object p2, p0, Lnki;->a:Lnkj;

    iput-object p3, p0, Lnki;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lnki;->c:Lnkg;

    invoke-static {v0}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v0

    iget-object v1, p0, Lnki;->a:Lnkj;

    invoke-virtual {v1}, Lnkj;->o()Lnhc;

    move-result-object v1

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v0, p0, Lnki;->c:Lnkg;

    invoke-static {v0}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnks;

    iget-object v2, p0, Lnki;->a:Lnkj;

    iget-object v3, p0, Lnki;->c:Lnkg;

    invoke-static {v3}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnks;-><init>(Lnkj;Lnhp;)V

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v0, p0, Lnki;->c:Lnkg;

    invoke-static {v0}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnla;

    iget-object v2, p0, Lnki;->b:Ljava/lang/String;

    iget-object v3, p0, Lnki;->a:Lnkj;

    iget-object v4, p0, Lnki;->c:Lnkg;

    invoke-static {v4}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lnla;-><init>(Ljava/lang/String;Lnkj;Lnhp;)V

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    iget-object v0, p0, Lnki;->a:Lnkj;

    invoke-virtual {v0}, Lnkj;->b()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lnip;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnki;->c:Lnkg;

    invoke-static {v0}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v0

    new-instance v1, Lnko;

    iget-object v2, p0, Lnki;->a:Lnkj;

    invoke-virtual {v2}, Lnkj;->b()Landroid/app/Application;

    move-result-object v2

    iget-object v3, p0, Lnki;->c:Lnkg;

    invoke-static {v3}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lnko;-><init>(Landroid/content/Context;Lnhp;)V

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    :cond_0
    iget-object v0, p0, Lnki;->a:Lnkj;

    invoke-virtual {v0}, Lnkj;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    instance-of v0, v0, Lngf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnki;->c:Lnkg;

    invoke-static {v0}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v0

    new-instance v1, Lngz;

    iget-object v2, p0, Lnki;->a:Lnkj;

    iget-object v3, p0, Lnki;->c:Lnkg;

    invoke-static {v3}, Lnkg;->a(Lnkg;)Lnhp;

    move-result-object v3

    iget-object v4, p0, Lnki;->c:Lnkg;

    invoke-static {v4}, Lnkg;->b(Lnkg;)Lnjz;

    move-result-object v4

    invoke-virtual {v4}, Lnjz;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lngz;-><init>(Lnkj;Lnhp;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lnhp;->a(Ljava/util/EventListener;)V

    :cond_2
    iget-object v0, p0, Lnki;->a:Lnkj;

    invoke-virtual {v0}, Lnkj;->o()Lnhc;

    move-result-object v0

    invoke-virtual {v0}, Lnhc;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnki;->a:Lnkj;

    invoke-virtual {v0}, Lnkj;->o()Lnhc;

    move-result-object v0

    sget v1, Lnkf;->tealium_init_with:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnki;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lnki;->a:Lnkj;

    invoke-virtual {v4}, Lnkj;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lnhc;->c(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnki;->a:Lnkj;

    invoke-virtual {v1}, Lnkj;->o()Lnhc;

    move-result-object v1

    sget v2, Lnkf;->tealium_error_init:I

    invoke-virtual {v1, v2, v0}, Lnhc;->a(ILjava/lang/Throwable;)V

    iget-object v0, p0, Lnki;->b:Ljava/lang/String;

    invoke-static {v0}, Lnkg;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
