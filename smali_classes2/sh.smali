.class Lsh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqy;


# instance fields
.field final synthetic a:Ltk;

.field final synthetic b:Lrz;


# direct methods
.method constructor <init>(Lrz;Ltk;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lsh;->b:Lrz;

    iput-object p2, p0, Lsh;->a:Ltk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Labv;)V
    .locals 6

    .prologue
    .line 286
    check-cast p1, Lqu;

    .line 287
    iget-object v0, p0, Lsh;->a:Ltk;

    invoke-virtual {v0}, Ltk;->h()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labz;

    .line 288
    invoke-virtual {p1}, Lqu;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Labz;

    .line 289
    invoke-virtual {v0}, Labz;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Labz;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    invoke-virtual {v0}, Labz;->d()Ljava/util/List;

    move-result-object v4

    .line 291
    invoke-virtual {v1}, Labz;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 292
    invoke-virtual {v0, v4}, Labz;->a(Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lsh;->b:Lrz;

    invoke-static {v0}, Lrz;->b(Lrz;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lsh;->b:Lrz;

    invoke-static {v0}, Lrz;->d(Lrz;)Lre;

    move-result-object v0

    iget-object v1, p0, Lsh;->b:Lrz;

    invoke-static {v1}, Lrz;->c(Lrz;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lre;->a(Ljava/util/List;)V

    .line 298
    return-void
.end method

.method public a(Laby;)V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lsh;->b:Lrz;

    invoke-virtual {v0}, Lrz;->e()Lack;

    move-result-object v0

    new-instance v1, Lsi;

    invoke-direct {v1, p0}, Lsi;-><init>(Lsh;)V

    invoke-static {v0, v1}, Laad;->a(Landroid/content/Context;Laar;)V

    .line 306
    return-void
.end method
