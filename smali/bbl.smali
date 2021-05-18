.class public Lbbl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbbu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbbu",
        "<",
        "Landroid/graphics/PointF;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lbao;

.field private final b:Lbao;


# direct methods
.method constructor <init>(Lbao;Lbao;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lbbl;->a:Lbao;

    .line 16
    iput-object p2, p0, Lbbl;->b:Lbao;

    .line 17
    return-void
.end method


# virtual methods
.method public a()Layy;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v0, Lazn;

    iget-object v1, p0, Lbbl;->a:Lbao;

    .line 21
    invoke-virtual {v1}, Lbao;->a()Layy;

    move-result-object v1

    iget-object v2, p0, Lbbl;->b:Lbao;

    invoke-virtual {v2}, Lbao;->a()Layy;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lazn;-><init>(Layy;Layy;)V

    return-object v0
.end method

.method public a_()Z
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lbbl;->a:Lbao;

    invoke-virtual {v0}, Lbao;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbbl;->b:Lbao;

    invoke-virtual {v0}, Lbao;->a_()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
