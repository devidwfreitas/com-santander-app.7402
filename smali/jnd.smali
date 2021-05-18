.class public Ljnd;
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

.field transient d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljnd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljnd;->d:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Ljnd;->b:Ljava/lang/String;

    invoke-static {v0}, Ljou;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Ljnd;->d:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    iget-object v0, p0, Ljnd;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljnd;->c:Ljava/lang/String;

    return-object v0
.end method
