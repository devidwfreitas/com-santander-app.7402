.class Ljon;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljoi;

.field final synthetic b:Ljol;


# direct methods
.method constructor <init>(Ljol;Ljoi;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Ljon;->b:Ljol;

    iput-object p2, p0, Ljon;->a:Ljoi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Ljon;->a:Ljoi;

    new-instance v1, Ljnb;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljoi;->a(Ljnb;)V

    .line 76
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 69
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/santander/app/lojaonline/domain/LojaCampaign;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/lojaonline/domain/LojaCampaign;

    .line 70
    iget-object v1, p0, Ljon;->a:Ljoi;

    invoke-interface {v1, v0}, Ljoi;->a(Lcom/santander/app/lojaonline/domain/LojaCampaign;)V

    .line 71
    return-void
.end method
