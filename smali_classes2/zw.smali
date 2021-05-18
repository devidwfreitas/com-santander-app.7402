.class Lzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lzx;

.field final synthetic e:Lzs;


# direct methods
.method constructor <init>(Lzs;Ljava/lang/String;Landroid/content/Context;ILzx;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lzw;->e:Lzs;

    iput-object p2, p0, Lzw;->a:Ljava/lang/String;

    iput-object p3, p0, Lzw;->b:Landroid/content/Context;

    iput p4, p0, Lzw;->c:I

    iput-object p5, p0, Lzw;->d:Lzx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lzw;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lzw;->b:Landroid/content/Context;

    iget v1, p0, Lzw;->c:I

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lzw;->b:Landroid/content/Context;

    sget v2, Llg;->tag_valor_continuar:I

    .line 289
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-static {v0, v1}, Lzy;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    iget-object v0, p0, Lzw;->e:Lzs;

    invoke-static {v0}, Lzs;->a(Lzs;)Lks;

    move-result-object v0

    iget-object v1, p0, Lzw;->d:Lzx;

    invoke-interface {v0, v1}, Lks;->a(Lzx;)V

    .line 293
    return-void
.end method
