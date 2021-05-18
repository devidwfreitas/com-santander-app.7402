.class public Lbal;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/Integer;Lbam;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lbal;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public a()Layy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lbal;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lazo;

    iget-object v1, p0, Lbal;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 23
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Laza;

    iget-object v1, p0, Lbal;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Laza;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AnimatableColorValue{initialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbal;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
