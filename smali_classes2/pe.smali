.class Lpe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lpc;


# direct methods
.method constructor <init>(Lpc;)V
    .locals 0

    .prologue
    .line 416
    iput-object p1, p0, Lpe;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lpe;->a:Lpc;

    invoke-static {v0}, Lpc;->H(Lpc;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocusFromTouch()Z

    .line 420
    iget-object v0, p0, Lpe;->a:Lpc;

    iget-object v1, p0, Lpe;->a:Lpc;

    invoke-static {v1}, Lpc;->I(Lpc;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0, v1}, Lpc;->a(Lpc;Landroid/widget/TextView;)V

    .line 421
    return-void
.end method
