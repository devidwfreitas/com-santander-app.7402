.class Llzj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Llzi;


# direct methods
.method constructor <init>(Llzi;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Llzj;->b:Llzi;

    iput-object p2, p0, Llzj;->a:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Llzj;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 185
    return-void
.end method
