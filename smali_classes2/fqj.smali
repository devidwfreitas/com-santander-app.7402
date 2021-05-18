.class Lfqj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lfqi;


# direct methods
.method constructor <init>(Lfqi;I)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lfqj;->b:Lfqi;

    iput p2, p0, Lfqj;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lfqj;->b:Lfqi;

    invoke-static {v0}, Lfqi;->a(Lfqi;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lfqj;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    iget-object v0, p0, Lfqj;->b:Lfqi;

    invoke-virtual {v0}, Lfqi;->notifyDataSetChanged()V

    .line 80
    return-void
.end method
