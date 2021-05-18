.class Lbwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbns;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/facebook/share/model/ShareOpenGraphAction;

.field final synthetic c:Lbim;

.field final synthetic d:Lbhl;

.field final synthetic e:Lbvy;


# direct methods
.method constructor <init>(Lbvy;Landroid/os/Bundle;Lcom/facebook/share/model/ShareOpenGraphAction;Lbim;Lbhl;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lbwd;->e:Lbvy;

    iput-object p2, p0, Lbwd;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lbwd;->b:Lcom/facebook/share/model/ShareOpenGraphAction;

    iput-object p4, p0, Lbwd;->c:Lbim;

    iput-object p5, p0, Lbwd;->d:Lbhl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, Lbwd;->a:Landroid/os/Bundle;

    invoke-static {v0}, Lbvy;->a(Landroid/os/Bundle;)V

    .line 248
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 249
    invoke-static {}, Lcom/facebook/AccessToken;->a()Lcom/facebook/AccessToken;

    move-result-object v1

    iget-object v2, p0, Lbwd;->e:Lbvy;

    iget-object v3, p0, Lbwd;->b:Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 251
    invoke-virtual {v3}, Lcom/facebook/share/model/ShareOpenGraphAction;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-static {v2, v3}, Lbvy;->a(Lbvy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lbwd;->a:Landroid/os/Bundle;

    sget-object v4, Lbiz;->POST:Lbiz;

    iget-object v5, p0, Lbwd;->c:Lbim;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lbiz;Lbim;)V

    .line 254
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->n()Lbit;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    iget-object v1, p0, Lbwd;->d:Lbhl;

    invoke-static {v1, v0}, Lbze;->a(Lbhl;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Lbhp;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lbwd;->d:Lbhl;

    invoke-static {v0, p1}, Lbze;->a(Lbhl;Ljava/lang/Exception;)V

    .line 263
    return-void
.end method
