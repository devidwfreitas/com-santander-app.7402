.class public Lbas;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lbce;",
        "Lbce;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/util/List;Lbce;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Lbce;",
            ">;>;",
            "Lbce;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lbce;Lbat;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lbas;-><init>(Ljava/util/List;Lbce;)V

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
            "Lbce;",
            "Lbce;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Lbas;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lazo;

    iget-object v1, p0, Lbas;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lazo;-><init>(Ljava/lang/Object;)V

    .line 32
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazc;

    iget-object v1, p0, Lbas;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazc;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method
