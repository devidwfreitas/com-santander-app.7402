.class Lhlq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhna;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lhlo;

.field final synthetic c:Lhlp;


# direct methods
.method constructor <init>(Lhlp;Ljava/util/List;Lhlo;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lhlq;->c:Lhlp;

    iput-object p2, p0, Lhlq;->a:Ljava/util/List;

    iput-object p3, p0, Lhlq;->b:Lhlo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lhxl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lhlq;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    iget-object v0, p0, Lhlq;->c:Lhlp;

    invoke-static {v0}, Lhlp;->a(Lhlp;)Lhmy;

    move-result-object v0

    new-instance v1, Lhlr;

    invoke-direct {v1, p0}, Lhlr;-><init>(Lhlq;)V

    invoke-interface {v0, v1}, Lhmy;->b(Lhna;)V

    .line 47
    return-void
.end method
