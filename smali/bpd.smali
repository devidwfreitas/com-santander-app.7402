.class final Lbpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Ljava/lang/Exception;

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/Bitmap;

.field final synthetic e:Lbpl;


# direct methods
.method constructor <init>(Lbpi;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lbpl;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lbpd;->a:Lbpi;

    iput-object p2, p0, Lbpd;->b:Ljava/lang/Exception;

    iput-boolean p3, p0, Lbpd;->c:Z

    iput-object p4, p0, Lbpd;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lbpd;->e:Lbpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 179
    new-instance v0, Lbpm;

    iget-object v1, p0, Lbpd;->a:Lbpi;

    iget-object v2, p0, Lbpd;->b:Ljava/lang/Exception;

    iget-boolean v3, p0, Lbpd;->c:Z

    iget-object v4, p0, Lbpd;->d:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2, v3, v4}, Lbpm;-><init>(Lbpi;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;)V

    .line 184
    iget-object v1, p0, Lbpd;->e:Lbpl;

    invoke-interface {v1, v0}, Lbpl;->a(Lbpm;)V

    .line 185
    return-void
.end method
