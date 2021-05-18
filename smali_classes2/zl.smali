.class Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzf;


# direct methods
.method constructor <init>(Lzf;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lzl;->a:Lzf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lzl;->a:Lzf;

    const-string v1, ""

    invoke-static {v0, v1}, Lzf;->b(Lzf;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lzl;->a:Lzf;

    invoke-static {v0}, Lzf;->a(Lzf;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lzl;->a:Lzf;

    invoke-static {v0}, Lzf;->b(Lzf;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    return-void
.end method
