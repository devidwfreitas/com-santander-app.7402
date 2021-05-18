.class public Ljnh;
.super Ljnc;
.source "SourceFile"


# static fields
.field protected static final c:Ljava/lang/String; = "180319"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljnc;-><init>()V

    .line 15
    new-instance v0, Ljnd;

    invoke-direct {v0}, Ljnd;-><init>()V

    iput-object v0, p0, Ljnh;->a:Ljnd;

    .line 16
    iget-object v0, p0, Ljnh;->a:Ljnd;

    const-string v1, "180319"

    iput-object v1, v0, Ljnd;->a:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Ljnh;->a:Ljnd;

    const-string v1, "Conhe\u00e7a nossas solu\u00e7\u00f5es em destaque neste m\u00eas. Clique aqui e aproveite."

    iput-object v1, v0, Ljnd;->c:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Ljnh;->a:Ljnd;

    const v1, 0x7f02058c

    .line 19
    invoke-static {v1}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Ljnd;->d:Landroid/graphics/Bitmap;

    .line 21
    new-instance v0, Ljne;

    invoke-direct {v0}, Ljne;-><init>()V

    iput-object v0, p0, Ljnh;->b:Ljne;

    .line 22
    iget-object v0, p0, Ljnh;->b:Ljne;

    const-string v1, "180319"

    iput-object v1, v0, Ljne;->a:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Ljnh;->b:Ljne;

    const-string v1, "Destaques do M\u00eas"

    iput-object v1, v0, Ljne;->c:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Ljnh;->b:Ljne;

    const-string v1, "#E99F00"

    iput-object v1, v0, Ljne;->d:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Ljnh;->b:Ljne;

    const v1, 0x7f02058d

    .line 26
    invoke-static {v1}, Ljou;->a(I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Ljne;->h:Landroid/graphics/Bitmap;

    .line 27
    return-void
.end method
