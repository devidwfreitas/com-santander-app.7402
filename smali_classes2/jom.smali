.class Ljom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Ljoj;

.field final synthetic b:Ljol;


# direct methods
.method constructor <init>(Ljol;Ljoj;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Ljom;->b:Ljol;

    iput-object p2, p0, Ljom;->a:Ljoj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Ljom;->a:Ljoj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljoj;->a(Ljnc;)V

    .line 45
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lejm;

    invoke-direct {v0}, Lejm;-><init>()V

    .line 38
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljnc;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljnc;

    .line 39
    iget-object v1, p0, Ljom;->a:Ljoj;

    invoke-interface {v1, v0}, Ljoj;->a(Ljnc;)V

    .line 40
    return-void
.end method
