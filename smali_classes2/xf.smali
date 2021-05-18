.class Lxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lot;


# instance fields
.field final synthetic a:Lwx;


# direct methods
.method constructor <init>(Lwx;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lxf;->a:Lwx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 3

    .prologue
    .line 236
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
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

    .line 238
    invoke-virtual {v0}, Lou;->g()V

    .line 239
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_0
    iget-object v0, p0, Lxf;->a:Lwx;

    invoke-static {v0}, Lwx;->h(Lwx;)Lacg;

    move-result-object v0

    invoke-virtual {v0, v1}, Lacg;->a(Ljava/util/ArrayList;)V

    .line 242
    iget-object v0, p0, Lxf;->a:Lwx;

    invoke-static {v0}, Lwx;->i(Lwx;)V

    .line 243
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lxf;->a:Lwx;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lwx;->b(Lwx;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 248
    iget-object v0, p0, Lxf;->a:Lwx;

    invoke-virtual {v0}, Lwx;->e()Lack;

    move-result-object v0

    new-instance v1, Lxg;

    invoke-direct {v1, p0}, Lxg;-><init>(Lxf;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 258
    return-void
.end method
