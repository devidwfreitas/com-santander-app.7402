.class Lzm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzf;


# direct methods
.method constructor <init>(Lzf;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lzm;->a:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 123
    const-string v0, "sequenciaDigitada"

    iget-object v1, p0, Lzm;->a:Lzf;

    invoke-static {v1}, Lzf;->c(Lzf;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Lyt;

    invoke-direct {v0}, Lyt;-><init>()V

    .line 125
    iget-object v1, p0, Lzm;->a:Lzf;

    invoke-static {v1}, Lzf;->d(Lzf;)Lys;

    move-result-object v1

    invoke-virtual {v1}, Lys;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->c(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lzm;->a:Lzf;

    invoke-static {v1}, Lzf;->d(Lzf;)Lys;

    move-result-object v1

    invoke-virtual {v1}, Lys;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->b(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lzm;->a:Lzf;

    invoke-static {v1}, Lzf;->d(Lzf;)Lys;

    move-result-object v1

    invoke-virtual {v1}, Lys;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->a(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lzm;->a:Lzf;

    invoke-static {v1}, Lzf;->d(Lzf;)Lys;

    move-result-object v1

    invoke-virtual {v1}, Lys;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->e(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lzm;->a:Lzf;

    iget-object v2, p0, Lzm;->a:Lzf;

    invoke-static {v2}, Lzf;->c(Lzf;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lzf;->c(Lzf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyt;->d(Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lzs;->a()Lzs;

    move-result-object v1

    iget-object v2, p0, Lzm;->a:Lzf;

    invoke-static {v2}, Lzf;->e(Lzf;)Lack;

    move-result-object v2

    iget-object v3, p0, Lzm;->a:Lzf;

    invoke-static {v3}, Lzf;->f(Lzf;)Lacg;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lzs;->a(Landroid/content/Context;Lacg;Lyt;)V

    .line 131
    return-void
.end method
