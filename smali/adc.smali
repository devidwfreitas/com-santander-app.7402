.class Ladc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lacy;


# direct methods
.method constructor <init>(Lacy;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Ladc;->a:Lacy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 3

    .prologue
    .line 218
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    .line 219
    check-cast v0, Lon;

    invoke-virtual {v0}, Lon;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    check-cast p1, Lon;

    invoke-virtual {p1}, Lon;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lou;

    .line 221
    invoke-virtual {v0}, Lou;->g()V

    .line 222
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Ladc;->a:Lacy;

    iget-object v0, v0, Lacy;->a:Lacg;

    invoke-virtual {v0, v1}, Lacg;->a(Ljava/util/ArrayList;)V

    .line 225
    iget-object v0, p0, Ladc;->a:Lacy;

    invoke-static {v0}, Lacy;->d(Lacy;)V

    .line 230
    :goto_1
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Ladc;->a:Lacy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lacy;->d:Ljava/lang/Boolean;

    .line 228
    iget-object v0, p0, Ladc;->a:Lacy;

    invoke-virtual {v0}, Lacy;->k()V

    goto :goto_1
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Ladc;->a:Lacy;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lacy;->d:Ljava/lang/Boolean;

    .line 235
    iget-object v0, p0, Ladc;->a:Lacy;

    invoke-virtual {v0}, Lacy;->e()Lack;

    move-result-object v0

    new-instance v1, Ladd;

    invoke-direct {v1, p0}, Ladd;-><init>(Ladc;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 239
    return-void
.end method
