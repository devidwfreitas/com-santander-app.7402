.class public Lbpm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lbpi;

.field private b:Ljava/lang/Exception;

.field private c:Z

.field private d:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lbpi;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lbpm;->a:Lbpi;

    .line 39
    iput-object p2, p0, Lbpm;->b:Ljava/lang/Exception;

    .line 40
    iput-object p4, p0, Lbpm;->d:Landroid/graphics/Bitmap;

    .line 41
    iput-boolean p3, p0, Lbpm;->c:Z

    .line 42
    return-void
.end method


# virtual methods
.method public a()Lbpi;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lbpm;->a:Lbpi;

    return-object v0
.end method

.method public b()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbpm;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lbpm;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lbpm;->c:Z

    return v0
.end method
