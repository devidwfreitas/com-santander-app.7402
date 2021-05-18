.class Lmdb;
.super Lmeg;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmeg",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmda;


# direct methods
.method constructor <init>(Lmda;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lmdb;->a:Lmda;

    invoke-direct {p0}, Lmeg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILmda;Lmdt;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lmda",
            "<TItem;>;TItem;)V"
        }
    .end annotation

    .prologue
    .line 503
    invoke-virtual {p3, p2}, Lmda;->d(I)Lmdm;

    move-result-object v2

    .line 504
    if-eqz v2, :cond_6

    if-eqz p4, :cond_6

    invoke-interface {p4}, Lmdt;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 505
    const/4 v1, 0x0

    .line 507
    instance-of v0, p4, Lmdn;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lmdn;

    invoke-interface {v0}, Lmdn;->h()Lmdg;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p4

    .line 508
    check-cast v0, Lmdn;

    invoke-interface {v0}, Lmdn;->h()Lmdg;

    move-result-object v0

    invoke-interface {v0, p1, v2, p4, p2}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v1

    .line 512
    :cond_0
    if-nez v1, :cond_1

    invoke-static {p3}, Lmda;->a(Lmda;)Lmdg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 513
    invoke-static {p3}, Lmda;->a(Lmda;)Lmdg;

    move-result-object v0

    invoke-interface {v0, p1, v2, p4, p2}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v1

    .line 518
    :cond_1
    if-nez v1, :cond_2

    invoke-static {p3}, Lmda;->b(Lmda;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lmda;->c(Lmda;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    invoke-static {p3, p1, p4, p2}, Lmda;->a(Lmda;Landroid/view/View;Lmdt;I)V

    .line 523
    :cond_2
    if-nez v1, :cond_3

    instance-of v0, p4, Lmdp;

    if-eqz v0, :cond_3

    move-object v0, p4

    .line 524
    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p4

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 525
    invoke-virtual {p3, p2}, Lmda;->j(I)V

    .line 530
    :cond_3
    if-nez v1, :cond_5

    invoke-static {p3}, Lmda;->d(Lmda;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p4, Lmdp;

    if-eqz v0, :cond_5

    move-object v0, p4

    .line 531
    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    move-object v0, p4

    check-cast v0, Lmdp;

    invoke-interface {v0}, Lmdp;->j_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 532
    invoke-virtual {p3}, Lmda;->l()[I

    move-result-object v3

    .line 533
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_5

    .line 534
    aget v4, v3, v0

    if-eq v4, p2, :cond_4

    .line 535
    aget v4, v3, v0

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v5}, Lmda;->b(IZ)V

    .line 533
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 542
    :cond_5
    if-nez v1, :cond_7

    instance-of v0, p4, Lmdn;

    if-eqz v0, :cond_7

    move-object v0, p4

    check-cast v0, Lmdn;

    invoke-interface {v0}, Lmdn;->d()Lmdg;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v0, p4

    .line 543
    check-cast v0, Lmdn;

    invoke-interface {v0}, Lmdn;->d()Lmdg;

    move-result-object v0

    invoke-interface {v0, p1, v2, p4, p2}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v0

    .line 547
    :goto_1
    if-nez v0, :cond_6

    invoke-static {p3}, Lmda;->e(Lmda;)Lmdg;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 548
    invoke-static {p3}, Lmda;->e(Lmda;)Lmdg;

    move-result-object v0

    invoke-interface {v0, p1, v2, p4, p2}, Lmdg;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    .line 551
    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_1
.end method
