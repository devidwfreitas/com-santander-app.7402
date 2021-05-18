.class Llba;
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
    .line 90
    iput-object p1, p0, Llba;->a:Llay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Llba;->a:Llay;

    invoke-static {v0}, Llay;->a(Llay;)Llbb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Llba;->a:Llay;

    invoke-static {v0}, Llay;->a(Llay;)Llbb;

    move-result-object v0

    invoke-virtual {v0}, Llbb;->a()V

    .line 96
    :cond_0
    iget-object v0, p0, Llba;->a:Llay;

    invoke-virtual {v0}, Llay;->dismiss()V

    .line 97
    return-void
.end method
