.class Llaz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Llay;


# direct methods
.method constructor <init>(Llay;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Llaz;->a:Llay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llaz;->a:Llay;

    invoke-static {v0}, Llay;->a(Llay;)Llbb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Llaz;->a:Llay;

    invoke-static {v0}, Llay;->a(Llay;)Llbb;

    move-result-object v0

    invoke-virtual {v0}, Llbb;->b()V

    .line 86
    :cond_0
    iget-object v0, p0, Llaz;->a:Llay;

    invoke-virtual {v0}, Llay;->dismiss()V

    .line 87
    return-void
.end method
