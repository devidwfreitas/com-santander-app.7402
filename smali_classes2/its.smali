.class Lits;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lih;


# instance fields
.field final synthetic a:Lito;

.field final synthetic b:Litp;


# direct methods
.method constructor <init>(Litp;Lito;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lits;->b:Litp;

    iput-object p2, p0, Lits;->a:Lito;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lis;)V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    invoke-virtual {p1}, Lis;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lejm;

    invoke-direct {v1}, Lejm;-><init>()V

    const-class v2, Liry;

    invoke-virtual {v1, v0, v2}, Lejm;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    if-eqz v0, :cond_0

    .line 152
    iget-object v1, p0, Lits;->a:Lito;

    invoke-interface {v1, v0}, Lito;->a(Liry;)V

    .line 156
    :goto_1
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_0
    iget-object v0, p0, Lits;->a:Lito;

    invoke-interface {v0}, Lito;->a()V

    goto :goto_1
.end method

.method public onSuccess(Lis;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lits;->a:Lito;

    invoke-interface {v0}, Lito;->a()V

    .line 140
    return-void
.end method
