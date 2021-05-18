.class public Lazl;
.super Laze;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Lbaj;",
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
            "Lbaj;",
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
.method public synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lazl;->b(Laxz;F)Lbaj;

    move-result-object v0

    return-object v0
.end method

.method public b(Laxz;F)Lbaj;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Lbaj;",
            ">;F)",
            "Lbaj;"
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

    check-cast v0, Lbaj;

    .line 19
    iget-object v1, p1, Laxz;->b:Ljava/lang/Object;

    check-cast v1, Lbaj;

    .line 20
    new-instance v2, Lbaj;

    .line 21
    invoke-virtual {v0}, Lbaj;->a()F

    move-result v3

    invoke-virtual {v1}, Lbaj;->a()F

    move-result v4

    invoke-static {v3, v4, p2}, Lbex;->a(FFF)F

    move-result v3

    .line 22
    invoke-virtual {v0}, Lbaj;->b()F

    move-result v0

    invoke-virtual {v1}, Lbaj;->b()F

    move-result v1

    invoke-static {v0, v1, p2}, Lbex;->a(FFF)F

    move-result v0

    invoke-direct {v2, v3, v0}, Lbaj;-><init>(FF)V

    return-object v2
.end method
