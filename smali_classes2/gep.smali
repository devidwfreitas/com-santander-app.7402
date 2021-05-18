.class Lgep;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgen;


# direct methods
.method constructor <init>(Lgen;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lgep;->a:Lgen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgep;->a:Lgen;

    iget-object v0, v0, Lgen;->a:Lgej;

    invoke-static {v0}, Lgej;->c(Lgej;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 122
    return-void
.end method
