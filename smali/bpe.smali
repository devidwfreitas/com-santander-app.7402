.class Lbpe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lbph;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lbph;Z)V
    .locals 0

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lbpe;->a:Landroid/content/Context;

    .line 356
    iput-object p2, p0, Lbpe;->b:Lbph;

    .line 357
    iput-boolean p3, p0, Lbpe;->c:Z

    .line 358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 362
    iget-object v0, p0, Lbpe;->b:Lbph;

    iget-object v1, p0, Lbpe;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lbpe;->c:Z

    invoke-static {v0, v1, v2}, Lbpc;->a(Lbph;Landroid/content/Context;Z)V

    .line 363
    return-void
.end method
