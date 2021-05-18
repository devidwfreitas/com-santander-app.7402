.class Lmdc;
.super Lmek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmek",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmda;


# direct methods
.method constructor <init>(Lmda;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lmdc;->a:Lmda;

    invoke-direct {p0}, Lmek;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILmda;Lmdt;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I",
            "Lmda",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 561
    invoke-virtual {p3, p2}, Lmda;->d(I)Lmdm;

    move-result-object v1

    .line 562
    if-eqz v1, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lmdt;->l()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 564
    invoke-static {p3}, Lmda;->f(Lmda;)Lmdj;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 565
    invoke-static {p3}, Lmda;->f(Lmda;)Lmdj;

    move-result-object v0

    invoke-interface {v0, p1, v1, p4, p2}, Lmdj;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v0

    .line 569
    :cond_0
    if-nez v0, :cond_1

    invoke-static {p3}, Lmda;->b(Lmda;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lmda;->c(Lmda;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    invoke-static {p3, p1, p4, p2}, Lmda;->a(Lmda;Landroid/view/View;Lmdt;I)V

    .line 574
    :cond_1
    if-nez v0, :cond_2

    invoke-static {p3}, Lmda;->g(Lmda;)Lmdj;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 575
    invoke-static {p3}, Lmda;->g(Lmda;)Lmdj;

    move-result-object v0

    invoke-interface {v0, p1, v1, p4, p2}, Lmdj;->a(Landroid/view/View;Lmdm;Lmdt;I)Z

    move-result v0

    .line 578
    :cond_2
    return v0
.end method
