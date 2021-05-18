.class Lgll;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lglf;


# direct methods
.method constructor <init>(Lglf;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lgll;->a:Lglf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lgll;->a:Lglf;

    iget-object v0, v0, Lglf;->c:Lgld;

    invoke-static {v0}, Lgld;->e(Lgld;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 460
    return-void
.end method
