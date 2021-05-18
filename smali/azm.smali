.class public Lazm;
.super Layy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Layy",
        "<",
        "Lbdd;",
        "Landroid/graphics/Path;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lbdd;

.field private final c:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Laxz",
            "<",
            "Lbdd;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1}, Layy;-><init>(Ljava/util/List;)V

    .line 12
    new-instance v0, Lbdd;

    invoke-direct {v0}, Lbdd;-><init>()V

    iput-object v0, p0, Lazm;->b:Lbdd;

    .line 13
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lazm;->c:Landroid/graphics/Path;

    .line 17
    return-void
.end method


# virtual methods
.method public synthetic a(Laxz;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1, p2}, Lazm;->b(Laxz;F)Landroid/graphics/Path;

    move-result-object v0

    return-object v0
.end method

.method public b(Laxz;F)Landroid/graphics/Path;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laxz",
            "<",
            "Lbdd;",
            ">;F)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    .prologue
    .line 20
    iget-object v0, p1, Laxz;->a:Ljava/lang/Object;

    check-cast v0, Lbdd;

    .line 21
    iget-object v1, p1, Laxz;->b:Ljava/lang/Object;

    check-cast v1, Lbdd;

    .line 23
    iget-object v2, p0, Lazm;->b:Lbdd;

    invoke-virtual {v2, v0, v1, p2}, Lbdd;->a(Lbdd;Lbdd;F)V

    .line 24
    iget-object v0, p0, Lazm;->b:Lbdd;

    iget-object v1, p0, Lazm;->c:Landroid/graphics/Path;

    invoke-static {v0, v1}, Lbex;->a(Lbdd;Landroid/graphics/Path;)V

    .line 25
    iget-object v0, p0, Lazm;->c:Landroid/graphics/Path;

    return-object v0
.end method
