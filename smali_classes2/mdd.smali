.class Lmdd;
.super Lmel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmel",
        "<TItem;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lmda;


# direct methods
.method constructor <init>(Lmda;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lmdd;->a:Lmda;

    invoke-direct {p0}, Lmel;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;ILmda;Lmdt;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/MotionEvent;",
            "I",
            "Lmda",
            "<TItem;>;TItem;)Z"
        }
    .end annotation

    .prologue
    .line 588
    invoke-static {p4}, Lmda;->h(Lmda;)Lmdk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {p4, p3}, Lmda;->d(I)Lmdm;

    move-result-object v3

    .line 590
    if-eqz v3, :cond_0

    .line 591
    invoke-static {p4}, Lmda;->h(Lmda;)Lmdk;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p5

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lmdk;->a(Landroid/view/View;Landroid/view/MotionEvent;Lmdm;Lmdt;I)Z

    move-result v0

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
