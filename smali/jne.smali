.class public Ljne;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/lang/String;
    .annotation runtime Leks;
        a = "id"
    .end annotation
.end field

.field protected b:Ljava/lang/String;
    .annotation runtime Leks;
        a = "icon"
    .end annotation
.end field

.field protected c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "text"
    .end annotation
.end field

.field protected d:Ljava/lang/String;
    .annotation runtime Leks;
        a = "textColor"
    .end annotation
.end field

.field protected e:Ljava/lang/String;
    .annotation runtime Leks;
        a = "initialDate"
    .end annotation
.end field

.field protected f:Ljava/lang/String;
    .annotation runtime Leks;
        a = "finalDate"
    .end annotation
.end field

.field protected g:Ljava/lang/String;
    .annotation runtime Leks;
        a = "urlContingency"
    .end annotation
.end field

.field protected h:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Ljne;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Ljne;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Ljne;->b:Ljava/lang/String;

    invoke-static {v0}, Ljou;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljne;->h:Landroid/graphics/Bitmap;

    .line 63
    :cond_0
    iget-object v0, p0, Ljne;->h:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Ljne;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 2
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ljne;->d:Ljava/lang/String;

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Ljou;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljne;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Ljne;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Ljne;->g:Ljava/lang/String;

    return-object v0
.end method
