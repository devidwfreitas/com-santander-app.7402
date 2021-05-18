.class Lpo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lpo;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 252
    iget-object v0, p0, Lpo;->a:Lpc;

    .line 253
    invoke-virtual {v0}, Lpc;->e()Lack;

    move-result-object v0

    sget v1, Llg;->tag_name_aplicar_acao:I

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lpo;->a:Lpc;

    .line 254
    invoke-static {v4}, Lpc;->a(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->u()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lpo;->a:Lpc;

    .line 255
    invoke-static {v4}, Lpc;->b(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->j()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lpo;->a:Lpc;

    .line 256
    invoke-static {v4}, Lpc;->c(Lpc;)Lace;

    move-result-object v4

    invoke-virtual {v4}, Lace;->f()Lto;

    move-result-object v4

    invoke-virtual {v4}, Lto;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 253
    invoke-virtual {v0, v1, v2}, Lack;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lpo;->a:Lpc;

    .line 257
    invoke-virtual {v1}, Lpc;->e()Lack;

    move-result-object v1

    sget v2, Llg;->tag_valor_aplicar_aplicar:I

    invoke-virtual {v1, v2}, Lack;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lpo;->a:Lpc;

    invoke-static {v0}, Lpc;->d(Lpc;)V

    .line 260
    return-void
.end method
