.class public final Lbii;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lbiu;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lbiu;)V
    .locals 0

    .prologue
    .line 1380
    iput-object p1, p0, Lbii;->a:Ljava/util/ArrayList;

    iput-object p2, p0, Lbii;->b:Lbiu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1382
    iget-object v0, p0, Lbii;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1383
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lbim;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lbix;

    invoke-interface {v1, v0}, Lbim;->a(Lbix;)V

    goto :goto_0

    .line 1386
    :cond_0
    iget-object v0, p0, Lbii;->b:Lbiu;

    invoke-virtual {v0}, Lbiu;->e()Ljava/util/List;

    move-result-object v0

    .line 1387
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbiv;

    .line 1388
    iget-object v2, p0, Lbii;->b:Lbiu;

    invoke-interface {v0, v2}, Lbiv;->a(Lbiu;)V

    goto :goto_1

    .line 1390
    :cond_1
    return-void
.end method
