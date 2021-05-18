.class Lgwk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lgwb;

.field final synthetic b:Lgwe;


# direct methods
.method constructor <init>(Lgwe;Lgwb;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lgwk;->b:Lgwe;

    iput-object p2, p0, Lgwk;->a:Lgwb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lgwk;->b:Lgwe;

    invoke-virtual {p1}, Lis;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgwe;->a(Lgwe;Ljava/lang/String;Z)V

    .line 204
    iget-object v0, p0, Lgwk;->a:Lgwb;

    invoke-interface {v0}, Lgwb;->a()V

    .line 205
    return-void
.end method

.method public onSuccess(Lis;)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lgwk;->b:Lgwe;

    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lgwe;->a(Lgwe;Ljava/lang/String;Z)V

    .line 196
    invoke-static {}, Lmys;->a()Lejm;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/santander/app/contacorrente/domain/ExtratoResponse;

    invoke-virtual {v0, v1, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/santander/app/contacorrente/domain/ExtratoResponse;

    .line 198
    iget-object v1, p0, Lgwk;->a:Lgwb;

    invoke-interface {v1, v0}, Lgwb;->a(Lcom/santander/app/contacorrente/domain/ExtratoContract;)V

    .line 199
    return-void
.end method
