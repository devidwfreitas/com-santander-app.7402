.class Llfd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llex;


# direct methods
.method constructor <init>(Llex;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Llfd;->a:Llex;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Llfd;->a:Llex;

    invoke-static {v0}, Llex;->b(Llex;)Landroid/support/v7/widget/AppCompatRadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatRadioButton;->setChecked(Z)V

    .line 191
    return-void
.end method
