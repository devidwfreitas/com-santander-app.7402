.class Laqk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/app/AppCompatDialog;

.field final synthetic b:Laqe;


# direct methods
.method constructor <init>(Laqe;Landroid/support/v7/app/AppCompatDialog;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Laqk;->b:Laqe;

    iput-object p2, p0, Laqk;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Laqk;->b:Laqe;

    invoke-static {v0}, Laqe;->d(Laqe;)Laqn;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Laqn;->a(I)V

    .line 247
    iget-object v0, p0, Laqk;->a:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDialog;->dismiss()V

    .line 248
    return-void
.end method
