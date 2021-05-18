.class final Lgqx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1654
    iput-object p1, p0, Lgqx;->a:Landroid/app/Dialog;

    iput-object p2, p0, Lgqx;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1657
    iget-object v0, p0, Lgqx;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1658
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lgqx;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1659
    return-void
.end method
