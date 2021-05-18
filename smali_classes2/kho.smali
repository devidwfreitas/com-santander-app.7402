.class Lkho;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkif;


# instance fields
.field final synthetic a:Lkhl;


# direct methods
.method constructor <init>(Lkhl;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lkho;->a:Lkhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lkho;->a:Lkhl;

    invoke-static {v0}, Lkhl;->b(Lkhl;)Lkhi;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkhi;->a(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lkho;->a:Lkhl;

    invoke-static {v0}, Lkhl;->b(Lkhl;)Lkhi;

    move-result-object v0

    invoke-interface {v0, p1}, Lkhi;->a(Ljava/util/List;)V

    .line 64
    return-void
.end method
