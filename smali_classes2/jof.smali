.class Ljof;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljnn;


# instance fields
.field final synthetic a:Ljoe;


# direct methods
.method constructor <init>(Ljoe;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Ljof;->a:Ljoe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Ljof;->a:Ljoe;

    invoke-static {v0}, Ljoe;->a(Ljoe;)Ljnu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Ljof;->a:Ljoe;

    invoke-static {v0}, Ljoe;->a(Ljoe;)Ljnu;

    move-result-object v0

    invoke-interface {v0}, Ljnu;->b()V

    .line 45
    iget-object v0, p0, Ljof;->a:Ljoe;

    invoke-static {v0}, Ljoe;->a(Ljoe;)Ljnu;

    move-result-object v0

    invoke-interface {v0, p1}, Ljnu;->a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V

    goto :goto_0
.end method

.method public a(Ljnb;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Ljof;->a:Ljoe;

    invoke-static {v0}, Ljoe;->a(Ljoe;)Ljnu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Ljof;->a:Ljoe;

    invoke-static {v0}, Ljoe;->a(Ljoe;)Ljnu;

    move-result-object v0

    invoke-interface {v0}, Ljnu;->b()V

    goto :goto_0
.end method
