.class Lzv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lzs;


# direct methods
.method constructor <init>(Lzs;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lzv;->d:Lzs;

    iput-object p2, p0, Lzv;->a:Ljava/lang/String;

    iput-object p3, p0, Lzv;->b:Landroid/content/Context;

    iput p4, p0, Lzv;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lzv;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lzv;->b:Landroid/content/Context;

    iget v1, p0, Lzv;->c:I

    .line 300
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzv;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_cancelar:I

    .line 301
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 299
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 305
    return-void
.end method
