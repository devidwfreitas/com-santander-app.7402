.class Lnae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lih;

.field final synthetic b:Lnad;


# direct methods
.method constructor <init>(Lnad;Lih;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lnae;->b:Lnad;

    iput-object p2, p0, Lnae;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 107
    const-string v0, "ERROR_CREATE_DLCRYPTO"

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lnae;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onFailure(Lis;)V

    .line 109
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 99
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lnaa;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnaa;

    .line 100
    iget-object v1, p0, Lnae;->b:Lnad;

    invoke-virtual {v0}, Lnaa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnad;->a(Lnad;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lnae;->b:Lnad;

    invoke-virtual {v0}, Lnaa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnad;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lnae;->a:Lih;

    invoke-interface {v0, p1}, Lih;->onSuccess(Lis;)V

    .line 103
    return-void
.end method
