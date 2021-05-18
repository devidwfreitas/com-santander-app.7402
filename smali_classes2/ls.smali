.class Lls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Llt;

.field final synthetic b:Llo;


# direct methods
.method constructor <init>(Llo;Llt;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lls;->b:Llo;

    iput-object p2, p0, Lls;->a:Llt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 0

    .prologue
    .line 184
    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    .line 185
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 174
    :try_start_0
    new-instance v0, Leju;

    invoke-direct {v0}, Leju;-><init>()V

    invoke-virtual {v0}, Leju;->j()Lejm;

    move-result-object v0

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ltq;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltq;

    .line 175
    iget-object v1, p0, Lls;->a:Llt;

    invoke-interface {v1, v0}, Llt;->a(Labv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
