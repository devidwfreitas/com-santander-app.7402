.class Lzt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lzs;


# direct methods
.method constructor <init>(Lzs;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lzt;->c:Lzs;

    iput-object p2, p0, Lzt;->a:Ljava/lang/String;

    iput-object p3, p0, Lzt;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lzt;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lzt;->b:Landroid/content/Context;

    sget v1, Llg;->tag_name_popup_corretora_tesouro_direto:I

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzt;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_cancelar:I

    .line 263
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    return-void
.end method
