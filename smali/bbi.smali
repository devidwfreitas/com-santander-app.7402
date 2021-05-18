.class public Lbbi;
.super Lbby;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbby",
        "<",
        "Lbdd;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Landroid/graphics/Path;


# direct methods
.method private constructor <init>(Ljava/util/List;Lbdd;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Lbdd;",
            ">;>;",
            "Lbdd;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lbby;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 18
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbbi;->c:Landroid/graphics/Path;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lbdd;Lbbj;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lbbi;-><init>(Ljava/util/List;Lbdd;)V

    return-void
.end method


# virtual methods
.method a(Lbdd;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lbbi;->c:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 34
    iget-object v0, p0, Lbbi;->c:Landroid/graphics/Path;

    invoke-static {p1, v0}, Lbex;->a(Lbdd;Landroid/graphics/Path;)V

    .line 35
    iget-object v0, p0, Lbbi;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method public a()Layy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Layy",
            "<",
            "Lbdd;",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lbbi;->a_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    new-instance v1, Lazo;

    iget-object v0, p0, Lbbi;->b:Ljava/lang/Object;

    check-cast v0, Lbdd;

    invoke-virtual {p0, v0}, Lbbi;->a(Lbdd;)Landroid/graphics/Path;

    move-result-object v0

    invoke-direct {v1, v0}, Lazo;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 28
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lazm;

    iget-object v1, p0, Lbbi;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Lazm;-><init>(Ljava/util/List;)V

    goto :goto_0
.end method

.method bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lbdd;

    invoke-virtual {p0, p1}, Lbbi;->a(Lbdd;)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method
