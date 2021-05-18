.class Lgwv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lgwt;


# direct methods
.method constructor <init>(Lgwt;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lgwv;->a:Lgwt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lgwv;->a:Lgwt;

    invoke-static {v0}, Lgwt;->b(Lgwt;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 180
    return-void
.end method
