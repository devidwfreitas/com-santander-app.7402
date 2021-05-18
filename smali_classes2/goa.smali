.class Lgoa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgkv;


# instance fields
.field final synthetic a:Lih;

.field final synthetic b:Lgnz;


# direct methods
.method constructor <init>(Lgnz;Lih;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lgoa;->b:Lgnz;

    iput-object p2, p0, Lgoa;->a:Lih;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 226
    check-cast p1, Lkkt;

    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lkkt;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Lkkt;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    :cond_0
    invoke-static {}, Lgnp;->a()Lgnp;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgnp;->a(Z)V

    .line 230
    iget-object v0, p0, Lgoa;->a:Lih;

    new-instance v1, Lis;

    const/16 v2, 0x1f4

    const-string v3, "Ticket null"

    invoke-direct {v1, v2, v3}, Lis;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lih;->onFailure(Lis;)V

    .line 256
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-static {}, Lmzx;->a()Lmzx;

    move-result-object v0

    invoke-virtual {v0}, Lmzx;->c()Ljava/util/Properties;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lgoa;->b:Lgnz;

    invoke-static {v1, p1, v0}, Lgnz;->a(Lgnz;Lkkt;Ljava/util/Properties;)Liq;

    move-result-object v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lgoa;->b:Lgnz;

    invoke-static {v1}, Lgnz;->a(Lgnz;)Lje;

    move-result-object v1

    new-instance v2, Lgob;

    invoke-direct {v2, p0}, Lgob;-><init>(Lgoa;)V

    invoke-virtual {v1, v0, v2}, Lje;->a(Liq;Lih;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_0
.end method
