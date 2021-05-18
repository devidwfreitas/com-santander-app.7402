.class final Lalf;
.super Ljava/lang/Object;

# interfaces
.implements Lbfr;


# instance fields
.field private synthetic a:Lala;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lala;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lalf;->a:Lala;

    iput-object p2, p0, Lalf;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lalf;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.santander.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v0

    new-instance v1, Lalg;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Outros_ErrInit"

    const-string v4, "onFirstRunning"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lalh;->a(Lalg;)V

    :cond_0
    iget-object v0, p0, Lalf;->a:Lala;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-interface {v0, v1}, Lala;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(F)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v0

    new-instance v1, Lalg;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Outros_ValInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sim "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lalh;->a(Lalg;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-interface {v0, v1}, Lala;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-interface {v0, v6}, Lala;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(IF)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v0

    const-string v1, "onValidateDnaFailure"

    invoke-virtual {v0, v1}, Lalh;->b(Ljava/lang/String;)V

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v0

    new-instance v1, Lalg;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Outros_ValInit"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Nao "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v6}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lalh;->a(Lalg;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-interface {v0, v1}, Lala;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-interface {v0, v6}, Lala;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lalb;->f(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "log"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    new-instance v2, Lalg;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Outros_ErrInit"

    const-string v5, "onError"

    invoke-direct {v2, v3, v4, v5, v0}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lalh;->a(Lalg;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-interface {v0, v1}, Lala;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lalf;->a:Lala;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lala;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "log"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-virtual {v1, p1}, Lalh;->a(Ljava/lang/String;)V

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    new-instance v2, Lalg;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Outros_ErrInit"

    const-string v5, "testLog"

    invoke-direct {v2, v3, v4, v5, v0}, Lalg;-><init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lalh;->a(Lalg;)V

    iget-object v0, p0, Lalf;->a:Lala;

    invoke-static {}, Lalb;->d()Lalh;

    move-result-object v1

    invoke-interface {v0, v1}, Lala;->b(Ljava/lang/Object;)V

    const-string v0, "ID_TEST_LOG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
