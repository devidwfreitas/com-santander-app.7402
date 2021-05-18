.class public Lido;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lidn;


# instance fields
.field private a:Lidg;

.field private b:Lici;

.field private c:Lmip;


# direct methods
.method public constructor <init>(Lidg;Lmip;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lido;->a:Lidg;

    .line 31
    new-instance v0, Lici;

    invoke-direct {v0, p0}, Lici;-><init>(Lidn;)V

    iput-object v0, p0, Lido;->b:Lici;

    .line 32
    iput-object p2, p0, Lido;->c:Lmip;

    .line 33
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lido;->b:Lici;

    invoke-virtual {v0}, Lici;->a()V

    .line 38
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lido;->a:Lidg;

    invoke-interface {v0, p1}, Lidg;->a(Ljava/util/List;)V

    .line 43
    return-void
.end method

.method public b()Landroid/widget/ExpandableListView$OnGroupClickListener;
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lidp;

    invoke-direct {v0, p0}, Lidp;-><init>(Lido;)V

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Libn;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lido;->a:Lidg;

    invoke-interface {v0, p1}, Lidg;->b(Ljava/util/List;)V

    .line 48
    return-void
.end method
