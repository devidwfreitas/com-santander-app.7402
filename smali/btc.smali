.class public Lbtc;
.super Lbrd;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "fbconnect://success"

.field private static final b:Ljava/lang/String; = "oauth"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 112
    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lbrd;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 113
    return-void
.end method


# virtual methods
.method public a()Lbqy;
    .locals 6

    .prologue
    .line 127
    invoke-virtual {p0}, Lbtc;->e()Landroid/os/Bundle;

    move-result-object v3

    .line 128
    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "client_id"

    invoke-virtual {p0}, Lbtc;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "e2e"

    iget-object v1, p0, Lbtc;->c:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "response_type"

    const-string v1, "token,signed_request"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "return_scopes"

    const-string v1, "true"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "auth_type"

    const-string v1, "rerequest"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lbqy;

    invoke-virtual {p0}, Lbtc;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {p0}, Lbtc;->d()I

    move-result v4

    invoke-virtual {p0}, Lbtc;->f()Lbrf;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lbqy;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILbrf;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lbtc;
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lbtc;->c:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public a(Z)Lbtc;
    .locals 0

    .prologue
    .line 121
    iput-boolean p1, p0, Lbtc;->d:Z

    .line 122
    return-object p0
.end method
