.class Lglx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lglu;


# direct methods
.method constructor <init>(Lglu;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lglx;->a:Lglu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Lglx;->a:Lglu;

    invoke-static {v0}, Lglu;->b(Lglu;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lglx;->a:Lglu;

    invoke-static {v0}, Lglu;->c(Lglu;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lglx;->a:Lglu;

    invoke-static {v0}, Lglu;->b(Lglu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lglx;->a:Lglu;

    invoke-static {v0, v2}, Lglu;->a(Lglu;Z)Z

    .line 129
    :goto_0
    iget-object v0, p0, Lglx;->a:Lglu;

    invoke-static {v0, v2}, Lglu;->b(Lglu;Z)V

    .line 130
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lglx;->a:Lglu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lglu;->a(Lglu;Z)Z

    goto :goto_0
.end method
