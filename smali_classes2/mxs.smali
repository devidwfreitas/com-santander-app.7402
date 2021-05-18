.class final Lmxs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 598
    iput-object p1, p0, Lmxs;->a:Ljava/lang/String;

    iput-object p2, p0, Lmxs;->b:Ljava/lang/String;

    iput-object p3, p0, Lmxs;->c:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lmxs;->a:Ljava/lang/String;

    iget-object v1, p0, Lmxs;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lfrq;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lmxs;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 603
    return-void
.end method
