.class Lhvg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhws;


# instance fields
.field final synthetic a:Lhvb;

.field final synthetic b:Lhve;


# direct methods
.method constructor <init>(Lhve;Lhvb;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lhvg;->b:Lhve;

    iput-object p2, p0, Lhvg;->a:Lhvb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lhuo;)V
    .locals 1

    .prologue
    .line 66
    invoke-static {}, Lhfc;->a()V

    .line 67
    iget-object v0, p0, Lhvg;->b:Lhve;

    invoke-virtual {v0}, Lhve;->b()Lhus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhus;->a(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lhvg;->a:Lhvb;

    invoke-interface {v0, p1}, Lhvb;->a(Lhuo;)V

    .line 69
    return-void
.end method

.method public a(Lhur;)V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lhvg;->b:Lhve;

    invoke-virtual {v0}, Lhve;->b()Lhus;

    move-result-object v0

    invoke-virtual {p1}, Lhur;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhus;->setMensagemErro(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lhvg;->a:Lhvb;

    invoke-interface {v0, p1}, Lhvb;->a(Lhur;)V

    .line 75
    return-void
.end method
