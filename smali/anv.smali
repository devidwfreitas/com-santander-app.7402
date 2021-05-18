.class Lanv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lanw;

.field final synthetic b:I

.field final synthetic c:Lanu;


# direct methods
.method constructor <init>(Lanu;Lanw;I)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lanv;->c:Lanu;

    iput-object p2, p0, Lanv;->a:Lanw;

    iput p3, p0, Lanv;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lanv;->a:Lanw;

    iget-object v0, v0, Lanw;->itemView:Landroid/view/View;

    iget v1, p0, Lanv;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lanv;->c:Lanu;

    invoke-static {v0}, Lanu;->a(Lanu;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lanv;->a:Lanw;

    iget-object v1, v1, Lanw;->itemView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 61
    return-void
.end method
