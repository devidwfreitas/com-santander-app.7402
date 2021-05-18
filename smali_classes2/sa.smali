.class Lsa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lrz;


# direct methods
.method constructor <init>(Lrz;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lsa;->a:Lrz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    iget-object v0, p0, Lsa;->a:Lrz;

    invoke-static {v0}, Lrz;->a(Lrz;)Lacg;

    move-result-object v0

    invoke-virtual {v0}, Lacg;->n()Lto;

    move-result-object v0

    invoke-virtual {v0}, Lto;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laat;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    const-string v1, "TESOURO DIRETO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TITULOS PUBLICOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lsa;->a:Lrz;

    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    new-instance v2, Lsb;

    invoke-direct {v2, p0}, Lsb;-><init>(Lsa;)V

    invoke-virtual {v0, v1, v3, v2}, Lzs;->a(Landroid/content/Context;Ljava/lang/String;Lzx;)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_1
    const-string v0, "TRACE-MOD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Corretora: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsa;->a:Lrz;

    invoke-static {v2}, Lrz;->a(Lrz;)Lacg;

    move-result-object v2

    invoke-virtual {v2}, Lacg;->n()Lto;

    move-result-object v2

    invoke-virtual {v2}, Lto;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v0

    iget-object v1, p0, Lsa;->a:Lrz;

    invoke-virtual {v1}, Lrz;->e()Lack;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lzs;->a(Landroid/content/Context;Ljava/lang/String;Lzx;)V

    goto :goto_0
.end method
