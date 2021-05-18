.class Ljoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljnj;


# instance fields
.field final synthetic a:Ljob;


# direct methods
.method constructor <init>(Ljob;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ljoc;->a:Ljob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljnv;->a(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljnv;->b(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->d()I

    move-result v1

    invoke-interface {v0, v1}, Ljnv;->a(I)V

    .line 56
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/santander/app/lojaonline/domain/LojaCampaign;->e()I

    move-result v1

    invoke-interface {v0, v1}, Ljnv;->b(I)V

    .line 58
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->b()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->c()V

    .line 67
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0, p1}, Ljnv;->a(Ljava/util/List;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->d()V

    goto :goto_0
.end method

.method public a(Ljnb;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->b()V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/santander/app/lojaonline/domain/LojaCampaign$Campaign;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->e()V

    .line 79
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0, p1}, Ljnv;->b(Ljava/util/List;)V

    goto :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Ljoc;->a:Ljob;

    invoke-static {v0}, Ljob;->a(Ljob;)Ljnv;

    move-result-object v0

    invoke-interface {v0}, Ljnv;->f()V

    goto :goto_0
.end method
