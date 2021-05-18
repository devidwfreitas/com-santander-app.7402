.class final Lgqm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljox;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljox;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1413
    iput-object p1, p0, Lgqm;->a:Ljox;

    iput-object p2, p0, Lgqm;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1416
    iget-object v0, p0, Lgqm;->a:Ljox;

    invoke-static {v0}, Lgpu;->b(Ljox;)V

    .line 1417
    invoke-static {}, Lgpu;->o()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1418
    invoke-static {}, Lgpu;->m()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lgqm;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lmyo;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1419
    return-void
.end method
