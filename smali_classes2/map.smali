.class Lmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lmaj;


# direct methods
.method constructor <init>(Lmaj;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lmap;->a:Lmaj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lmap;->a:Lmaj;

    invoke-static {v0}, Lmaj;->f(Lmaj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 284
    iget-object v0, p0, Lmap;->a:Lmaj;

    invoke-static {v0}, Lmaj;->g(Lmaj;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 285
    return-void
.end method
