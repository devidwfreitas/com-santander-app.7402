.class public Lknz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I
    .annotation runtime Leks;
        a = "imageRes"
    .end annotation
.end field

.field private b:Landroid/graphics/Bitmap;
    .annotation runtime Leks;
        a = "image"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Leks;
        a = "text"
    .end annotation
.end field

.field private d:Lkoa;
    .annotation runtime Leks;
        a = "mButtonDetailType"
    .end annotation
.end field

.field private e:Z
    .annotation runtime Leks;
        a = "disable"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lknz;->e:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lknz;->e()I

    move-result v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Lkoa;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lknz;->d:Lkoa;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lknz;->a:I

    .line 83
    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lknz;->b:Landroid/graphics/Bitmap;

    .line 67
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lknz;->c:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public a(Lkoa;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lknz;->d:Lkoa;

    .line 43
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lknz;->e:Z

    .line 51
    return-void
.end method

.method public b(Lkoa;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lknz;->d:Lkoa;

    .line 59
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lknz;->e:Z

    return v0
.end method

.method public c()Lkoa;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lknz;->d:Lkoa;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lknz;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lknz;->a:I

    return v0
.end method
