.class Lhvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhwp;


# instance fields
.field final synthetic a:Lhva;

.field final synthetic b:Lhve;


# direct methods
.method constructor <init>(Lhve;Lhva;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lhvf;->b:Lhve;

    iput-object p2, p0, Lhvf;->a:Lhva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhur;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lhvf;->a:Lhva;

    invoke-interface {v0}, Lhva;->b()V

    .line 57
    return-void
.end method

.method public a(Lhus;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lhvf;->b:Lhve;

    invoke-virtual {v0}, Lhve;->b()Lhus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhus;->a(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lhvf;->a:Lhva;

    invoke-interface {v0}, Lhva;->a()V

    .line 52
    return-void
.end method
