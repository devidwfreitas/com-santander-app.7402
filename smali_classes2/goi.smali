.class public Lgoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v2, p0, Lgoi;->a:Landroid/app/Activity;

    .line 23
    iput-object v2, p0, Lgoi;->b:Landroid/view/View;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgoi;->c:Z

    .line 27
    iput-object p1, p0, Lgoi;->a:Landroid/app/Activity;

    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 29
    const v1, 0x7f0401c5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lgoi;->b:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lgoi;->b:Landroid/view/View;

    const v1, 0x7f1008a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 35
    iget-boolean v0, p0, Lgoi;->c:Z

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    iget-object v1, p0, Lgoi;->a:Landroid/app/Activity;

    iget-object v2, p0, Lgoi;->b:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgoi;->c:Z

    .line 40
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lgoi;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lgoi;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgoi;->c:Z

    .line 45
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0}, Lgoi;->b()V

    .line 51
    return-void
.end method
