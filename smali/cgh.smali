.class public abstract Lcgh;
.super Lcgq;
.source "SourceFile"

# interfaces
.implements Lcil;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcgq",
        "<TT;>;",
        "Lcil",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcgq;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 18
    const/16 v0, 0xff

    const/16 v1, 0xbb

    const/16 v2, 0x73

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcgh;->a:I

    .line 22
    return-void
.end method


# virtual methods
.method public d(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcgh;->a:I

    .line 33
    return-void
.end method

.method public j()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcgh;->a:I

    return v0
.end method
