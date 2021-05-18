.class Lvk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lve;

.field final synthetic b:Lvi;


# direct methods
.method constructor <init>(Lvi;Lve;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lvk;->b:Lvi;

    iput-object p2, p0, Lvk;->a:Lve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 107
    iget-object v0, p0, Lvk;->a:Lve;

    invoke-virtual {v0}, Lve;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    const-string v1, "TESOURO DIRETO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TITULOS PUBLICOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v2, p0, Lvk;->b:Lvi;

    invoke-static {v2}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lvl;

    invoke-direct {v3, p0}, Lvl;-><init>(Lvk;)V

    invoke-virtual {v1, v2, v0, v3}, Lzs;->a(Landroid/content/Context;Ljava/lang/String;Lzx;)V

    .line 132
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v0, "TRACE-MOD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Corretora: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvk;->a:Lve;

    invoke-virtual {v2}, Lve;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lvk;->b:Lvi;

    invoke-static {v1}, Lvi;->a(Lvi;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lvk;->a:Lve;

    invoke-virtual {v2}, Lve;->d()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lzs;->a(Landroid/content/Context;Ljava/lang/String;Lzx;)V

    goto :goto_0
.end method
