.class Lhvp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwp;


# instance fields
.field final synthetic a:Lhvo;


# direct methods
.method constructor <init>(Lhvo;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lhvp;->a:Lhvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lhvp;->a:Lhvo;

    iget-object v0, v0, Lhvo;->a:Lhvm;

    invoke-interface {v0, p1}, Lhvm;->b(Lhur;)V

    .line 58
    return-void
.end method

.method public a(Lhus;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lhvp;->a:Lhvo;

    iget-object v0, v0, Lhvo;->b:Lhvn;

    invoke-static {v0}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhus;->a(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lhvp;->a:Lhvo;

    iget-object v0, v0, Lhvo;->a:Lhvm;

    iget-object v1, p0, Lhvp;->a:Lhvo;

    iget-object v1, v1, Lhvo;->b:Lhvn;

    invoke-static {v1}, Lhvn;->a(Lhvn;)Lhus;

    move-result-object v1

    invoke-interface {v0, v1}, Lhvm;->b(Lhxn;)V

    .line 53
    return-void
.end method
