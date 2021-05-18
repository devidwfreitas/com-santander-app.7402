.class Lhvq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwp;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lhvl;

.field final synthetic d:Lhvn;


# direct methods
.method constructor <init>(Lhvn;IILhvl;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lhvq;->d:Lhvn;

    iput p2, p0, Lhvq;->a:I

    iput p3, p0, Lhvq;->b:I

    iput-object p4, p0, Lhvq;->c:Lhvl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lhvq;->c:Lhvl;

    invoke-interface {v0, p1}, Lhvl;->a(Lhur;)V

    .line 83
    return-void
.end method

.method public a(Lhus;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lhvq;->d:Lhvn;

    invoke-static {v0}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhus;->a(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lhvq;->d:Lhvn;

    invoke-static {v0}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v0

    iget v1, p0, Lhvq;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhus;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lhvq;->d:Lhvn;

    invoke-static {v0}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v0

    iget v1, p0, Lhvq;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhus;->b(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lhvq;->c:Lhvl;

    iget-object v1, p0, Lhvq;->d:Lhvn;

    invoke-static {v1}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v1

    invoke-interface {v0, v1}, Lhvl;->a(Lhxn;)V

    .line 78
    return-void
.end method
