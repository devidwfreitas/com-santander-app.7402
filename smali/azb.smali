.class public Lazb;
.super Laze;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1}, Laze;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lazb;->b(Laxz;F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method b(Laxz;F)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Ljava/lang/Float;",
            ">;F)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 15
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Laxz;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing values for keyframe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v0, p1, Laxz;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0, p2}, Lbex;->a(FFF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
