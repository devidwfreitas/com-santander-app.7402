.class Lpi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lpc;


# direct methods
.method constructor <init>(Lpc;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lpi;->b:Lpc;

    iput-object p2, p0, Lpi;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lpi;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 634
    return-void
.end method
