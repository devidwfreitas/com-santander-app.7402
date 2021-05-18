.class Lada;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lacz;


# direct methods
.method constructor <init>(Lacz;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lada;->a:Lacz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lada;->a:Lacz;

    iget-object v0, v0, Lacz;->b:Lacy;

    invoke-static {v0}, Lacy;->c(Lacy;)V

    return-void
.end method
