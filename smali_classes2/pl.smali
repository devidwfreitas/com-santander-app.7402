.class Lpl;
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
    .line 718
    iput-object p1, p0, Lpl;->a:Lpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lpl;->a:Lpc;

    check-cast p1, Landroid/widget/Button;

    invoke-static {v0, p1}, Lpc;->a(Lpc;Landroid/widget/Button;)V

    .line 722
    return-void
.end method
