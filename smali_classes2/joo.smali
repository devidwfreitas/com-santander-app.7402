.class Ljoo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljok;

.field final synthetic b:Ljol;


# direct methods
.method constructor <init>(Ljol;Ljok;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Ljoo;->b:Ljol;

    iput-object p2, p0, Ljoo;->a:Ljok;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Ljoo;->a:Ljok;

    new-instance v1, Ljnb;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljnb;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljok;->a(Ljnb;)V

    .line 106
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 99
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/santander/app/lojaonline/domain/LojaTerm;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/lojaonline/domain/LojaTerm;

    .line 100
    iget-object v1, p0, Ljoo;->a:Ljok;

    invoke-interface {v1, v0}, Ljok;->a(Lcom/santander/app/lojaonline/domain/LojaTerm;)V

    .line 101
    return-void
.end method
