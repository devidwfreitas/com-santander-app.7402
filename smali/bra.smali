.class Lbra;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbqy;


# direct methods
.method constructor <init>(Lbqy;)V
    .locals 0

    .prologue
    .line 422
    iput-object p1, p0, Lbra;->a:Lbqy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lbra;->a:Lbqy;

    invoke-virtual {v0}, Lbqy;->cancel()V

    .line 426
    return-void
.end method
