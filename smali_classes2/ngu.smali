.class final Lngu;
.super Lngs;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lngs",
        "<",
        "Lnge;",
        "Lnfx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lnfu;Lnfu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnfu",
            "<",
            "Lnfx;",
            ">;",
            "Lnfu",
            "<",
            "Lnfx;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lnge;

    invoke-direct {p0, v0, p1, p2}, Lngs;-><init>(Ljava/lang/Class;Lnfu;Lnfu;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/EventListener;)V
    .locals 0

    check-cast p1, Lnge;

    invoke-virtual {p0, p1}, Lngu;->a(Lnge;)V

    return-void
.end method

.method public a(Lnge;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lngu;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lngu;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfx;

    invoke-interface {p1, v0, v4}, Lnge;->a(Lnfx;Lnfx;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lngu;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lngu;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfx;

    invoke-virtual {p0}, Lngu;->b()Lnfu;

    move-result-object v1

    invoke-virtual {v0}, Lnfx;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnfu;->b(Ljava/lang/String;)Lnfy;

    move-result-object v1

    check-cast v1, Lnfx;

    invoke-interface {p1, v1, v0}, Lnge;->a(Lnfx;Lnfx;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lngu;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lngu;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnfx;

    invoke-interface {p1, v4, v0}, Lnge;->a(Lnfx;Lnfx;)V

    goto :goto_2

    :cond_2
    return-void
.end method
