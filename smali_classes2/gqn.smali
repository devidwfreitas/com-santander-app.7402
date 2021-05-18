.class final Lgqn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljox;


# direct methods
.method constructor <init>(Ljox;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lgqn;->a:Ljox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1424
    iget-object v0, p0, Lgqn;->a:Ljox;

    invoke-static {v0}, Lgpu;->c(Ljox;)V

    .line 1425
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1426
    return-void
.end method
