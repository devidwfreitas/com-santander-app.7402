.class public Lazc;
.super Laze;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laze",
        "<",
        "Lbce;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lbce;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Laxz",
            "<",
            "Lbce;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 12
    invoke-direct {p0, p1}, Laze;-><init>(Ljava/util/List;)V

    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxz;

    iget-object v0, v0, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Lbce;

    .line 14
    if-nez v0, :cond_0

    move v0, v1

    .line 15
    :goto_0
    new-instance v1, Lbce;

    new-array v2, v0, [F

    new-array v0, v0, [I

    invoke-direct {v1, v2, v0}, Lbce;-><init>([F[I)V

    iput-object v1, p0, Lazc;->b:Lbce;

    .line 16
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lbce;->c()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1, p2}, Lazc;->b(Laxz;F)Lbce;

    move-result-object v0

    return-object v0
.end method

.method b(Laxz;F)Lbce;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Lbce;",
            ">;F)",
            "Lbce;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v2, p0, Lazc;->b:Lbce;

    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Lbce;

    iget-object v1, p1, Laxz;->b:Ljava/lang/Object;

    check-cast v1, Lbce;

    invoke-virtual {v2, v0, v1, p2}, Lbce;->a(Lbce;Lbce;F)V

    .line 20
    iget-object v0, p0, Lazc;->b:Lbce;

    return-object v0
.end method
