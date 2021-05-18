.class Lnac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lnab;


# direct methods
.method constructor <init>(Lnab;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lnac;->a:Lnab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "ERROR_CREATE_DLCRYPTO"

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 159
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

    .line 160
    iget-object v1, p0, Lnac;->a:Lnab;

    invoke-virtual {v0}, Lnaa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnab;->a(Lnab;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lnac;->a:Lnab;

    invoke-virtual {v0}, Lnaa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnab;->a(Ljava/lang/String;)V

    .line 162
    return-void
.end method
