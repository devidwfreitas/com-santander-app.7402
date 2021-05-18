.class Lhvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwp;


# instance fields
.field final synthetic a:Lhvm;

.field final synthetic b:Lhvn;


# direct methods
.method constructor <init>(Lhvn;Lhvm;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lhvo;->b:Lhvn;

    iput-object p2, p0, Lhvo;->a:Lhvm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lhvo;->a:Lhvm;

    invoke-interface {v0, p1}, Lhvm;->b(Lhur;)V

    .line 65
    return-void
.end method

.method public a(Lhus;)V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lhvo;->b:Lhvn;

    invoke-static {v0, p1}, Lhvn;->a(Lhvn;Lhus;)Lhus;

    .line 48
    iget-object v0, p0, Lhvo;->b:Lhvn;

    invoke-static {v0}, Lhvn;->b(Lhvn;)Lhwo;

    move-result-object v0

    new-instance v1, Lhvp;

    invoke-direct {v1, p0}, Lhvp;-><init>(Lhvo;)V

    invoke-interface {v0, p1, v1}, Lhwo;->a(Lhus;Lhwp;)V

    .line 60
    return-void
.end method
