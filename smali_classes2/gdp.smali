.class Lgdp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgdo;


# direct methods
.method constructor <init>(Lgdo;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lgdp;->a:Lgdo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lgdp;->a:Lgdo;

    invoke-static {v0}, Lgdo;->a(Lgdo;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 130
    iget-object v0, p0, Lgdp;->a:Lgdo;

    invoke-static {v0}, Lgdo;->b(Lgdo;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 131
    return-void
.end method
