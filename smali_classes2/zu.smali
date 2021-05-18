.class Lzu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lzx;

.field final synthetic d:Lzs;


# direct methods
.method constructor <init>(Lzs;Ljava/lang/String;Landroid/content/Context;Lzx;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lzu;->d:Lzs;

    iput-object p2, p0, Lzu;->a:Ljava/lang/String;

    iput-object p3, p0, Lzu;->b:Landroid/content/Context;

    iput-object p4, p0, Lzu;->c:Lzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lzu;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lzu;->b:Landroid/content/Context;

    sget v1, Llg;->tag_name_popup_corretora_tesouro_direto:I

    .line 250
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzu;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_continuar:I

    .line 251
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lzu;->d:Lzs;

    invoke-static {v0}, Lzs;->a(Lzs;)Lks;

    move-result-object v0

    iget-object v1, p0, Lzu;->c:Lzx;

    invoke-interface {v0, v1}, Lks;->a(Lzx;)V

    .line 255
    return-void
.end method
