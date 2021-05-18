.class Lvl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzx;


# instance fields
.field final synthetic a:Lvk;


# direct methods
.method constructor <init>(Lvk;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lvl;->a:Lvk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 113
    iget-object v0, p0, Lvl;->a:Lvk;

    iget-object v0, v0, Lvk;->b:Lvi;

    invoke-static {v0}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->app_corretora_url_prd:I

    new-array v2, v5, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {}, Labp;->b()Labp;

    move-result-object v1

    invoke-virtual {v1}, Labp;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget-object v0, p0, Lvl;->a:Lvk;

    iget-object v0, v0, Lvk;->b:Lvi;

    invoke-static {v0}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Llg;->app_corretora_url_hk:I

    new-array v2, v5, [Ljava/lang/Object;

    aget-object v3, p1, v4

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v2, p0, Lvl;->a:Lvk;

    iget-object v2, v2, Lvk;->b:Lvi;

    invoke-static {v2}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lzs;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    const-string v1, "TRACE-MOD-ADAPTER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Via Browser:  PRODUTO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvl;->a:Lvk;

    iget-object v3, v3, Lvk;->a:Lve;

    .line 121
    invoke-virtual {v3}, Lve;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PAREMETRO[0]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " PAREMETRO[1]: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p1, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method
