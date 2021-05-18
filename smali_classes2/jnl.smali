.class Ljnl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljoi;


# instance fields
.field final synthetic a:Ljnj;

.field final synthetic b:Ljnk;


# direct methods
.method constructor <init>(Ljnk;Ljnj;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Ljnl;->b:Ljnk;

    iput-object p2, p0, Ljnl;->a:Ljnj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Ljnl;->b(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V

    .line 38
    invoke-virtual {p0, p1}, Ljnl;->c(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V

    .line 39
    iget-object v0, p0, Ljnl;->a:Ljnj;

    invoke-interface {v0, p1}, Ljnj;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V

    .line 40
    return-void
.end method

.method public a(Ljnb;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Ljnl;->a:Ljnj;

    invoke-interface {v0, p1}, Ljnj;->a(Ljnb;)V

    .line 55
    return-void
.end method

.method b(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Ljnl;->b:Ljnk;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ljnk;->a(Ljnk;Lcom/santander/app/lojaonline/domain/LojaCampaign;I)Ljava/util/List;

    move-result-object v0

    .line 44
    iget-object v1, p0, Ljnl;->a:Ljnj;

    invoke-interface {v1, v0}, Ljnj;->a(Ljava/util/List;)V

    .line 45
    return-void
.end method

.method c(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Ljnl;->b:Ljnk;

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Ljnk;->a(Ljnk;Lcom/santander/app/lojaonline/domain/LojaCampaign;I)Ljava/util/List;

    move-result-object v0

    .line 49
    iget-object v1, p0, Ljnl;->a:Ljnj;

    invoke-interface {v1, v0}, Ljnj;->b(Ljava/util/List;)V

    .line 50
    return-void
.end method
